package tests

import (
	"bytes"
	"dc_haur/src/internal/service"
	utils "dc_haur/src/pkg"
	"encoding/json"
	"errors"
	tgbotapi "github.com/go-telegram-bot-api/telegram-bot-api/v5"
	config "github.com/logotipiwe/dc_go_config_lib"
	"github.com/stretchr/testify/assert"
	"io"
	"math/rand"
	"net/http"
	"strconv"
	"strings"
	"testing"
	"time"
)

func TestChatHandler(t *testing.T) {
	res, err := strconv.ParseBool(config.GetConfigOr("DO_INTEGRATION_TESTS", "true"))
	if err == nil && !res {
		//couldn't find way to not execute it in unit tests run
		println("TEST SKIPPED")
		return
	}

	checkIfImagesEnabled(t)

	t.Run("start message", func(t *testing.T) {
		defer failOnPanic(t)
		update := createUpdateObject("/start")
		ans := sendUpdate(t, update)
		assert.Equal(t, ans.Text, service.WelcomeMessage)
	})

	t.Run("get decks start", func(t *testing.T) {
		defer failOnPanic(t)
		update := createUpdateObject("/start")
		ans := sendUpdate(t, update)
		replyMarkup := toMarkup(t, ans.BaseChat.ReplyMarkup)
		assert.Equal(t, 3, len(replyMarkup.Keyboard))
		assert.Equal(t, "deck d1 name", replyMarkup.Keyboard[0][0].Text)
		assert.Equal(t, "deck d2 name", replyMarkup.Keyboard[1][0].Text)
		assert.Equal(t, "deck d3 name", replyMarkup.Keyboard[2][0].Text)
		println(ans)
	})

	t.Run("select deck", func(t *testing.T) {
		defer failOnPanic(t)
		update := createUpdateObject("/start")
		ans := sendUpdate(t, update)
		update = createUpdateObject("deck d1 name")
		ans = sendUpdate(t, update)
		replyMarkup := toMarkup(t, ans.BaseChat.ReplyMarkup)
		assert.Equal(t, ans.Text, service.GotLevelsMessage)
		assert.Equal(t, 3, len(replyMarkup.Keyboard[0]))
		assert.Equal(t, "l1", replyMarkup.Keyboard[0][0].Text)
		assert.Equal(t, "l2", replyMarkup.Keyboard[0][1].Text)
		assert.Equal(t, "l3", replyMarkup.Keyboard[0][2].Text)
		println(ans)
	})

	t.Run("select deck; select level", func(t *testing.T) {
		defer failOnPanic(t)
		update := createUpdateObject("/start")
		ans := sendUpdate(t, update)
		update = createUpdateObjectFrom(update, "deck d1 name")
		ans = sendUpdate(t, update)
		update = createUpdateObjectFrom(update, "l1")
		ans = sendUpdate(t, update)
		assert.Contains(t, []string{"question d1l1q1 text", "question d1l1q2 text", "question d1l1q3 text"}, ans.Text)
		println(ans)
	})

	t.Run("select level > markup nil", func(t *testing.T) {
		defer failOnPanic(t)
		update := createUpdateObject("/start")
		ans := sendUpdate(t, update)
		update = createUpdateObjectFrom(update, "deck d1 name")
		ans = sendUpdate(t, update)
		update = createUpdateObjectFrom(update, "l1")
		ans = sendUpdate(t, update)
		assert.Nil(t, ans.BaseChat.ReplyMarkup)
		println(ans)
	})

	t.Run("select deck; select level many times", func(t *testing.T) {
		defer failOnPanic(t)
		update := createUpdateObject("/start")
		ans := sendUpdate(t, update)
		update = createUpdateObjectFrom(update, "deck d1 name")
		ans = sendUpdate(t, update)
		for i := 0; i < 10; i++ {
			update = createUpdateObjectFrom(update, "l1")
			ans = sendUpdate(t, update)
			assert.Contains(t, []string{"question d1l1q1 text", "question d1l1q2 text", "question d1l1q3 text"}, ans.Text)
			assert.Nil(t, ans.BaseChat.ReplyMarkup)
		}
	})

	t.Run("questions in level are ordered", func(t *testing.T) {
		defer failOnPanic(t)
		clearHistory(t)
		questions := []string{"question d1l1q1 text", "question d1l1q2 text", "question d1l1q3 text"}
		update := createUpdateObject("/start")
		ans := sendUpdate(t, update)
		update = createUpdateObjectFrom(update, "deck d1 name")
		ans = sendUpdate(t, update)
		for i := 0; i < 5; i++ {
			update = createUpdateObjectFrom(update, "l1")
			ans = sendUpdate(t, update)
			ansIndex1 := utils.FindIndex(questions, ans.Text)
			assert.NotEqual(t, -1, ansIndex1)

			update = createUpdateObjectFrom(update, "l1")
			ans = sendUpdate(t, update)
			ansIndex2 := utils.FindIndex(questions, ans.Text)
			assert.NotEqual(t, -1, ansIndex2)
			assert.NotEqual(t, ansIndex1, ansIndex2)

			update = createUpdateObjectFrom(update, "l1")
			ans = sendUpdate(t, update)
			ansIndex3 := utils.FindIndex(questions, ans.Text)
			assert.NotEqual(t, -1, ansIndex3)
			assert.NotEqual(t, ansIndex1, ansIndex3)
			assert.NotEqual(t, ansIndex2, ansIndex3)
			println("ORDER CHECK FINISHED")
			time.Sleep(100 * time.Millisecond)
		}
	})

	t.Run("select deck; select different levels many times", func(t *testing.T) {
		defer failOnPanic(t)
		update := createUpdateObject("/start")
		ans := sendUpdate(t, update)
		update = createUpdateObjectFrom(update, "deck d1 name")
		ans = sendUpdate(t, update)
		for i := 0; i < 20; i++ {
			level := strconv.Itoa(rand.Intn(3) + 1)
			update = createUpdateObjectFrom(update, "l"+level)
			ans = sendUpdate(t, update)
			assert.True(t, strings.HasPrefix(ans.Text, "question d1l"+level))
		}
	})

	t.Run("/question command", func(t *testing.T) {
		defer failOnPanic(t)
		update := createUpdateObject(service.QuestionCommand)
		ans := sendUpdate(t, update)
		assert.Equal(t, ans.Text, service.AssignNewQuestionText)
		update = createUpdateObjectFrom(update, "what??")
		ans = sendUpdate(t, update)
		assert.Equal(t, ans.Text, service.AcceptNewQuestionText)
	})

	t.Run("/feedback command", func(t *testing.T) {
		defer failOnPanic(t)
		update := createUpdateObject(service.FeedbackCommand)
		ans := sendUpdate(t, update)
		assert.Equal(t, ans.Text, service.AssignFeedbackText)
		update = createUpdateObjectFrom(update, "MyFeedback")
		ans = sendUpdate(t, update)
		assert.Equal(t, ans.Text, service.AcceptFeedbackText)
	})
}

func failOnPanic(t *testing.T) {
	if r := recover(); r != nil {
		t.Fatalf("The code panicked: %v", r)
	}
}

func createUpdateObject(text string) *tgbotapi.Update {
	firstName := "German"
	lastName := "Reus"
	userName := "Logotipiwe"
	user := &tgbotapi.User{
		ID:           int64(rand.Int()),
		IsBot:        false,
		FirstName:    firstName,
		LastName:     lastName,
		UserName:     userName,
		LanguageCode: "en",
	}

	chat := &tgbotapi.Chat{
		ID:        1111111,
		FirstName: firstName,
		LastName:  lastName,
		UserName:  userName,
		Type:      "private",
	}

	currentTime := int(time.Now().Unix())
	message := &tgbotapi.Message{
		MessageID: rand.Int(),
		From:      user,
		Chat:      chat,
		Date:      currentTime,
		Text:      text,
	}

	update := &tgbotapi.Update{
		UpdateID: rand.Int(),
		Message:  message,
	}
	return update
}

func createUpdateObjectFrom(update *tgbotapi.Update, text string) *tgbotapi.Update {
	currentTime := int(time.Now().Unix())

	update.Message.Text = text
	update.Message.Date = currentTime
	update.Message.MessageID = rand.Int()
	return update
}

func toMarkup(t *testing.T, input interface{}) *tgbotapi.ReplyKeyboardMarkup {
	var ans tgbotapi.ReplyKeyboardMarkup
	jsonn, err := json.Marshal(input)
	if err != nil {
		t.Fatal(err)
	}
	err = json.Unmarshal(jsonn, &ans)
	if err != nil {
		t.Fatal(err)
	}
	return &ans
}

func sendUpdate(t *testing.T, update *tgbotapi.Update) *tgbotapi.MessageConfig {
	appUrl := config.GetConfig("TEST_URL")
	println("Url to test " + appUrl)

	println("sending message " + update.Message.Text)
	reqBody, err := json.Marshal(update)
	assert.NoError(t, err)

	req, err := http.NewRequest("POST", appUrl+"/chat", bytes.NewReader(reqBody))
	assert.NoError(t, err)

	client := &http.Client{}
	response, err := client.Do(req)
	assert.NoError(t, err)

	assert.Equal(t, http.StatusOK, response.StatusCode)

	var result tgbotapi.MessageConfig
	err = json.NewDecoder(response.Body).Decode(&result)
	assert.NoError(t, err)
	err = response.Body.Close()
	if err != nil {
		panic(err)
	}

	println("Got and decoded answer")

	return &result
}

func clearHistory(t *testing.T) {
	appUrl := config.GetConfig("TEST_URL")
	println("Clearing questions history")
	req, err := http.NewRequest("GET", appUrl+"/clear-history", nil)
	assert.NoError(t, err)
	client := &http.Client{}
	response, err := client.Do(req)
	assert.NoError(t, err)
	assert.Equal(t, http.StatusOK, response.StatusCode)
	println("History cleared")
}

func checkIfImagesEnabled(t *testing.T) {
	appUrl := config.GetConfig("TEST_URL")
	println("Checking if images are enabled...")

	req, err := http.NewRequest("GET", appUrl+"/images-enabled", nil)
	assert.NoError(t, err)

	client := &http.Client{}
	response, err := client.Do(req)
	assert.NoError(t, err)

	assert.Equal(t, http.StatusOK, response.StatusCode)

	bodyBytes, err := io.ReadAll(response.Body)
	assert.NoError(t, err)
	result := string(bodyBytes)
	resultBool, err := strconv.ParseBool(result)
	assert.NoError(t, err)
	err = response.Body.Close()
	assert.NoError(t, err)

	if resultBool {
		err = errors.New("error: images enabled. Cannot perform integration tests")
		t.Fatal(err)
	} else {
		println("Images are disabled, start testing...")
	}
}