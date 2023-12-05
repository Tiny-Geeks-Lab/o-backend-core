package repo

import (
	"dc_haur/src/internal/domain"
	"errors"
	"github.com/DATA-DOG/go-sqlmock"
	"testing"
)

func TestGetDecks_Success(t *testing.T) {
	// Create a new mock database
	mockDB, mock, err := sqlmock.New()
	if err != nil {
		t.Fatalf("Failed to create mock database: %v", err)
	}
	defer mockDB.Close()

	// Create a new DecksRepo with the mock database
	repo := NewDecksRepo(mockDB)

	// Define expected rows and columns
	rows := sqlmock.NewRows([]string{"id", "name", "description"}).
		AddRow(1, "Deck 1", "Description 1").
		AddRow(2, "Deck 2", "Description 2")

	// Expect a SELECT query
	mock.ExpectQuery(`SELECT id, name, description FROM decks`).WillReturnRows(rows)

	// Call the function
	err, decks := repo.GetDecks()

	// Check for errors
	if err != nil {
		t.Errorf("Unexpected error: %v", err)
	}

	// Check the result
	expectedDecks := []domain.Deck{
		{ID: "1", Name: "Deck 1", Description: "Description 1"},
		{ID: "2", Name: "Deck 2", Description: "Description 2"},
	}

	if len(decks) != len(expectedDecks) {
		t.Errorf("Expected %d decks, got %d decks", len(expectedDecks), len(decks))
	}

	// Additional checks for each deck can be added if necessary
}

func TestGetDecks_ErrorOnQuery(t *testing.T) {
	// Create a new mock database
	mockDB, mock, err := sqlmock.New()
	if err != nil {
		t.Fatalf("Failed to create mock database: %v", err)
	}
	defer mockDB.Close()

	// Create a new DecksRepo with the mock database
	repo := NewDecksRepo(mockDB)

	// Expect a SELECT query to return an error
	mock.ExpectQuery(`SELECT id, name, description FROM decks`).WillReturnError(errors.New("mocked error"))

	// Call the function
	err, decks := repo.GetDecks()

	// Check for the expected error
	if err == nil {
		t.Error("Expected an error, but got nil")
	}

	// Ensure that decks is nil in case of an error
	if decks != nil {
		t.Error("Expected decks to be nil, but it's not")
	}
}

func TestGetDecks_ErrorOnEmptyScan(t *testing.T) {
	// Create a new mock database
	mockDB, mock, err := sqlmock.New()
	if err != nil {
		t.Fatalf("Failed to create mock database: %v", err)
	}
	defer mockDB.Close()

	// Create a new DecksRepo with the mock database
	repo := NewDecksRepo(mockDB)

	// Expect a SELECT query and return an empty result set
	mock.ExpectQuery(`SELECT id, name, description FROM decks`).WillReturnRows(sqlmock.NewRows([]string{"id", "name", "description"}))

	// Call the function
	err, decks := repo.GetDecks()

	// Ensure that decks is an empty slice in case of an error
	if decks == nil {
		t.Error("Expected decks to be an empty slice, but it's nil")
	} else if len(decks) != 0 {
		t.Errorf("Expected decks to be an empty slice, but got %v", decks)
	}
}