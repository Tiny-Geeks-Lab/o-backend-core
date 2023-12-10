package repo

import (
	"database/sql"
	"dc_haur/src/internal/domain"
	errors "errors"
	"log"
)

type QuestionsRepo struct {
	db *sql.DB
}

func NewQuestionsRepo(db *sql.DB) *QuestionsRepo {
	return &QuestionsRepo{db: db}
}

const getLevelsSql = "SELECT distinct q.level FROM questions q LEFT JOIN haur.decks d on d.id = q.deck_id WHERE d.name = ?"
const getRandQuestionSql = "SELECT q.id, q.level, q.deck_id, q.text FROM questions q LEFT JOIN decks d on d.id = q.deck_id WHERE level = ? AND d.name = ? ORDER BY rand() LIMIT 1"

func (r *QuestionsRepo) GetLevels(deckName string) ([]string, error) {
	var ans []string
	res, err := r.db.Query(getLevelsSql, deckName)
	if err != nil {
		return nil, err
	}
	defer res.Close()
	for res.Next() {
		var level string
		err := res.Scan(&level)
		if err != nil {
			return nil, err
		}
		ans = append(ans, level)
	}
	if len(ans) == 0 {
		return nil, errors.New("NoLevels from deck " + deckName)
	}
	return ans, nil
}

func (r *QuestionsRepo) GetRandQuestion(deckName string, levelName string) (*domain.Question, error) {
	var result domain.Question
	err := r.db.QueryRow(getRandQuestionSql, levelName, deckName).Scan(&result.ID, &result.Level, &result.DeckID, &result.Text)
	if err != nil {
		log.Println("Error getting question from DB.")
		log.Println(err)
		return nil, err
	}
	return &result, nil
}
