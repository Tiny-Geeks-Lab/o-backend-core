// Package docs Code generated by swaggo/swag. DO NOT EDIT
package docs

import "github.com/swaggo/swag"

const docTemplate = `{
    "schemes": {{ marshal .Schemes }},
    "swagger": "2.0",
    "info": {
        "description": "{{escape .Description}}",
        "title": "{{.Title}}",
        "termsOfService": "http://swagger.io/terms/",
        "contact": {},
        "license": {
            "url": "http://www.apache.org/licenses/LICENSE-2.0.html"
        },
        "version": "{{.Version}}"
    },
    "host": "{{.Host}}",
    "basePath": "{{.BasePath}}",
    "paths": {
        "/v1/deck/{deckId}/dislike": {
            "post": {
                "description": "Endpoint to remove like from a specific deck",
                "produces": [
                    "application/json"
                ],
                "summary": "Dislike a deck",
                "parameters": [
                    {
                        "type": "string",
                        "description": "Deck ID",
                        "name": "deckId",
                        "in": "path",
                        "required": true
                    },
                    {
                        "type": "string",
                        "description": "User ID",
                        "name": "userId",
                        "in": "query",
                        "required": true
                    }
                ],
                "responses": {
                    "200": {
                        "description": "OK",
                        "schema": {
                            "type": "object",
                            "additionalProperties": {
                                "type": "string"
                            }
                        }
                    },
                    "400": {
                        "description": "Bad Request",
                        "schema": {
                            "type": "object",
                            "additionalProperties": {
                                "type": "string"
                            }
                        }
                    },
                    "500": {
                        "description": "Internal Server Error",
                        "schema": {
                            "type": "object",
                            "additionalProperties": {
                                "type": "string"
                            }
                        }
                    }
                }
            }
        },
        "/v1/deck/{deckId}/like": {
            "post": {
                "description": "Endpoint to like a specific deck. Gives 409 in case of duplicating like",
                "produces": [
                    "application/json"
                ],
                "summary": "Like a deck",
                "parameters": [
                    {
                        "type": "string",
                        "description": "Deck ID",
                        "name": "deckId",
                        "in": "path",
                        "required": true
                    },
                    {
                        "type": "string",
                        "description": "User ID",
                        "name": "userId",
                        "in": "query",
                        "required": true
                    }
                ],
                "responses": {
                    "200": {
                        "description": "OK",
                        "schema": {
                            "type": "object",
                            "additionalProperties": {
                                "type": "string"
                            }
                        }
                    },
                    "400": {
                        "description": "Bad Request",
                        "schema": {
                            "type": "object",
                            "additionalProperties": {
                                "type": "string"
                            }
                        }
                    },
                    "409": {
                        "description": "Conflict",
                        "schema": {
                            "type": "object",
                            "additionalProperties": {
                                "type": "string"
                            }
                        }
                    }
                }
            }
        },
        "/v1/deck/{deckId}/questions": {
            "get": {
                "produces": [
                    "application/json"
                ],
                "summary": "Get all questions from specified deck",
                "parameters": [
                    {
                        "type": "string",
                        "description": "Id of deck for which questions are selected",
                        "name": "deckId",
                        "in": "path",
                        "required": true
                    }
                ],
                "responses": {
                    "200": {
                        "description": "OK",
                        "schema": {
                            "type": "array",
                            "items": {
                                "$ref": "#/definitions/model.Question"
                            }
                        }
                    }
                }
            }
        },
        "/v1/decks": {
            "get": {
                "produces": [
                    "application/json"
                ],
                "summary": "Get all available decks",
                "responses": {
                    "200": {
                        "description": "OK",
                        "schema": {
                            "type": "array",
                            "items": {
                                "$ref": "#/definitions/model.Deck"
                            }
                        }
                    }
                }
            }
        },
        "/v1/get-vector-image/{id}": {
            "get": {
                "produces": [
                    "text/xml"
                ],
                "summary": "Get code of vector image",
                "parameters": [
                    {
                        "type": "string",
                        "description": "Id of image",
                        "name": "id",
                        "in": "path",
                        "required": true
                    }
                ],
                "responses": {
                    "200": {
                        "description": "OK",
                        "schema": {
                            "type": "xml"
                        }
                    }
                }
            }
        },
        "/v1/levels": {
            "get": {
                "produces": [
                    "application/json"
                ],
                "summary": "Get levels from specified deck",
                "parameters": [
                    {
                        "type": "string",
                        "description": "Id of deck for which selecting levels",
                        "name": "deckId",
                        "in": "query",
                        "required": true
                    }
                ],
                "responses": {
                    "200": {
                        "description": "OK",
                        "schema": {
                            "type": "array",
                            "items": {
                                "$ref": "#/definitions/model.Level"
                            }
                        }
                    }
                }
            }
        },
        "/v1/question": {
            "get": {
                "produces": [
                    "application/json"
                ],
                "summary": "Get random question by selected level",
                "parameters": [
                    {
                        "type": "string",
                        "description": "Id of level for which selecting question",
                        "name": "levelId",
                        "in": "query",
                        "required": true
                    },
                    {
                        "type": "string",
                        "description": "Client id - differs clients from each other. Needed for ordering random questions for each client/",
                        "name": "clientId",
                        "in": "query",
                        "required": true
                    }
                ],
                "responses": {
                    "200": {
                        "description": "OK",
                        "schema": {
                            "$ref": "#/definitions/model.Question"
                        }
                    }
                }
            }
        },
        "/v1/question/{questionId}/dislike": {
            "post": {
                "description": "Endpoint remove like from a particular question",
                "produces": [
                    "application/json"
                ],
                "summary": "Dislike a question",
                "parameters": [
                    {
                        "type": "string",
                        "description": "Question ID",
                        "name": "questionId",
                        "in": "path",
                        "required": true
                    },
                    {
                        "type": "string",
                        "description": "User ID",
                        "name": "userId",
                        "in": "query",
                        "required": true
                    }
                ],
                "responses": {
                    "200": {
                        "description": "OK",
                        "schema": {
                            "type": "object",
                            "additionalProperties": {
                                "type": "string"
                            }
                        }
                    },
                    "400": {
                        "description": "Bad Request",
                        "schema": {
                            "type": "object",
                            "additionalProperties": {
                                "type": "string"
                            }
                        }
                    },
                    "500": {
                        "description": "Internal Server Error",
                        "schema": {
                            "type": "object",
                            "additionalProperties": {
                                "type": "string"
                            }
                        }
                    }
                }
            }
        },
        "/v1/question/{questionId}/like": {
            "post": {
                "description": "Endpoint to like a particular question. Gives 409 in case of duplicating like",
                "produces": [
                    "application/json"
                ],
                "summary": "Like a question",
                "parameters": [
                    {
                        "type": "string",
                        "description": "Question ID",
                        "name": "questionId",
                        "in": "path",
                        "required": true
                    },
                    {
                        "type": "string",
                        "description": "User ID",
                        "name": "userId",
                        "in": "query",
                        "required": true
                    }
                ],
                "responses": {
                    "200": {
                        "description": "OK",
                        "schema": {
                            "type": "object",
                            "additionalProperties": {
                                "type": "string"
                            }
                        }
                    },
                    "400": {
                        "description": "Bad Request",
                        "schema": {
                            "type": "object",
                            "additionalProperties": {
                                "type": "string"
                            }
                        }
                    },
                    "409": {
                        "description": "Conflict",
                        "schema": {
                            "type": "object",
                            "additionalProperties": {
                                "type": "string"
                            }
                        }
                    }
                }
            }
        },
        "/v1/user/{userId}/likes": {
            "get": {
                "description": "Retrieves all likes made by a user on questions and decks.",
                "produces": [
                    "application/json"
                ],
                "summary": "Get all likes made by a user",
                "parameters": [
                    {
                        "type": "string",
                        "description": "The ID of the user.",
                        "name": "userId",
                        "in": "query",
                        "required": true
                    }
                ],
                "responses": {
                    "200": {
                        "description": "Invalid request format\" \"{}",
                        "schema": {
                            "type": "object",
                            "additionalProperties": true
                        }
                    }
                }
            }
        },
        "/v2/decks": {
            "get": {
                "produces": [
                    "application/json"
                ],
                "summary": "Get decks by lang code",
                "parameters": [
                    {
                        "type": "string",
                        "description": "Language code in upper case (RU, EN)",
                        "name": "languageCode",
                        "in": "query",
                        "required": true
                    }
                ],
                "responses": {
                    "200": {
                        "description": "OK",
                        "schema": {
                            "type": "array",
                            "items": {
                                "$ref": "#/definitions/model.Deck"
                            }
                        }
                    }
                }
            }
        }
    },
    "definitions": {
        "model.Deck": {
            "type": "object",
            "properties": {
                "description": {
                    "type": "string"
                },
                "emoji": {
                    "type": "string"
                },
                "id": {
                    "type": "string"
                },
                "image_id": {
                    "type": "string"
                },
                "labels": {
                    "type": "string"
                },
                "languageCode": {
                    "type": "string"
                },
                "name": {
                    "type": "string"
                }
            }
        },
        "model.Level": {
            "type": "object",
            "properties": {
                "colorButton": {
                    "type": "string"
                },
                "colorEnd": {
                    "type": "string"
                },
                "colorStart": {
                    "type": "string"
                },
                "deckID": {
                    "type": "string"
                },
                "emoji": {
                    "type": "string"
                },
                "id": {
                    "type": "string"
                },
                "levelOrder": {
                    "type": "integer"
                },
                "name": {
                    "type": "string"
                }
            }
        },
        "model.Question": {
            "type": "object",
            "properties": {
                "additional_text": {
                    "type": "string"
                },
                "id": {
                    "type": "string"
                },
                "level_id": {
                    "type": "string"
                },
                "text": {
                    "type": "string"
                }
            }
        }
    },
    "securityDefinitions": {
        "BasicAuth": {
            "type": "basic"
        }
    },
    "externalDocs": {
        "description": "OpenAPI",
        "url": "https://swagger.io/resources/open-api/"
    }
}`

// SwaggerInfo holds exported Swagger Info so clients can modify it
var SwaggerInfo = &swag.Spec{
	Version:          "1.0",
	Host:             "",
	BasePath:         "",
	Schemes:          []string{},
	Title:            "HAUR Swagger API",
	Description:      "This is a HAUR server.",
	InfoInstanceName: "swagger",
	SwaggerTemplate:  docTemplate,
	LeftDelim:        "{{",
	RightDelim:       "}}",
}

func init() {
	swag.Register(SwaggerInfo.InstanceName(), SwaggerInfo)
}
