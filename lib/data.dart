
import 'package:json_viewer/json_debug_widget.dart';

final JsonMap randomData = {
  "id": "0001",
  "type": "donut",
  "name": "Cake",
  "ppu": 0.55,
  "items": [1, 2, 3, 4, 5],
  "batters": {
    "batter": [
      {"id": "1001", "type": "Regular"},
      {"id": "1001", "type": "Regular"},
      {"id": "1002", "type": "Chocolate"},
      {"id": "1003", "type": "Blueberry"},
      {"id": "1004", "type": "Devil's Food"}
    ]
  },
  "topping": [
    {"id": "5001", "type": "None"},
    {"id": "5002", "type": "Glazed"},
    {"id": "5005", "type": "Sugar"},
    {"id": "5007", "type": "Powdered Sugar"},
    {"id": "5006", "type": "Chocolate with Sprinkles"},
    {"id": "5003", "type": "Chocolate"},
    {"id": "5004", "type": "Maple"}
  ]
};

final JsonMap swaggerData = {
  "openapi": "3.0.1",
  "info": {"title": "MyAPI", "version": "v1"},
  "paths": {
    "/api/Auth/login": {
      "post": {
        "tags": ["Auth"],
        "requestBody": {
          "content": {
            "application/json": {
              "schema": {"\$ref": "#/components/schemas/LoginFrom"}
            },
            "text/json": {
              "schema": {"\$ref": "#/components/schemas/LoginFrom"}
            },
            "application/*+json": {
              "schema": {"\$ref": "#/components/schemas/LoginFrom"}
            }
          }
        },
        "responses": {
          "200": {
            "description": "Success",
            "content": {
              "text/plain": {
                "schema": {"\$ref": "#/components/schemas/LoginResponse"}
              },
              "application/json": {
                "schema": {"\$ref": "#/components/schemas/LoginResponse"}
              },
              "text/json": {
                "schema": {"\$ref": "#/components/schemas/LoginResponse"}
              }
            }
          }
        }
      }
    },
    "/api/Blog": {
      "get": {
        "tags": ["Blog"],
        "parameters": [
          {
            "name": "PageNumber",
            "in": "query",
            "schema": {"type": "integer", "format": "int32"}
          },
          {
            "name": "PageSize",
            "in": "query",
            "schema": {"type": "integer", "format": "int32"}
          },
          {
            "name": "categoryId",
            "in": "query",
            "schema": {"type": "string", "format": "uuid"}
          }
        ],
        "responses": {
          "200": {
            "description": "Success",
            "content": {
              "text/plain": {
                "schema": {
                  "\$ref": "#/components/schemas/BlogDtoListPagedResponse"
                }
              },
              "application/json": {
                "schema": {
                  "\$ref": "#/components/schemas/BlogDtoListPagedResponse"
                }
              },
              "text/json": {
                "schema": {
                  "\$ref": "#/components/schemas/BlogDtoListPagedResponse"
                }
              }
            }
          }
        }
      },
      "post": {
        "tags": ["Blog"],
        "requestBody": {
          "content": {
            "application/json": {
              "schema": {"\$ref": "#/components/schemas/BlogForm"}
            },
            "text/json": {
              "schema": {"\$ref": "#/components/schemas/BlogForm"}
            },
            "application/*+json": {
              "schema": {"\$ref": "#/components/schemas/BlogForm"}
            }
          }
        },
        "responses": {
          "200": {
            "description": "Success",
            "content": {
              "text/plain": {
                "schema": {"\$ref": "#/components/schemas/Blog"}
              },
              "application/json": {
                "schema": {"\$ref": "#/components/schemas/Blog"}
              },
              "text/json": {
                "schema": {"\$ref": "#/components/schemas/Blog"}
              }
            }
          }
        }
      }
    },
    "/api/Blog/{id}": {
      "get": {
        "tags": ["Blog"],
        "parameters": [
          {
            "name": "id",
            "in": "path",
            "required": true,
            "schema": {"type": "string", "format": "uuid"}
          }
        ],
        "responses": {
          "200": {
            "description": "Success",
            "content": {
              "text/plain": {
                "schema": {"\$ref": "#/components/schemas/BlogDto"}
              },
              "application/json": {
                "schema": {"\$ref": "#/components/schemas/BlogDto"}
              },
              "text/json": {
                "schema": {"\$ref": "#/components/schemas/BlogDto"}
              }
            }
          }
        }
      },
      "put": {
        "tags": ["Blog"],
        "parameters": [
          {
            "name": "id",
            "in": "path",
            "required": true,
            "schema": {"type": "string", "format": "uuid"}
          }
        ],
        "requestBody": {
          "content": {
            "application/json": {
              "schema": {"\$ref": "#/components/schemas/BlogForm"}
            },
            "text/json": {
              "schema": {"\$ref": "#/components/schemas/BlogForm"}
            },
            "application/*+json": {
              "schema": {"\$ref": "#/components/schemas/BlogForm"}
            }
          }
        },
        "responses": {
          "200": {"description": "Success"}
        }
      },
      "delete": {
        "tags": ["Blog"],
        "parameters": [
          {
            "name": "id",
            "in": "path",
            "required": true,
            "schema": {"type": "string", "format": "uuid"}
          }
        ],
        "responses": {
          "200": {"description": "Success"}
        }
      }
    },
    "/api/BlogCategory": {
      "get": {
        "tags": ["BlogCategory"],
        "responses": {
          "200": {
            "description": "Success",
            "content": {
              "text/plain": {
                "schema": {
                  "\$ref":
                      "#/components/schemas/BlogCategoryDtoListClientResponse"
                }
              },
              "application/json": {
                "schema": {
                  "\$ref":
                      "#/components/schemas/BlogCategoryDtoListClientResponse"
                }
              },
              "text/json": {
                "schema": {
                  "\$ref":
                      "#/components/schemas/BlogCategoryDtoListClientResponse"
                }
              }
            }
          }
        }
      },
      "post": {
        "tags": ["BlogCategory"],
        "requestBody": {
          "content": {
            "application/json": {
              "schema": {"\$ref": "#/components/schemas/BlogCategoryForm"}
            },
            "text/json": {
              "schema": {"\$ref": "#/components/schemas/BlogCategoryForm"}
            },
            "application/*+json": {
              "schema": {"\$ref": "#/components/schemas/BlogCategoryForm"}
            }
          }
        },
        "responses": {
          "200": {
            "description": "Success",
            "content": {
              "text/plain": {
                "schema": {
                  "\$ref": "#/components/schemas/BlogCategoryClientResponse"
                }
              },
              "application/json": {
                "schema": {
                  "\$ref": "#/components/schemas/BlogCategoryClientResponse"
                }
              },
              "text/json": {
                "schema": {
                  "\$ref": "#/components/schemas/BlogCategoryClientResponse"
                }
              }
            }
          }
        }
      }
    },
    "/api/BlogCategory/{id}": {
      "get": {
        "tags": ["BlogCategory"],
        "parameters": [
          {
            "name": "id",
            "in": "path",
            "required": true,
            "schema": {"type": "string", "format": "uuid"}
          }
        ],
        "responses": {
          "200": {
            "description": "Success",
            "content": {
              "text/plain": {
                "schema": {
                  "\$ref": "#/components/schemas/BlogCategoryDtoClientResponse"
                }
              },
              "application/json": {
                "schema": {
                  "\$ref": "#/components/schemas/BlogCategoryDtoClientResponse"
                }
              },
              "text/json": {
                "schema": {
                  "\$ref": "#/components/schemas/BlogCategoryDtoClientResponse"
                }
              }
            }
          }
        }
      },
      "put": {
        "tags": ["BlogCategory"],
        "parameters": [
          {
            "name": "id",
            "in": "path",
            "required": true,
            "schema": {"type": "string", "format": "uuid"}
          }
        ],
        "requestBody": {
          "content": {
            "application/json": {
              "schema": {"\$ref": "#/components/schemas/BlogCategoryForm"}
            },
            "text/json": {
              "schema": {"\$ref": "#/components/schemas/BlogCategoryForm"}
            },
            "application/*+json": {
              "schema": {"\$ref": "#/components/schemas/BlogCategoryForm"}
            }
          }
        },
        "responses": {
          "200": {
            "description": "Success",
            "content": {
              "text/plain": {
                "schema": {
                  "\$ref": "#/components/schemas/BlogCategoryClientResponse"
                }
              },
              "application/json": {
                "schema": {
                  "\$ref": "#/components/schemas/BlogCategoryClientResponse"
                }
              },
              "text/json": {
                "schema": {
                  "\$ref": "#/components/schemas/BlogCategoryClientResponse"
                }
              }
            }
          }
        }
      },
      "delete": {
        "tags": ["BlogCategory"],
        "parameters": [
          {
            "name": "id",
            "in": "path",
            "required": true,
            "schema": {"type": "string", "format": "uuid"}
          }
        ],
        "responses": {
          "200": {"description": "Success"}
        }
      }
    },
    "/api/City": {
      "get": {
        "tags": ["City"],
        "parameters": [
          {
            "name": "PageNumber",
            "in": "query",
            "schema": {"type": "integer", "format": "int32"}
          },
          {
            "name": "PageSize",
            "in": "query",
            "schema": {"type": "integer", "format": "int32"}
          }
        ],
        "responses": {
          "200": {
            "description": "Success",
            "content": {
              "text/plain": {
                "schema": {
                  "\$ref": "#/components/schemas/CityDtoListPagedResponse"
                }
              },
              "application/json": {
                "schema": {
                  "\$ref": "#/components/schemas/CityDtoListPagedResponse"
                }
              },
              "text/json": {
                "schema": {
                  "\$ref": "#/components/schemas/CityDtoListPagedResponse"
                }
              }
            }
          }
        }
      },
      "post": {
        "tags": ["City"],
        "requestBody": {
          "content": {
            "application/json": {
              "schema": {"\$ref": "#/components/schemas/CityForm"}
            },
            "text/json": {
              "schema": {"\$ref": "#/components/schemas/CityForm"}
            },
            "application/*+json": {
              "schema": {"\$ref": "#/components/schemas/CityForm"}
            }
          }
        },
        "responses": {
          "200": {
            "description": "Success",
            "content": {
              "text/plain": {
                "schema": {"\$ref": "#/components/schemas/CityClientResponse"}
              },
              "application/json": {
                "schema": {"\$ref": "#/components/schemas/CityClientResponse"}
              },
              "text/json": {
                "schema": {"\$ref": "#/components/schemas/CityClientResponse"}
              }
            }
          }
        }
      }
    },
    "/api/City/{id}": {
      "get": {
        "tags": ["City"],
        "parameters": [
          {
            "name": "id",
            "in": "path",
            "required": true,
            "schema": {"type": "string", "format": "uuid"}
          }
        ],
        "responses": {
          "200": {
            "description": "Success",
            "content": {
              "text/plain": {
                "schema": {
                  "\$ref": "#/components/schemas/CityDtoClientResponse"
                }
              },
              "application/json": {
                "schema": {
                  "\$ref": "#/components/schemas/CityDtoClientResponse"
                }
              },
              "text/json": {
                "schema": {
                  "\$ref": "#/components/schemas/CityDtoClientResponse"
                }
              }
            }
          }
        }
      },
      "put": {
        "tags": ["City"],
        "parameters": [
          {
            "name": "id",
            "in": "path",
            "required": true,
            "schema": {"type": "string", "format": "uuid"}
          }
        ],
        "requestBody": {
          "content": {
            "application/json": {
              "schema": {"\$ref": "#/components/schemas/CityForm"}
            },
            "text/json": {
              "schema": {"\$ref": "#/components/schemas/CityForm"}
            },
            "application/*+json": {
              "schema": {"\$ref": "#/components/schemas/CityForm"}
            }
          }
        },
        "responses": {
          "200": {
            "description": "Success",
            "content": {
              "text/plain": {
                "schema": {"\$ref": "#/components/schemas/CityClientResponse"}
              },
              "application/json": {
                "schema": {"\$ref": "#/components/schemas/CityClientResponse"}
              },
              "text/json": {
                "schema": {"\$ref": "#/components/schemas/CityClientResponse"}
              }
            }
          }
        }
      },
      "delete": {
        "tags": ["City"],
        "parameters": [
          {
            "name": "id",
            "in": "path",
            "required": true,
            "schema": {"type": "string", "format": "uuid"}
          }
        ],
        "responses": {
          "200": {"description": "Success"}
        }
      }
    },
    "/api/Country": {
      "get": {
        "tags": ["Country"],
        "parameters": [
          {
            "name": "PageNumber",
            "in": "query",
            "schema": {"type": "integer", "format": "int32"}
          },
          {
            "name": "PageSize",
            "in": "query",
            "schema": {"type": "integer", "format": "int32"}
          }
        ],
        "responses": {
          "200": {
            "description": "Success",
            "content": {
              "text/plain": {
                "schema": {
                  "\$ref": "#/components/schemas/CountryDtoListPagedResponse"
                }
              },
              "application/json": {
                "schema": {
                  "\$ref": "#/components/schemas/CountryDtoListPagedResponse"
                }
              },
              "text/json": {
                "schema": {
                  "\$ref": "#/components/schemas/CountryDtoListPagedResponse"
                }
              }
            }
          }
        }
      },
      "post": {
        "tags": ["Country"],
        "requestBody": {
          "content": {
            "application/json": {
              "schema": {"\$ref": "#/components/schemas/CountryForm"}
            },
            "text/json": {
              "schema": {"\$ref": "#/components/schemas/CountryForm"}
            },
            "application/*+json": {
              "schema": {"\$ref": "#/components/schemas/CountryForm"}
            }
          }
        },
        "responses": {
          "200": {
            "description": "Success",
            "content": {
              "text/plain": {
                "schema": {
                  "\$ref": "#/components/schemas/CountryClientResponse"
                }
              },
              "application/json": {
                "schema": {
                  "\$ref": "#/components/schemas/CountryClientResponse"
                }
              },
              "text/json": {
                "schema": {
                  "\$ref": "#/components/schemas/CountryClientResponse"
                }
              }
            }
          }
        }
      }
    },
    "/api/Country/{id}": {
      "get": {
        "tags": ["Country"],
        "parameters": [
          {
            "name": "id",
            "in": "path",
            "required": true,
            "schema": {"type": "string", "format": "uuid"}
          }
        ],
        "responses": {
          "200": {
            "description": "Success",
            "content": {
              "text/plain": {
                "schema": {
                  "\$ref": "#/components/schemas/CountryDtoClientResponse"
                }
              },
              "application/json": {
                "schema": {
                  "\$ref": "#/components/schemas/CountryDtoClientResponse"
                }
              },
              "text/json": {
                "schema": {
                  "\$ref": "#/components/schemas/CountryDtoClientResponse"
                }
              }
            }
          }
        }
      },
      "put": {
        "tags": ["Country"],
        "parameters": [
          {
            "name": "id",
            "in": "path",
            "required": true,
            "schema": {"type": "string", "format": "uuid"}
          }
        ],
        "requestBody": {
          "content": {
            "application/json": {
              "schema": {"\$ref": "#/components/schemas/CountryForm"}
            },
            "text/json": {
              "schema": {"\$ref": "#/components/schemas/CountryForm"}
            },
            "application/*+json": {
              "schema": {"\$ref": "#/components/schemas/CountryForm"}
            }
          }
        },
        "responses": {
          "200": {
            "description": "Success",
            "content": {
              "text/plain": {
                "schema": {
                  "\$ref": "#/components/schemas/CountryClientResponse"
                }
              },
              "application/json": {
                "schema": {
                  "\$ref": "#/components/schemas/CountryClientResponse"
                }
              },
              "text/json": {
                "schema": {
                  "\$ref": "#/components/schemas/CountryClientResponse"
                }
              }
            }
          }
        }
      },
      "delete": {
        "tags": ["Country"],
        "parameters": [
          {
            "name": "id",
            "in": "path",
            "required": true,
            "schema": {"type": "string", "format": "uuid"}
          }
        ],
        "responses": {
          "200": {"description": "Success"}
        }
      }
    },
    "/api/Features": {
      "get": {
        "tags": ["Features"],
        "responses": {
          "200": {
            "description": "Success",
            "content": {
              "text/plain": {
                "schema": {
                  "\$ref": "#/components/schemas/FeaturesDtoClientResponse"
                }
              },
              "application/json": {
                "schema": {
                  "\$ref": "#/components/schemas/FeaturesDtoClientResponse"
                }
              },
              "text/json": {
                "schema": {
                  "\$ref": "#/components/schemas/FeaturesDtoClientResponse"
                }
              }
            }
          }
        }
      },
      "post": {
        "tags": ["Features"],
        "requestBody": {
          "content": {
            "application/json": {
              "schema": {"\$ref": "#/components/schemas/FeaturesForm"}
            },
            "text/json": {
              "schema": {"\$ref": "#/components/schemas/FeaturesForm"}
            },
            "application/*+json": {
              "schema": {"\$ref": "#/components/schemas/FeaturesForm"}
            }
          }
        },
        "responses": {
          "200": {
            "description": "Success",
            "content": {
              "text/plain": {
                "schema": {
                  "\$ref": "#/components/schemas/FeaturesClientResponse"
                }
              },
              "application/json": {
                "schema": {
                  "\$ref": "#/components/schemas/FeaturesClientResponse"
                }
              },
              "text/json": {
                "schema": {
                  "\$ref": "#/components/schemas/FeaturesClientResponse"
                }
              }
            }
          }
        }
      }
    },
    "/api/History": {
      "get": {
        "tags": ["History"],
        "responses": {
          "200": {
            "description": "Success",
            "content": {
              "text/plain": {
                "schema": {
                  "\$ref": "#/components/schemas/HistoryDtoClientResponse"
                }
              },
              "application/json": {
                "schema": {
                  "\$ref": "#/components/schemas/HistoryDtoClientResponse"
                }
              },
              "text/json": {
                "schema": {
                  "\$ref": "#/components/schemas/HistoryDtoClientResponse"
                }
              }
            }
          }
        }
      },
      "post": {
        "tags": ["History"],
        "requestBody": {
          "content": {
            "application/json": {
              "schema": {"\$ref": "#/components/schemas/HistoryForm"}
            },
            "text/json": {
              "schema": {"\$ref": "#/components/schemas/HistoryForm"}
            },
            "application/*+json": {
              "schema": {"\$ref": "#/components/schemas/HistoryForm"}
            }
          }
        },
        "responses": {
          "200": {
            "description": "Success",
            "content": {
              "text/plain": {
                "schema": {
                  "\$ref": "#/components/schemas/HistoryClientResponse"
                }
              },
              "application/json": {
                "schema": {
                  "\$ref": "#/components/schemas/HistoryClientResponse"
                }
              },
              "text/json": {
                "schema": {
                  "\$ref": "#/components/schemas/HistoryClientResponse"
                }
              }
            }
          }
        }
      }
    },
    "/api/Mail": {
      "get": {
        "tags": ["Mail"],
        "parameters": [
          {
            "name": "PageNumber",
            "in": "query",
            "schema": {"type": "integer", "format": "int32"}
          },
          {
            "name": "PageSize",
            "in": "query",
            "schema": {"type": "integer", "format": "int32"}
          }
        ],
        "responses": {
          "200": {
            "description": "Success",
            "content": {
              "text/plain": {
                "schema": {
                  "\$ref": "#/components/schemas/MailDtoListPagedResponse"
                }
              },
              "application/json": {
                "schema": {
                  "\$ref": "#/components/schemas/MailDtoListPagedResponse"
                }
              },
              "text/json": {
                "schema": {
                  "\$ref": "#/components/schemas/MailDtoListPagedResponse"
                }
              }
            }
          }
        }
      },
      "post": {
        "tags": ["Mail"],
        "requestBody": {
          "content": {
            "application/json": {
              "schema": {"\$ref": "#/components/schemas/MailForm"}
            },
            "text/json": {
              "schema": {"\$ref": "#/components/schemas/MailForm"}
            },
            "application/*+json": {
              "schema": {"\$ref": "#/components/schemas/MailForm"}
            }
          }
        },
        "responses": {
          "200": {
            "description": "Success",
            "content": {
              "text/plain": {
                "schema": {"\$ref": "#/components/schemas/MailClientResponse"}
              },
              "application/json": {
                "schema": {"\$ref": "#/components/schemas/MailClientResponse"}
              },
              "text/json": {
                "schema": {"\$ref": "#/components/schemas/MailClientResponse"}
              }
            }
          }
        }
      }
    },
    "/api/Mail/{id}": {
      "get": {
        "tags": ["Mail"],
        "parameters": [
          {
            "name": "id",
            "in": "path",
            "required": true,
            "schema": {"type": "string", "format": "uuid"}
          }
        ],
        "responses": {
          "200": {
            "description": "Success",
            "content": {
              "text/plain": {
                "schema": {
                  "\$ref": "#/components/schemas/MailDtoClientResponse"
                }
              },
              "application/json": {
                "schema": {
                  "\$ref": "#/components/schemas/MailDtoClientResponse"
                }
              },
              "text/json": {
                "schema": {
                  "\$ref": "#/components/schemas/MailDtoClientResponse"
                }
              }
            }
          }
        }
      },
      "delete": {
        "tags": ["Mail"],
        "parameters": [
          {
            "name": "id",
            "in": "path",
            "required": true,
            "schema": {"type": "string", "format": "uuid"}
          }
        ],
        "responses": {
          "200": {"description": "Success"}
        }
      }
    },
    "/api/Media": {
      "post": {
        "tags": ["Media"],
        "requestBody": {
          "content": {
            "multipart/form-data": {
              "schema": {
                "required": ["File", "FileType"],
                "type": "object",
                "properties": {
                  "File": {"type": "string", "format": "binary"},
                  "FileType": {
                    "pattern": "BlogPhoto|Logo|PassportImage|Video",
                    "type": "string"
                  }
                }
              },
              "encoding": {
                "File": {"style": "form"},
                "FileType": {"style": "form"}
              }
            }
          }
        },
        "responses": {
          "200": {
            "description": "Success",
            "content": {
              "text/plain": {
                "schema": {"\$ref": "#/components/schemas/StringClientResponse"}
              },
              "application/json": {
                "schema": {"\$ref": "#/components/schemas/StringClientResponse"}
              },
              "text/json": {
                "schema": {"\$ref": "#/components/schemas/StringClientResponse"}
              }
            }
          }
        }
      }
    },
    "/api/News": {
      "get": {
        "tags": ["News"],
        "parameters": [
          {
            "name": "PageNumber",
            "in": "query",
            "schema": {"type": "integer", "format": "int32"}
          },
          {
            "name": "PageSize",
            "in": "query",
            "schema": {"type": "integer", "format": "int32"}
          },
          {
            "name": "categoryId",
            "in": "query",
            "schema": {"type": "string", "format": "uuid"}
          }
        ],
        "responses": {
          "200": {
            "description": "Success",
            "content": {
              "text/plain": {
                "schema": {
                  "\$ref": "#/components/schemas/NewsDtoListPagedResponse"
                }
              },
              "application/json": {
                "schema": {
                  "\$ref": "#/components/schemas/NewsDtoListPagedResponse"
                }
              },
              "text/json": {
                "schema": {
                  "\$ref": "#/components/schemas/NewsDtoListPagedResponse"
                }
              }
            }
          }
        }
      },
      "post": {
        "tags": ["News"],
        "requestBody": {
          "content": {
            "application/json": {
              "schema": {"\$ref": "#/components/schemas/NewsForm"}
            },
            "text/json": {
              "schema": {"\$ref": "#/components/schemas/NewsForm"}
            },
            "application/*+json": {
              "schema": {"\$ref": "#/components/schemas/NewsForm"}
            }
          }
        },
        "responses": {
          "200": {
            "description": "Success",
            "content": {
              "text/plain": {
                "schema": {"\$ref": "#/components/schemas/NewsClientResponse"}
              },
              "application/json": {
                "schema": {"\$ref": "#/components/schemas/NewsClientResponse"}
              },
              "text/json": {
                "schema": {"\$ref": "#/components/schemas/NewsClientResponse"}
              }
            }
          }
        }
      }
    },
    "/api/News/{id}": {
      "get": {
        "tags": ["News"],
        "parameters": [
          {
            "name": "id",
            "in": "path",
            "required": true,
            "schema": {"type": "string", "format": "uuid"}
          }
        ],
        "responses": {
          "200": {
            "description": "Success",
            "content": {
              "text/plain": {
                "schema": {
                  "\$ref": "#/components/schemas/NewsDtoClientResponse"
                }
              },
              "application/json": {
                "schema": {
                  "\$ref": "#/components/schemas/NewsDtoClientResponse"
                }
              },
              "text/json": {
                "schema": {
                  "\$ref": "#/components/schemas/NewsDtoClientResponse"
                }
              }
            }
          }
        }
      },
      "put": {
        "tags": ["News"],
        "parameters": [
          {
            "name": "id",
            "in": "path",
            "required": true,
            "schema": {"type": "string", "format": "uuid"}
          }
        ],
        "requestBody": {
          "content": {
            "application/json": {
              "schema": {"\$ref": "#/components/schemas/NewsForm"}
            },
            "text/json": {
              "schema": {"\$ref": "#/components/schemas/NewsForm"}
            },
            "application/*+json": {
              "schema": {"\$ref": "#/components/schemas/NewsForm"}
            }
          }
        },
        "responses": {
          "200": {
            "description": "Success",
            "content": {
              "text/plain": {
                "schema": {"\$ref": "#/components/schemas/NewsClientResponse"}
              },
              "application/json": {
                "schema": {"\$ref": "#/components/schemas/NewsClientResponse"}
              },
              "text/json": {
                "schema": {"\$ref": "#/components/schemas/NewsClientResponse"}
              }
            }
          }
        }
      },
      "delete": {
        "tags": ["News"],
        "parameters": [
          {
            "name": "id",
            "in": "path",
            "required": true,
            "schema": {"type": "string", "format": "uuid"}
          }
        ],
        "responses": {
          "200": {"description": "Success"}
        }
      }
    },
    "/api/NewsCategory": {
      "get": {
        "tags": ["NewsCategory"],
        "responses": {
          "200": {
            "description": "Success",
            "content": {
              "text/plain": {
                "schema": {
                  "\$ref":
                      "#/components/schemas/NewsCategoryDtoListClientResponse"
                }
              },
              "application/json": {
                "schema": {
                  "\$ref":
                      "#/components/schemas/NewsCategoryDtoListClientResponse"
                }
              },
              "text/json": {
                "schema": {
                  "\$ref":
                      "#/components/schemas/NewsCategoryDtoListClientResponse"
                }
              }
            }
          }
        }
      },
      "post": {
        "tags": ["NewsCategory"],
        "requestBody": {
          "content": {
            "application/json": {
              "schema": {"\$ref": "#/components/schemas/NewsCategoryForm"}
            },
            "text/json": {
              "schema": {"\$ref": "#/components/schemas/NewsCategoryForm"}
            },
            "application/*+json": {
              "schema": {"\$ref": "#/components/schemas/NewsCategoryForm"}
            }
          }
        },
        "responses": {
          "200": {
            "description": "Success",
            "content": {
              "text/plain": {
                "schema": {
                  "\$ref": "#/components/schemas/NewsCategoryClientResponse"
                }
              },
              "application/json": {
                "schema": {
                  "\$ref": "#/components/schemas/NewsCategoryClientResponse"
                }
              },
              "text/json": {
                "schema": {
                  "\$ref": "#/components/schemas/NewsCategoryClientResponse"
                }
              }
            }
          }
        }
      }
    },
    "/api/NewsCategory/{id}": {
      "get": {
        "tags": ["NewsCategory"],
        "parameters": [
          {
            "name": "id",
            "in": "path",
            "required": true,
            "schema": {"type": "string", "format": "uuid"}
          }
        ],
        "responses": {
          "200": {
            "description": "Success",
            "content": {
              "text/plain": {
                "schema": {
                  "\$ref": "#/components/schemas/NewsCategoryDtoClientResponse"
                }
              },
              "application/json": {
                "schema": {
                  "\$ref": "#/components/schemas/NewsCategoryDtoClientResponse"
                }
              },
              "text/json": {
                "schema": {
                  "\$ref": "#/components/schemas/NewsCategoryDtoClientResponse"
                }
              }
            }
          }
        }
      },
      "put": {
        "tags": ["NewsCategory"],
        "parameters": [
          {
            "name": "id",
            "in": "path",
            "required": true,
            "schema": {"type": "string", "format": "uuid"}
          }
        ],
        "requestBody": {
          "content": {
            "application/json": {
              "schema": {"\$ref": "#/components/schemas/NewsCategoryForm"}
            },
            "text/json": {
              "schema": {"\$ref": "#/components/schemas/NewsCategoryForm"}
            },
            "application/*+json": {
              "schema": {"\$ref": "#/components/schemas/NewsCategoryForm"}
            }
          }
        },
        "responses": {
          "200": {
            "description": "Success",
            "content": {
              "text/plain": {
                "schema": {
                  "\$ref": "#/components/schemas/NewsCategoryClientResponse"
                }
              },
              "application/json": {
                "schema": {
                  "\$ref": "#/components/schemas/NewsCategoryClientResponse"
                }
              },
              "text/json": {
                "schema": {
                  "\$ref": "#/components/schemas/NewsCategoryClientResponse"
                }
              }
            }
          }
        }
      },
      "delete": {
        "tags": ["NewsCategory"],
        "parameters": [
          {
            "name": "id",
            "in": "path",
            "required": true,
            "schema": {"type": "string", "format": "uuid"}
          }
        ],
        "responses": {
          "200": {"description": "Success"}
        }
      }
    },
    "/api/NewsLetter": {
      "get": {
        "tags": ["NewsLetter"],
        "parameters": [
          {
            "name": "PageNumber",
            "in": "query",
            "schema": {"type": "integer", "format": "int32"}
          },
          {
            "name": "PageSize",
            "in": "query",
            "schema": {"type": "integer", "format": "int32"}
          }
        ],
        "responses": {
          "200": {
            "description": "Success",
            "content": {
              "text/plain": {
                "schema": {
                  "\$ref": "#/components/schemas/NewsLetterDtoListPagedResponse"
                }
              },
              "application/json": {
                "schema": {
                  "\$ref": "#/components/schemas/NewsLetterDtoListPagedResponse"
                }
              },
              "text/json": {
                "schema": {
                  "\$ref": "#/components/schemas/NewsLetterDtoListPagedResponse"
                }
              }
            }
          }
        }
      },
      "post": {
        "tags": ["NewsLetter"],
        "requestBody": {
          "content": {
            "application/json": {
              "schema": {"\$ref": "#/components/schemas/NewsLetterForm"}
            },
            "text/json": {
              "schema": {"\$ref": "#/components/schemas/NewsLetterForm"}
            },
            "application/*+json": {
              "schema": {"\$ref": "#/components/schemas/NewsLetterForm"}
            }
          }
        },
        "responses": {
          "200": {
            "description": "Success",
            "content": {
              "text/plain": {
                "schema": {
                  "\$ref": "#/components/schemas/NewsLetterClientResponse"
                }
              },
              "application/json": {
                "schema": {
                  "\$ref": "#/components/schemas/NewsLetterClientResponse"
                }
              },
              "text/json": {
                "schema": {
                  "\$ref": "#/components/schemas/NewsLetterClientResponse"
                }
              }
            }
          }
        }
      }
    },
    "/api/Office": {
      "get": {
        "tags": ["Office"],
        "parameters": [
          {
            "name": "PageNumber",
            "in": "query",
            "schema": {"type": "integer", "format": "int32"}
          },
          {
            "name": "PageSize",
            "in": "query",
            "schema": {"type": "integer", "format": "int32"}
          },
          {
            "name": "lat",
            "in": "query",
            "schema": {"type": "number", "format": "double"}
          },
          {
            "name": "lng",
            "in": "query",
            "schema": {"type": "number", "format": "double"}
          },
          {
            "name": "search",
            "in": "query",
            "schema": {"type": "string"}
          }
        ],
        "responses": {
          "200": {
            "description": "Success",
            "content": {
              "text/plain": {
                "schema": {
                  "\$ref": "#/components/schemas/OfficeDtoListPagedResponse"
                }
              },
              "application/json": {
                "schema": {
                  "\$ref": "#/components/schemas/OfficeDtoListPagedResponse"
                }
              },
              "text/json": {
                "schema": {
                  "\$ref": "#/components/schemas/OfficeDtoListPagedResponse"
                }
              }
            }
          }
        }
      },
      "post": {
        "tags": ["Office"],
        "requestBody": {
          "content": {
            "application/json": {
              "schema": {"\$ref": "#/components/schemas/OfficeForm"}
            },
            "text/json": {
              "schema": {"\$ref": "#/components/schemas/OfficeForm"}
            },
            "application/*+json": {
              "schema": {"\$ref": "#/components/schemas/OfficeForm"}
            }
          }
        },
        "responses": {
          "200": {
            "description": "Success",
            "content": {
              "text/plain": {
                "schema": {"\$ref": "#/components/schemas/OfficeClientResponse"}
              },
              "application/json": {
                "schema": {"\$ref": "#/components/schemas/OfficeClientResponse"}
              },
              "text/json": {
                "schema": {"\$ref": "#/components/schemas/OfficeClientResponse"}
              }
            }
          }
        }
      }
    },
    "/api/Office/{id}": {
      "get": {
        "tags": ["Office"],
        "parameters": [
          {
            "name": "id",
            "in": "path",
            "required": true,
            "schema": {"type": "string", "format": "uuid"}
          }
        ],
        "responses": {
          "200": {
            "description": "Success",
            "content": {
              "text/plain": {
                "schema": {
                  "\$ref": "#/components/schemas/OfficeDtoClientResponse"
                }
              },
              "application/json": {
                "schema": {
                  "\$ref": "#/components/schemas/OfficeDtoClientResponse"
                }
              },
              "text/json": {
                "schema": {
                  "\$ref": "#/components/schemas/OfficeDtoClientResponse"
                }
              }
            }
          }
        }
      },
      "put": {
        "tags": ["Office"],
        "parameters": [
          {
            "name": "id",
            "in": "path",
            "required": true,
            "schema": {"type": "string", "format": "uuid"}
          }
        ],
        "requestBody": {
          "content": {
            "application/json": {
              "schema": {"\$ref": "#/components/schemas/OfficeForm"}
            },
            "text/json": {
              "schema": {"\$ref": "#/components/schemas/OfficeForm"}
            },
            "application/*+json": {
              "schema": {"\$ref": "#/components/schemas/OfficeForm"}
            }
          }
        },
        "responses": {
          "200": {
            "description": "Success",
            "content": {
              "text/plain": {
                "schema": {"\$ref": "#/components/schemas/OfficeClientResponse"}
              },
              "application/json": {
                "schema": {"\$ref": "#/components/schemas/OfficeClientResponse"}
              },
              "text/json": {
                "schema": {"\$ref": "#/components/schemas/OfficeClientResponse"}
              }
            }
          }
        }
      },
      "delete": {
        "tags": ["Office"],
        "parameters": [
          {
            "name": "id",
            "in": "path",
            "required": true,
            "schema": {"type": "string", "format": "uuid"}
          }
        ],
        "responses": {
          "200": {"description": "Success"}
        }
      }
    },
    "/api/Office/seed": {
      "post": {
        "tags": ["Office"],
        "responses": {
          "200": {
            "description": "Success",
            "content": {
              "text/plain": {
                "schema": {"\$ref": "#/components/schemas/StringClientResponse"}
              },
              "application/json": {
                "schema": {"\$ref": "#/components/schemas/StringClientResponse"}
              },
              "text/json": {
                "schema": {"\$ref": "#/components/schemas/StringClientResponse"}
              }
            }
          }
        }
      }
    },
    "/api/Page": {
      "get": {
        "tags": ["Page"],
        "parameters": [
          {
            "name": "PageNumber",
            "in": "query",
            "schema": {"type": "integer", "format": "int32"}
          },
          {
            "name": "PageSize",
            "in": "query",
            "schema": {"type": "integer", "format": "int32"}
          }
        ],
        "responses": {
          "200": {
            "description": "Success",
            "content": {
              "text/plain": {
                "schema": {
                  "\$ref": "#/components/schemas/PageDtoListPagedResponse"
                }
              },
              "application/json": {
                "schema": {
                  "\$ref": "#/components/schemas/PageDtoListPagedResponse"
                }
              },
              "text/json": {
                "schema": {
                  "\$ref": "#/components/schemas/PageDtoListPagedResponse"
                }
              }
            }
          }
        }
      },
      "post": {
        "tags": ["Page"],
        "requestBody": {
          "content": {
            "application/json": {
              "schema": {"\$ref": "#/components/schemas/PageForm"}
            },
            "text/json": {
              "schema": {"\$ref": "#/components/schemas/PageForm"}
            },
            "application/*+json": {
              "schema": {"\$ref": "#/components/schemas/PageForm"}
            }
          }
        },
        "responses": {
          "200": {
            "description": "Success",
            "content": {
              "text/plain": {
                "schema": {"\$ref": "#/components/schemas/PageClientResponse"}
              },
              "application/json": {
                "schema": {"\$ref": "#/components/schemas/PageClientResponse"}
              },
              "text/json": {
                "schema": {"\$ref": "#/components/schemas/PageClientResponse"}
              }
            }
          }
        }
      }
    },
    "/api/Page/{id}": {
      "get": {
        "tags": ["Page"],
        "parameters": [
          {
            "name": "id",
            "in": "path",
            "required": true,
            "schema": {"type": "string", "format": "uuid"}
          }
        ],
        "responses": {
          "200": {
            "description": "Success",
            "content": {
              "text/plain": {
                "schema": {
                  "\$ref": "#/components/schemas/PageDtoClientResponse"
                }
              },
              "application/json": {
                "schema": {
                  "\$ref": "#/components/schemas/PageDtoClientResponse"
                }
              },
              "text/json": {
                "schema": {
                  "\$ref": "#/components/schemas/PageDtoClientResponse"
                }
              }
            }
          }
        }
      },
      "put": {
        "tags": ["Page"],
        "parameters": [
          {
            "name": "id",
            "in": "path",
            "required": true,
            "schema": {"type": "string", "format": "uuid"}
          }
        ],
        "requestBody": {
          "content": {
            "application/json": {
              "schema": {"\$ref": "#/components/schemas/PageForm"}
            },
            "text/json": {
              "schema": {"\$ref": "#/components/schemas/PageForm"}
            },
            "application/*+json": {
              "schema": {"\$ref": "#/components/schemas/PageForm"}
            }
          }
        },
        "responses": {
          "200": {
            "description": "Success",
            "content": {
              "text/plain": {
                "schema": {"\$ref": "#/components/schemas/PageClientResponse"}
              },
              "application/json": {
                "schema": {"\$ref": "#/components/schemas/PageClientResponse"}
              },
              "text/json": {
                "schema": {"\$ref": "#/components/schemas/PageClientResponse"}
              }
            }
          }
        }
      },
      "delete": {
        "tags": ["Page"],
        "parameters": [
          {
            "name": "id",
            "in": "path",
            "required": true,
            "schema": {"type": "string", "format": "uuid"}
          }
        ],
        "responses": {
          "200": {"description": "Success"}
        }
      }
    },
    "/api/PassportImage": {
      "get": {
        "tags": ["PassportImage"],
        "parameters": [
          {
            "name": "PageNumber",
            "in": "query",
            "schema": {"type": "integer", "format": "int32"}
          },
          {
            "name": "PageSize",
            "in": "query",
            "schema": {"type": "integer", "format": "int32"}
          }
        ],
        "responses": {
          "200": {
            "description": "Success",
            "content": {
              "text/plain": {
                "schema": {
                  "\$ref": "#/components/schemas/StringListClientResponse"
                }
              },
              "application/json": {
                "schema": {
                  "\$ref": "#/components/schemas/StringListClientResponse"
                }
              },
              "text/json": {
                "schema": {
                  "\$ref": "#/components/schemas/StringListClientResponse"
                }
              }
            }
          }
        }
      },
      "post": {
        "tags": ["PassportImage"],
        "requestBody": {
          "content": {
            "multipart/form-data": {
              "schema": {
                "required": ["Photos"],
                "type": "object",
                "properties": {
                  "Photos": {
                    "type": "array",
                    "items": {"type": "string", "format": "binary"}
                  }
                }
              },
              "encoding": {
                "Photos": {"style": "form"}
              }
            }
          }
        },
        "responses": {
          "200": {
            "description": "Success",
            "content": {
              "text/plain": {
                "schema": {
                  "\$ref": "#/components/schemas/PassportImageClientResponse"
                }
              },
              "application/json": {
                "schema": {
                  "\$ref": "#/components/schemas/PassportImageClientResponse"
                }
              },
              "text/json": {
                "schema": {
                  "\$ref": "#/components/schemas/PassportImageClientResponse"
                }
              }
            }
          }
        }
      }
    },
    "/api/PassportInstructions": {
      "get": {
        "tags": ["PassportInstructions"],
        "parameters": [
          {
            "name": "PageNumber",
            "in": "query",
            "schema": {"type": "integer", "format": "int32"}
          },
          {
            "name": "PageSize",
            "in": "query",
            "schema": {"type": "integer", "format": "int32"}
          },
          {
            "name": "passportStatus",
            "in": "query",
            "schema": {"type": "integer", "format": "int32"}
          },
          {
            "name": "passportType",
            "in": "query",
            "schema": {"type": "integer", "format": "int32"}
          }
        ],
        "responses": {
          "200": {
            "description": "Success",
            "content": {
              "text/plain": {
                "schema": {
                  "\$ref":
                      "#/components/schemas/PassportInstructionsDtoListPagedResponse"
                }
              },
              "application/json": {
                "schema": {
                  "\$ref":
                      "#/components/schemas/PassportInstructionsDtoListPagedResponse"
                }
              },
              "text/json": {
                "schema": {
                  "\$ref":
                      "#/components/schemas/PassportInstructionsDtoListPagedResponse"
                }
              }
            }
          }
        }
      },
      "post": {
        "tags": ["PassportInstructions"],
        "requestBody": {
          "content": {
            "application/json": {
              "schema": {
                "\$ref": "#/components/schemas/PassportInstructionsForm"
              }
            },
            "text/json": {
              "schema": {
                "\$ref": "#/components/schemas/PassportInstructionsForm"
              }
            },
            "application/*+json": {
              "schema": {
                "\$ref": "#/components/schemas/PassportInstructionsForm"
              }
            }
          }
        },
        "responses": {
          "200": {
            "description": "Success",
            "content": {
              "text/plain": {
                "schema": {
                  "\$ref":
                      "#/components/schemas/PassportInstructionsClientResponse"
                }
              },
              "application/json": {
                "schema": {
                  "\$ref":
                      "#/components/schemas/PassportInstructionsClientResponse"
                }
              },
              "text/json": {
                "schema": {
                  "\$ref":
                      "#/components/schemas/PassportInstructionsClientResponse"
                }
              }
            }
          }
        }
      }
    },
    "/api/PassportInstructions/{id}": {
      "get": {
        "tags": ["PassportInstructions"],
        "parameters": [
          {
            "name": "id",
            "in": "path",
            "required": true,
            "schema": {"type": "string", "format": "uuid"}
          }
        ],
        "responses": {
          "200": {
            "description": "Success",
            "content": {
              "text/plain": {
                "schema": {
                  "\$ref":
                      "#/components/schemas/PassportInstructionsDtoClientResponse"
                }
              },
              "application/json": {
                "schema": {
                  "\$ref":
                      "#/components/schemas/PassportInstructionsDtoClientResponse"
                }
              },
              "text/json": {
                "schema": {
                  "\$ref":
                      "#/components/schemas/PassportInstructionsDtoClientResponse"
                }
              }
            }
          }
        }
      },
      "delete": {
        "tags": ["PassportInstructions"],
        "parameters": [
          {
            "name": "id",
            "in": "path",
            "required": true,
            "schema": {"type": "string", "format": "uuid"}
          }
        ],
        "responses": {
          "200": {"description": "Success"}
        }
      }
    },
    "/api/PassportInstructions/single": {
      "get": {
        "tags": ["PassportInstructions"],
        "parameters": [
          {
            "name": "passportStatus",
            "in": "query",
            "required": true,
            "schema": {"type": "integer", "format": "int32"}
          },
          {
            "name": "passportType",
            "in": "query",
            "required": true,
            "schema": {"type": "integer", "format": "int32"}
          }
        ],
        "responses": {
          "200": {
            "description": "Success",
            "content": {
              "text/plain": {
                "schema": {
                  "\$ref":
                      "#/components/schemas/PassportInstructionsDtoClientResponse"
                }
              },
              "application/json": {
                "schema": {
                  "\$ref":
                      "#/components/schemas/PassportInstructionsDtoClientResponse"
                }
              },
              "text/json": {
                "schema": {
                  "\$ref":
                      "#/components/schemas/PassportInstructionsDtoClientResponse"
                }
              }
            }
          }
        }
      }
    },
    "/api/Settings": {
      "get": {
        "tags": ["Settings"],
        "responses": {
          "200": {
            "description": "Success",
            "content": {
              "text/plain": {
                "schema": {
                  "\$ref": "#/components/schemas/SettingsDtoClientResponse"
                }
              },
              "application/json": {
                "schema": {
                  "\$ref": "#/components/schemas/SettingsDtoClientResponse"
                }
              },
              "text/json": {
                "schema": {
                  "\$ref": "#/components/schemas/SettingsDtoClientResponse"
                }
              }
            }
          }
        }
      },
      "post": {
        "tags": ["Settings"],
        "requestBody": {
          "content": {
            "application/json": {
              "schema": {"\$ref": "#/components/schemas/SettingsForm"}
            },
            "text/json": {
              "schema": {"\$ref": "#/components/schemas/SettingsForm"}
            },
            "application/*+json": {
              "schema": {"\$ref": "#/components/schemas/SettingsForm"}
            }
          }
        },
        "responses": {
          "200": {
            "description": "Success",
            "content": {
              "text/plain": {
                "schema": {
                  "\$ref": "#/components/schemas/SettingsClientResponse"
                }
              },
              "application/json": {
                "schema": {
                  "\$ref": "#/components/schemas/SettingsClientResponse"
                }
              },
              "text/json": {
                "schema": {
                  "\$ref": "#/components/schemas/SettingsClientResponse"
                }
              }
            }
          }
        }
      }
    },
    "/api/Videos": {
      "get": {
        "tags": ["Videos"],
        "parameters": [
          {
            "name": "lang",
            "in": "query",
            "schema": {"pattern": "ar|en|ku", "type": "string"}
          },
          {
            "name": "PageNumber",
            "in": "query",
            "schema": {"type": "integer", "format": "int32"}
          },
          {
            "name": "PageSize",
            "in": "query",
            "schema": {"type": "integer", "format": "int32"}
          }
        ],
        "responses": {
          "200": {
            "description": "Success",
            "content": {
              "text/plain": {
                "schema": {
                  "\$ref": "#/components/schemas/VideosDtoListPagedResponse"
                }
              },
              "application/json": {
                "schema": {
                  "\$ref": "#/components/schemas/VideosDtoListPagedResponse"
                }
              },
              "text/json": {
                "schema": {
                  "\$ref": "#/components/schemas/VideosDtoListPagedResponse"
                }
              }
            }
          }
        }
      },
      "post": {
        "tags": ["Videos"],
        "requestBody": {
          "content": {
            "application/json": {
              "schema": {"\$ref": "#/components/schemas/VideosForm"}
            },
            "text/json": {
              "schema": {"\$ref": "#/components/schemas/VideosForm"}
            },
            "application/*+json": {
              "schema": {"\$ref": "#/components/schemas/VideosForm"}
            }
          }
        },
        "responses": {
          "200": {
            "description": "Success",
            "content": {
              "text/plain": {
                "schema": {"\$ref": "#/components/schemas/VideosClientResponse"}
              },
              "application/json": {
                "schema": {"\$ref": "#/components/schemas/VideosClientResponse"}
              },
              "text/json": {
                "schema": {"\$ref": "#/components/schemas/VideosClientResponse"}
              }
            }
          }
        }
      }
    },
    "/api/Videos/{id}": {
      "get": {
        "tags": ["Videos"],
        "parameters": [
          {
            "name": "id",
            "in": "path",
            "required": true,
            "schema": {"type": "string", "format": "uuid"}
          }
        ],
        "responses": {
          "200": {
            "description": "Success",
            "content": {
              "text/plain": {
                "schema": {
                  "\$ref": "#/components/schemas/VideosDtoClientResponse"
                }
              },
              "application/json": {
                "schema": {
                  "\$ref": "#/components/schemas/VideosDtoClientResponse"
                }
              },
              "text/json": {
                "schema": {
                  "\$ref": "#/components/schemas/VideosDtoClientResponse"
                }
              }
            }
          }
        }
      },
      "put": {
        "tags": ["Videos"],
        "parameters": [
          {
            "name": "id",
            "in": "path",
            "required": true,
            "schema": {"type": "string", "format": "uuid"}
          }
        ],
        "requestBody": {
          "content": {
            "application/json": {
              "schema": {"\$ref": "#/components/schemas/VideosForm"}
            },
            "text/json": {
              "schema": {"\$ref": "#/components/schemas/VideosForm"}
            },
            "application/*+json": {
              "schema": {"\$ref": "#/components/schemas/VideosForm"}
            }
          }
        },
        "responses": {
          "200": {
            "description": "Success",
            "content": {
              "text/plain": {
                "schema": {"\$ref": "#/components/schemas/VideosClientResponse"}
              },
              "application/json": {
                "schema": {"\$ref": "#/components/schemas/VideosClientResponse"}
              },
              "text/json": {
                "schema": {"\$ref": "#/components/schemas/VideosClientResponse"}
              }
            }
          }
        }
      },
      "delete": {
        "tags": ["Videos"],
        "parameters": [
          {
            "name": "id",
            "in": "path",
            "required": true,
            "schema": {"type": "string", "format": "uuid"}
          }
        ],
        "responses": {
          "200": {"description": "Success"}
        }
      }
    }
  },
  "components": {
    "schemas": {
      "Blog": {
        "type": "object",
        "properties": {
          "id": {"type": "string", "format": "uuid"},
          "title": {"type": "string", "nullable": true},
          "content": {"type": "string", "nullable": true},
          "shortInfo": {"type": "string", "nullable": true},
          "photo": {"type": "string", "nullable": true},
          "deletedAt": {
            "type": "string",
            "format": "date-time",
            "nullable": true
          },
          "createdAt": {"type": "string", "format": "date-time"},
          "updatedAt": {
            "type": "string",
            "format": "date-time",
            "nullable": true
          },
          "blogCategoryId": {"type": "string", "format": "uuid"}
        },
        "additionalProperties": false
      },
      "BlogCategory": {
        "type": "object",
        "properties": {
          "id": {"type": "string", "format": "uuid"},
          "name_ar": {"type": "string", "nullable": true},
          "name_en": {"type": "string", "nullable": true},
          "name_ku": {"type": "string", "nullable": true},
          "deletedAt": {
            "type": "string",
            "format": "date-time",
            "nullable": true
          },
          "createdAt": {"type": "string", "format": "date-time"},
          "updatedAt": {
            "type": "string",
            "format": "date-time",
            "nullable": true
          }
        },
        "additionalProperties": false
      },
      "BlogCategoryClientResponse": {
        "type": "object",
        "properties": {
          "message": {"type": "string", "nullable": true},
          "data": {"\$ref": "#/components/schemas/BlogCategory"},
          "error": {"type": "boolean"}
        },
        "additionalProperties": false
      },
      "BlogCategoryDto": {
        "type": "object",
        "properties": {
          "id": {"type": "string", "format": "uuid"},
          "name_ar": {"type": "string", "nullable": true},
          "name_en": {"type": "string", "nullable": true},
          "name_ku": {"type": "string", "nullable": true},
          "blogs": {
            "type": "array",
            "items": {"\$ref": "#/components/schemas/Blog"},
            "nullable": true
          }
        },
        "additionalProperties": false
      },
      "BlogCategoryDtoClientResponse": {
        "type": "object",
        "properties": {
          "message": {"type": "string", "nullable": true},
          "data": {"\$ref": "#/components/schemas/BlogCategoryDto"},
          "error": {"type": "boolean"}
        },
        "additionalProperties": false
      },
      "BlogCategoryDtoListClientResponse": {
        "type": "object",
        "properties": {
          "message": {"type": "string", "nullable": true},
          "data": {
            "type": "array",
            "items": {"\$ref": "#/components/schemas/BlogCategoryDto"},
            "nullable": true
          },
          "error": {"type": "boolean"}
        },
        "additionalProperties": false
      },
      "BlogCategoryForm": {
        "type": "object",
        "properties": {
          "name_ar": {"type": "string", "nullable": true},
          "name_en": {"type": "string", "nullable": true},
          "name_ku": {"type": "string", "nullable": true}
        },
        "additionalProperties": false
      },
      "BlogDto": {
        "type": "object",
        "properties": {
          "id": {"type": "string", "format": "uuid"},
          "title": {"type": "string", "nullable": true},
          "content": {"type": "string", "nullable": true},
          "shortInfo": {"type": "string", "nullable": true},
          "photo": {"type": "string", "nullable": true},
          "blogCategoryId": {"type": "string", "format": "uuid"},
          "blogCategoryName_ar": {"type": "string", "nullable": true},
          "blogCategoryName_en": {"type": "string", "nullable": true},
          "blogCategoryName_ku": {"type": "string", "nullable": true},
          "createdAt": {"type": "string", "format": "date-time"}
        },
        "additionalProperties": false
      },
      "BlogDtoListPagedResponse": {
        "type": "object",
        "properties": {
          "message": {"type": "string", "nullable": true},
          "data": {
            "type": "array",
            "items": {"\$ref": "#/components/schemas/BlogDto"},
            "nullable": true
          },
          "error": {"type": "boolean"},
          "pageNumber": {"type": "integer", "format": "int32"},
          "pageSize": {"type": "integer", "format": "int32"},
          "totalPages": {"type": "integer", "format": "int32"},
          "totalRecords": {"type": "integer", "format": "int32"}
        },
        "additionalProperties": false
      },
      "BlogForm": {
        "required": ["blogCategoryId", "content", "shortInfo", "title"],
        "type": "object",
        "properties": {
          "title": {"type": "string"},
          "content": {"type": "string"},
          "shortInfo": {"type": "string"},
          "photo": {"type": "string", "nullable": true},
          "blogCategoryId": {"type": "string", "format": "uuid"}
        },
        "additionalProperties": false
      },
      "City": {
        "type": "object",
        "properties": {
          "id": {"type": "string", "format": "uuid"},
          "name": {"type": "string", "nullable": true},
          "countryId": {"type": "string", "format": "uuid", "nullable": true},
          "deletedAt": {
            "type": "string",
            "format": "date-time",
            "nullable": true
          },
          "createdAt": {"type": "string", "format": "date-time"},
          "updatedAt": {
            "type": "string",
            "format": "date-time",
            "nullable": true
          }
        },
        "additionalProperties": false
      },
      "CityClientResponse": {
        "type": "object",
        "properties": {
          "message": {"type": "string", "nullable": true},
          "data": {"\$ref": "#/components/schemas/City"},
          "error": {"type": "boolean"}
        },
        "additionalProperties": false
      },
      "CityDto": {
        "type": "object",
        "properties": {
          "id": {"type": "string", "format": "uuid"},
          "name": {"type": "string", "nullable": true},
          "countryId": {"type": "string", "format": "uuid", "nullable": true}
        },
        "additionalProperties": false
      },
      "CityDtoClientResponse": {
        "type": "object",
        "properties": {
          "message": {"type": "string", "nullable": true},
          "data": {"\$ref": "#/components/schemas/CityDto"},
          "error": {"type": "boolean"}
        },
        "additionalProperties": false
      },
      "CityDtoListPagedResponse": {
        "type": "object",
        "properties": {
          "message": {"type": "string", "nullable": true},
          "data": {
            "type": "array",
            "items": {"\$ref": "#/components/schemas/CityDto"},
            "nullable": true
          },
          "error": {"type": "boolean"},
          "pageNumber": {"type": "integer", "format": "int32"},
          "pageSize": {"type": "integer", "format": "int32"},
          "totalPages": {"type": "integer", "format": "int32"},
          "totalRecords": {"type": "integer", "format": "int32"}
        },
        "additionalProperties": false
      },
      "CityForm": {
        "required": ["countryId", "name"],
        "type": "object",
        "properties": {
          "name": {"type": "string"},
          "countryId": {"type": "string", "format": "uuid"}
        },
        "additionalProperties": false
      },
      "Country": {
        "type": "object",
        "properties": {
          "id": {"type": "string", "format": "uuid"},
          "name": {"type": "string", "nullable": true},
          "deletedAt": {
            "type": "string",
            "format": "date-time",
            "nullable": true
          },
          "createdAt": {"type": "string", "format": "date-time"},
          "updatedAt": {
            "type": "string",
            "format": "date-time",
            "nullable": true
          }
        },
        "additionalProperties": false
      },
      "CountryClientResponse": {
        "type": "object",
        "properties": {
          "message": {"type": "string", "nullable": true},
          "data": {"\$ref": "#/components/schemas/Country"},
          "error": {"type": "boolean"}
        },
        "additionalProperties": false
      },
      "CountryDto": {
        "type": "object",
        "properties": {
          "id": {"type": "string", "format": "uuid"},
          "name": {"type": "string", "nullable": true},
          "cities": {
            "type": "array",
            "items": {"\$ref": "#/components/schemas/CityDto"},
            "nullable": true
          }
        },
        "additionalProperties": false
      },
      "CountryDtoClientResponse": {
        "type": "object",
        "properties": {
          "message": {"type": "string", "nullable": true},
          "data": {"\$ref": "#/components/schemas/CountryDto"},
          "error": {"type": "boolean"}
        },
        "additionalProperties": false
      },
      "CountryDtoListPagedResponse": {
        "type": "object",
        "properties": {
          "message": {"type": "string", "nullable": true},
          "data": {
            "type": "array",
            "items": {"\$ref": "#/components/schemas/CountryDto"},
            "nullable": true
          },
          "error": {"type": "boolean"},
          "pageNumber": {"type": "integer", "format": "int32"},
          "pageSize": {"type": "integer", "format": "int32"},
          "totalPages": {"type": "integer", "format": "int32"},
          "totalRecords": {"type": "integer", "format": "int32"}
        },
        "additionalProperties": false
      },
      "CountryForm": {
        "required": ["name"],
        "type": "object",
        "properties": {
          "name": {"type": "string"}
        },
        "additionalProperties": false
      },
      "Features": {
        "type": "object",
        "properties": {
          "id": {"type": "string", "format": "uuid"},
          "content": {"type": "string", "nullable": true},
          "deletedAt": {
            "type": "string",
            "format": "date-time",
            "nullable": true
          },
          "createdAt": {"type": "string", "format": "date-time"},
          "updatedAt": {
            "type": "string",
            "format": "date-time",
            "nullable": true
          }
        },
        "additionalProperties": false
      },
      "FeaturesClientResponse": {
        "type": "object",
        "properties": {
          "message": {"type": "string", "nullable": true},
          "data": {"\$ref": "#/components/schemas/Features"},
          "error": {"type": "boolean"}
        },
        "additionalProperties": false
      },
      "FeaturesDto": {
        "type": "object",
        "properties": {
          "id": {"type": "string", "format": "uuid"},
          "content": {"type": "string", "nullable": true}
        },
        "additionalProperties": false
      },
      "FeaturesDtoClientResponse": {
        "type": "object",
        "properties": {
          "message": {"type": "string", "nullable": true},
          "data": {"\$ref": "#/components/schemas/FeaturesDto"},
          "error": {"type": "boolean"}
        },
        "additionalProperties": false
      },
      "FeaturesForm": {
        "required": ["content"],
        "type": "object",
        "properties": {
          "content": {"type": "string"}
        },
        "additionalProperties": false
      },
      "History": {
        "type": "object",
        "properties": {
          "id": {"type": "string", "format": "uuid"},
          "content": {"type": "string", "nullable": true},
          "deletedAt": {
            "type": "string",
            "format": "date-time",
            "nullable": true
          },
          "createdAt": {"type": "string", "format": "date-time"},
          "updatedAt": {
            "type": "string",
            "format": "date-time",
            "nullable": true
          }
        },
        "additionalProperties": false
      },
      "HistoryClientResponse": {
        "type": "object",
        "properties": {
          "message": {"type": "string", "nullable": true},
          "data": {"\$ref": "#/components/schemas/History"},
          "error": {"type": "boolean"}
        },
        "additionalProperties": false
      },
      "HistoryDto": {
        "type": "object",
        "properties": {
          "id": {"type": "string", "format": "uuid"},
          "content": {"type": "string", "nullable": true}
        },
        "additionalProperties": false
      },
      "HistoryDtoClientResponse": {
        "type": "object",
        "properties": {
          "message": {"type": "string", "nullable": true},
          "data": {"\$ref": "#/components/schemas/HistoryDto"},
          "error": {"type": "boolean"}
        },
        "additionalProperties": false
      },
      "HistoryForm": {
        "required": ["content"],
        "type": "object",
        "properties": {
          "content": {"type": "string"}
        },
        "additionalProperties": false
      },
      "LoginFrom": {
        "required": ["password", "usernameOrPhone"],
        "type": "object",
        "properties": {
          "usernameOrPhone": {"type": "string"},
          "password": {"type": "string"}
        },
        "additionalProperties": false
      },
      "LoginResponse": {
        "type": "object",
        "properties": {
          "user": {"\$ref": "#/components/schemas/UserDto"},
          "token": {"type": "string", "nullable": true}
        },
        "additionalProperties": false
      },
      "Mail": {
        "type": "object",
        "properties": {
          "id": {"type": "string", "format": "uuid"},
          "from": {"type": "string", "nullable": true},
          "content": {"type": "string", "nullable": true},
          "fullName": {"type": "string", "nullable": true},
          "phoneNumber": {"type": "string", "nullable": true},
          "subject": {"type": "string", "nullable": true},
          "deletedAt": {
            "type": "string",
            "format": "date-time",
            "nullable": true
          },
          "createdAt": {"type": "string", "format": "date-time"},
          "updatedAt": {
            "type": "string",
            "format": "date-time",
            "nullable": true
          }
        },
        "additionalProperties": false
      },
      "MailClientResponse": {
        "type": "object",
        "properties": {
          "message": {"type": "string", "nullable": true},
          "data": {"\$ref": "#/components/schemas/Mail"},
          "error": {"type": "boolean"}
        },
        "additionalProperties": false
      },
      "MailDto": {
        "type": "object",
        "properties": {
          "id": {"type": "string", "format": "uuid"},
          "from": {"type": "string", "nullable": true},
          "content": {"type": "string", "nullable": true},
          "fullName": {"type": "string", "nullable": true},
          "phoneNumber": {"type": "string", "nullable": true},
          "subject": {"type": "string", "nullable": true},
          "deletedAt": {
            "type": "string",
            "format": "date-time",
            "nullable": true
          },
          "createdAt": {"type": "string", "format": "date-time"},
          "updatedAt": {
            "type": "string",
            "format": "date-time",
            "nullable": true
          }
        },
        "additionalProperties": false
      },
      "MailDtoClientResponse": {
        "type": "object",
        "properties": {
          "message": {"type": "string", "nullable": true},
          "data": {"\$ref": "#/components/schemas/MailDto"},
          "error": {"type": "boolean"}
        },
        "additionalProperties": false
      },
      "MailDtoListPagedResponse": {
        "type": "object",
        "properties": {
          "message": {"type": "string", "nullable": true},
          "data": {
            "type": "array",
            "items": {"\$ref": "#/components/schemas/MailDto"},
            "nullable": true
          },
          "error": {"type": "boolean"},
          "pageNumber": {"type": "integer", "format": "int32"},
          "pageSize": {"type": "integer", "format": "int32"},
          "totalPages": {"type": "integer", "format": "int32"},
          "totalRecords": {"type": "integer", "format": "int32"}
        },
        "additionalProperties": false
      },
      "MailForm": {
        "required": ["content", "from", "fullName", "phoneNumber", "subject"],
        "type": "object",
        "properties": {
          "from": {"type": "string"},
          "content": {"type": "string"},
          "fullName": {"type": "string"},
          "phoneNumber": {"type": "string"},
          "subject": {"type": "string"}
        },
        "additionalProperties": false
      },
      "News": {
        "type": "object",
        "properties": {
          "id": {"type": "string", "format": "uuid"},
          "title": {"type": "string", "nullable": true},
          "content": {"type": "string", "nullable": true},
          "shortInfo": {"type": "string", "nullable": true},
          "photo": {"type": "string", "nullable": true},
          "newsCategoryId": {"type": "string", "format": "uuid"},
          "deletedAt": {
            "type": "string",
            "format": "date-time",
            "nullable": true
          },
          "createdAt": {"type": "string", "format": "date-time"},
          "updatedAt": {
            "type": "string",
            "format": "date-time",
            "nullable": true
          }
        },
        "additionalProperties": false
      },
      "NewsCategory": {
        "type": "object",
        "properties": {
          "id": {"type": "string", "format": "uuid"},
          "name_ar": {"type": "string", "nullable": true},
          "name_en": {"type": "string", "nullable": true},
          "name_ku": {"type": "string", "nullable": true},
          "deletedAt": {
            "type": "string",
            "format": "date-time",
            "nullable": true
          },
          "createdAt": {"type": "string", "format": "date-time"},
          "updatedAt": {
            "type": "string",
            "format": "date-time",
            "nullable": true
          }
        },
        "additionalProperties": false
      },
      "NewsCategoryClientResponse": {
        "type": "object",
        "properties": {
          "message": {"type": "string", "nullable": true},
          "data": {"\$ref": "#/components/schemas/NewsCategory"},
          "error": {"type": "boolean"}
        },
        "additionalProperties": false
      },
      "NewsCategoryDto": {
        "type": "object",
        "properties": {
          "id": {"type": "string", "format": "uuid"},
          "name_ar": {"type": "string", "nullable": true},
          "name_en": {"type": "string", "nullable": true},
          "name_ku": {"type": "string", "nullable": true},
          "news": {
            "type": "array",
            "items": {"\$ref": "#/components/schemas/News"},
            "nullable": true
          }
        },
        "additionalProperties": false
      },
      "NewsCategoryDtoClientResponse": {
        "type": "object",
        "properties": {
          "message": {"type": "string", "nullable": true},
          "data": {"\$ref": "#/components/schemas/NewsCategoryDto"},
          "error": {"type": "boolean"}
        },
        "additionalProperties": false
      },
      "NewsCategoryDtoListClientResponse": {
        "type": "object",
        "properties": {
          "message": {"type": "string", "nullable": true},
          "data": {
            "type": "array",
            "items": {"\$ref": "#/components/schemas/NewsCategoryDto"},
            "nullable": true
          },
          "error": {"type": "boolean"}
        },
        "additionalProperties": false
      },
      "NewsCategoryForm": {
        "type": "object",
        "properties": {
          "name_ar": {"type": "string", "nullable": true},
          "name_en": {"type": "string", "nullable": true},
          "name_ku": {"type": "string", "nullable": true}
        },
        "additionalProperties": false
      },
      "NewsClientResponse": {
        "type": "object",
        "properties": {
          "message": {"type": "string", "nullable": true},
          "data": {"\$ref": "#/components/schemas/News"},
          "error": {"type": "boolean"}
        },
        "additionalProperties": false
      },
      "NewsDto": {
        "type": "object",
        "properties": {
          "id": {"type": "string", "format": "uuid"},
          "title": {"type": "string", "nullable": true},
          "content": {"type": "string", "nullable": true},
          "shortInfo": {"type": "string", "nullable": true},
          "photo": {"type": "string", "nullable": true},
          "newsCategoryId": {"type": "string", "format": "uuid"},
          "newsCategoryName_ar": {"type": "string", "nullable": true},
          "newsCategoryName_en": {"type": "string", "nullable": true},
          "newsCategoryName_ku": {"type": "string", "nullable": true},
          "createdAt": {"type": "string", "format": "date-time"}
        },
        "additionalProperties": false
      },
      "NewsDtoClientResponse": {
        "type": "object",
        "properties": {
          "message": {"type": "string", "nullable": true},
          "data": {"\$ref": "#/components/schemas/NewsDto"},
          "error": {"type": "boolean"}
        },
        "additionalProperties": false
      },
      "NewsDtoListPagedResponse": {
        "type": "object",
        "properties": {
          "message": {"type": "string", "nullable": true},
          "data": {
            "type": "array",
            "items": {"\$ref": "#/components/schemas/NewsDto"},
            "nullable": true
          },
          "error": {"type": "boolean"},
          "pageNumber": {"type": "integer", "format": "int32"},
          "pageSize": {"type": "integer", "format": "int32"},
          "totalPages": {"type": "integer", "format": "int32"},
          "totalRecords": {"type": "integer", "format": "int32"}
        },
        "additionalProperties": false
      },
      "NewsForm": {
        "required": [
          "content",
          "newsCategoryId",
          "photo",
          "shortInfo",
          "title"
        ],
        "type": "object",
        "properties": {
          "title": {"type": "string"},
          "content": {"type": "string"},
          "shortInfo": {"type": "string"},
          "photo": {"type": "string"},
          "newsCategoryId": {"type": "string", "format": "uuid"}
        },
        "additionalProperties": false
      },
      "NewsLetter": {
        "type": "object",
        "properties": {
          "id": {"type": "string", "format": "uuid"},
          "email": {"type": "string", "nullable": true},
          "deletedAt": {
            "type": "string",
            "format": "date-time",
            "nullable": true
          },
          "createdAt": {"type": "string", "format": "date-time"},
          "updatedAt": {
            "type": "string",
            "format": "date-time",
            "nullable": true
          }
        },
        "additionalProperties": false
      },
      "NewsLetterClientResponse": {
        "type": "object",
        "properties": {
          "message": {"type": "string", "nullable": true},
          "data": {"\$ref": "#/components/schemas/NewsLetter"},
          "error": {"type": "boolean"}
        },
        "additionalProperties": false
      },
      "NewsLetterDto": {
        "type": "object",
        "properties": {
          "id": {"type": "string", "format": "uuid"},
          "email": {"type": "string", "nullable": true}
        },
        "additionalProperties": false
      },
      "NewsLetterDtoListPagedResponse": {
        "type": "object",
        "properties": {
          "message": {"type": "string", "nullable": true},
          "data": {
            "type": "array",
            "items": {"\$ref": "#/components/schemas/NewsLetterDto"},
            "nullable": true
          },
          "error": {"type": "boolean"},
          "pageNumber": {"type": "integer", "format": "int32"},
          "pageSize": {"type": "integer", "format": "int32"},
          "totalPages": {"type": "integer", "format": "int32"},
          "totalRecords": {"type": "integer", "format": "int32"}
        },
        "additionalProperties": false
      },
      "NewsLetterForm": {
        "required": ["email"],
        "type": "object",
        "properties": {
          "email": {"type": "string"}
        },
        "additionalProperties": false
      },
      "Office": {
        "type": "object",
        "properties": {
          "id": {"type": "string", "format": "uuid"},
          "name_ar": {"type": "string", "nullable": true},
          "name_en": {"type": "string", "nullable": true},
          "name_ku": {"type": "string", "nullable": true},
          "lat": {"type": "number", "format": "float", "nullable": true},
          "lang": {"type": "number", "format": "float", "nullable": true},
          "location_ar": {"type": "string", "nullable": true},
          "location_en": {"type": "string", "nullable": true},
          "location_ku": {"type": "string", "nullable": true},
          "allowedDistrict_en": {"type": "string", "nullable": true},
          "allowedDistrict_ar": {"type": "string", "nullable": true},
          "allowedDistrict_ku": {"type": "string", "nullable": true},
          "deletedAt": {
            "type": "string",
            "format": "date-time",
            "nullable": true
          },
          "createdAt": {"type": "string", "format": "date-time"},
          "updatedAt": {
            "type": "string",
            "format": "date-time",
            "nullable": true
          }
        },
        "additionalProperties": false
      },
      "OfficeClientResponse": {
        "type": "object",
        "properties": {
          "message": {"type": "string", "nullable": true},
          "data": {"\$ref": "#/components/schemas/Office"},
          "error": {"type": "boolean"}
        },
        "additionalProperties": false
      },
      "OfficeDto": {
        "type": "object",
        "properties": {
          "id": {"type": "string", "format": "uuid"},
          "name_ar": {"type": "string", "nullable": true},
          "name_en": {"type": "string", "nullable": true},
          "name_ku": {"type": "string", "nullable": true},
          "lat": {"type": "number", "format": "float", "nullable": true},
          "lang": {"type": "number", "format": "float", "nullable": true},
          "createdAt": {"type": "string", "format": "date-time"},
          "location_ar": {"type": "string", "nullable": true},
          "location_en": {"type": "string", "nullable": true},
          "location_ku": {"type": "string", "nullable": true},
          "allowedDistrict_en": {"type": "string", "nullable": true},
          "allowedDistrict_ar": {"type": "string", "nullable": true},
          "allowedDistrict_ku": {"type": "string", "nullable": true}
        },
        "additionalProperties": false
      },
      "OfficeDtoClientResponse": {
        "type": "object",
        "properties": {
          "message": {"type": "string", "nullable": true},
          "data": {"\$ref": "#/components/schemas/OfficeDto"},
          "error": {"type": "boolean"}
        },
        "additionalProperties": false
      },
      "OfficeDtoListPagedResponse": {
        "type": "object",
        "properties": {
          "message": {"type": "string", "nullable": true},
          "data": {
            "type": "array",
            "items": {"\$ref": "#/components/schemas/OfficeDto"},
            "nullable": true
          },
          "error": {"type": "boolean"},
          "pageNumber": {"type": "integer", "format": "int32"},
          "pageSize": {"type": "integer", "format": "int32"},
          "totalPages": {"type": "integer", "format": "int32"},
          "totalRecords": {"type": "integer", "format": "int32"}
        },
        "additionalProperties": false
      },
      "OfficeForm": {
        "type": "object",
        "properties": {
          "name_ar": {"type": "string", "nullable": true},
          "name_en": {"type": "string", "nullable": true},
          "name_ku": {"type": "string", "nullable": true},
          "lat": {"type": "number", "format": "float", "nullable": true},
          "lang": {"type": "number", "format": "float", "nullable": true},
          "location_ar": {"type": "string", "nullable": true},
          "location_en": {"type": "string", "nullable": true},
          "location_ku": {"type": "string", "nullable": true},
          "allowedDistrict_en": {"type": "string", "nullable": true},
          "allowedDistrict_ar": {"type": "string", "nullable": true},
          "allowedDistrict_ku": {"type": "string", "nullable": true}
        },
        "additionalProperties": false
      },
      "Page": {
        "type": "object",
        "properties": {
          "id": {"type": "string", "format": "uuid"},
          "title": {"type": "string", "nullable": true},
          "content": {"type": "string", "nullable": true},
          "deletedAt": {
            "type": "string",
            "format": "date-time",
            "nullable": true
          },
          "createdAt": {"type": "string", "format": "date-time"},
          "updatedAt": {
            "type": "string",
            "format": "date-time",
            "nullable": true
          }
        },
        "additionalProperties": false
      },
      "PageClientResponse": {
        "type": "object",
        "properties": {
          "message": {"type": "string", "nullable": true},
          "data": {"\$ref": "#/components/schemas/Page"},
          "error": {"type": "boolean"}
        },
        "additionalProperties": false
      },
      "PageDto": {
        "type": "object",
        "properties": {
          "id": {"type": "string", "format": "uuid"},
          "title": {"type": "string", "nullable": true},
          "content": {"type": "string", "nullable": true}
        },
        "additionalProperties": false
      },
      "PageDtoClientResponse": {
        "type": "object",
        "properties": {
          "message": {"type": "string", "nullable": true},
          "data": {"\$ref": "#/components/schemas/PageDto"},
          "error": {"type": "boolean"}
        },
        "additionalProperties": false
      },
      "PageDtoListPagedResponse": {
        "type": "object",
        "properties": {
          "message": {"type": "string", "nullable": true},
          "data": {
            "type": "array",
            "items": {"\$ref": "#/components/schemas/PageDto"},
            "nullable": true
          },
          "error": {"type": "boolean"},
          "pageNumber": {"type": "integer", "format": "int32"},
          "pageSize": {"type": "integer", "format": "int32"},
          "totalPages": {"type": "integer", "format": "int32"},
          "totalRecords": {"type": "integer", "format": "int32"}
        },
        "additionalProperties": false
      },
      "PageForm": {
        "type": "object",
        "properties": {
          "title": {"type": "string", "nullable": true},
          "content": {"type": "string", "nullable": true}
        },
        "additionalProperties": false
      },
      "PassportImage": {
        "type": "object",
        "properties": {
          "id": {"type": "string", "format": "uuid"},
          "photos": {
            "type": "array",
            "items": {"type": "string"},
            "nullable": true
          },
          "deletedAt": {
            "type": "string",
            "format": "date-time",
            "nullable": true
          },
          "createdAt": {"type": "string", "format": "date-time"},
          "updatedAt": {
            "type": "string",
            "format": "date-time",
            "nullable": true
          }
        },
        "additionalProperties": false
      },
      "PassportImageClientResponse": {
        "type": "object",
        "properties": {
          "message": {"type": "string", "nullable": true},
          "data": {"\$ref": "#/components/schemas/PassportImage"},
          "error": {"type": "boolean"}
        },
        "additionalProperties": false
      },
      "PassportInstructions": {
        "type": "object",
        "properties": {
          "id": {"type": "string", "format": "uuid"},
          "ppType": {"type": "integer", "format": "int32", "nullable": true},
          "status": {"type": "integer", "format": "int32", "nullable": true},
          "instructions": {"type": "string", "nullable": true},
          "requirement": {"type": "string", "nullable": true},
          "deletedAt": {
            "type": "string",
            "format": "date-time",
            "nullable": true
          },
          "createdAt": {"type": "string", "format": "date-time"},
          "updatedAt": {
            "type": "string",
            "format": "date-time",
            "nullable": true
          }
        },
        "additionalProperties": false
      },
      "PassportInstructionsClientResponse": {
        "type": "object",
        "properties": {
          "message": {"type": "string", "nullable": true},
          "data": {"\$ref": "#/components/schemas/PassportInstructions"},
          "error": {"type": "boolean"}
        },
        "additionalProperties": false
      },
      "PassportInstructionsDto": {
        "type": "object",
        "properties": {
          "id": {"type": "string", "format": "uuid"},
          "ppType": {"type": "integer", "format": "int32", "nullable": true},
          "status": {"type": "integer", "format": "int32", "nullable": true},
          "instructions": {"type": "string", "nullable": true},
          "requirement": {"type": "string", "nullable": true}
        },
        "additionalProperties": false
      },
      "PassportInstructionsDtoClientResponse": {
        "type": "object",
        "properties": {
          "message": {"type": "string", "nullable": true},
          "data": {"\$ref": "#/components/schemas/PassportInstructionsDto"},
          "error": {"type": "boolean"}
        },
        "additionalProperties": false
      },
      "PassportInstructionsDtoListPagedResponse": {
        "type": "object",
        "properties": {
          "message": {"type": "string", "nullable": true},
          "data": {
            "type": "array",
            "items": {"\$ref": "#/components/schemas/PassportInstructionsDto"},
            "nullable": true
          },
          "error": {"type": "boolean"},
          "pageNumber": {"type": "integer", "format": "int32"},
          "pageSize": {"type": "integer", "format": "int32"},
          "totalPages": {"type": "integer", "format": "int32"},
          "totalRecords": {"type": "integer", "format": "int32"}
        },
        "additionalProperties": false
      },
      "PassportInstructionsForm": {
        "required": ["ppType", "status"],
        "type": "object",
        "properties": {
          "ppType": {
            "maximum": 5,
            "minimum": 1,
            "type": "integer",
            "format": "int32"
          },
          "status": {
            "maximum": 4,
            "minimum": 1,
            "type": "integer",
            "format": "int32"
          },
          "instructions": {"type": "string", "nullable": true},
          "requirement": {"type": "string", "nullable": true}
        },
        "additionalProperties": false
      },
      "Settings": {
        "type": "object",
        "properties": {
          "id": {"type": "string", "format": "uuid"},
          "siteName": {"type": "string", "nullable": true},
          "siteDescription": {"type": "string", "nullable": true},
          "headerLogo": {"type": "string", "nullable": true},
          "footerLogo": {"type": "string", "nullable": true},
          "googlePlayUrl": {"type": "string", "nullable": true},
          "appStoreUrl": {"type": "string", "nullable": true},
          "videoUrl": {"type": "string", "nullable": true},
          "faceBookUrl": {"type": "string", "nullable": true},
          "instagramUrl": {"type": "string", "nullable": true},
          "twitterUrl": {"type": "string", "nullable": true},
          "youTubeUrl": {"type": "string", "nullable": true},
          "heroHeading_en": {"type": "string", "nullable": true},
          "heroSubheading_en": {"type": "string", "nullable": true},
          "heroButton_en": {"type": "string", "nullable": true},
          "heroHeading_ar": {"type": "string", "nullable": true},
          "heroSubheading_ar": {"type": "string", "nullable": true},
          "heroButton_ar": {"type": "string", "nullable": true},
          "heroHeading_ku": {"type": "string", "nullable": true},
          "heroSubheading_ku": {"type": "string", "nullable": true},
          "heroButton_ku": {"type": "string", "nullable": true},
          "interiorEmail": {"type": "string", "nullable": true},
          "interiorPhone": {"type": "string", "nullable": true},
          "passportsAffairsEmail": {"type": "string", "nullable": true},
          "passportsAffairsPhone": {"type": "string", "nullable": true},
          "civilStatusEmail": {"type": "string", "nullable": true},
          "civilStatusPhone": {"type": "string", "nullable": true},
          "location_en": {"type": "string", "nullable": true},
          "location_ar": {"type": "string", "nullable": true},
          "location_ku": {"type": "string", "nullable": true},
          "deletedAt": {
            "type": "string",
            "format": "date-time",
            "nullable": true
          },
          "createdAt": {"type": "string", "format": "date-time"},
          "updatedAt": {
            "type": "string",
            "format": "date-time",
            "nullable": true
          }
        },
        "additionalProperties": false
      },
      "SettingsClientResponse": {
        "type": "object",
        "properties": {
          "message": {"type": "string", "nullable": true},
          "data": {"\$ref": "#/components/schemas/Settings"},
          "error": {"type": "boolean"}
        },
        "additionalProperties": false
      },
      "SettingsDto": {
        "type": "object",
        "properties": {
          "id": {"type": "string", "format": "uuid"},
          "siteName": {"type": "string", "nullable": true},
          "siteDescription": {"type": "string", "nullable": true},
          "headerLogo": {"type": "string", "nullable": true},
          "footerLogo": {"type": "string", "nullable": true},
          "googlePlayUrl": {"type": "string", "nullable": true},
          "appStoreUrl": {"type": "string", "nullable": true},
          "faceBookUrl": {"type": "string", "nullable": true},
          "instagramUrl": {"type": "string", "nullable": true},
          "twitterUrl": {"type": "string", "nullable": true},
          "youTubeUrl": {"type": "string", "nullable": true},
          "heroHeading_en": {"type": "string", "nullable": true},
          "heroSubheading_en": {"type": "string", "nullable": true},
          "heroButton_en": {"type": "string", "nullable": true},
          "heroHeading_ar": {"type": "string", "nullable": true},
          "heroSubheading_ar": {"type": "string", "nullable": true},
          "heroButton_ar": {"type": "string", "nullable": true},
          "heroHeading_ku": {"type": "string", "nullable": true},
          "heroSubheading_ku": {"type": "string", "nullable": true},
          "heroButton_ku": {"type": "string", "nullable": true},
          "videoUrl": {"type": "string", "nullable": true},
          "interiorEmail": {"type": "string", "nullable": true},
          "nteriorEmail": {"type": "string", "nullable": true},
          "interiorPhone": {"type": "string", "nullable": true},
          "passportsAffairsEmail": {"type": "string", "nullable": true},
          "passportsAffairsPhone": {"type": "string", "nullable": true},
          "civilStatusEmail": {"type": "string", "nullable": true},
          "civilStatusPhone": {"type": "string", "nullable": true},
          "location_en": {"type": "string", "nullable": true},
          "location_ar": {"type": "string", "nullable": true},
          "location_ku": {"type": "string", "nullable": true}
        },
        "additionalProperties": false
      },
      "SettingsDtoClientResponse": {
        "type": "object",
        "properties": {
          "message": {"type": "string", "nullable": true},
          "data": {"\$ref": "#/components/schemas/SettingsDto"},
          "error": {"type": "boolean"}
        },
        "additionalProperties": false
      },
      "SettingsForm": {
        "required": [
          "civilStatusEmail",
          "civilStatusPhone",
          "faceBookUrl",
          "instagramUrl",
          "interiorEmail",
          "interiorPhone",
          "passportsAffairsEmail",
          "passportsAffairsPhone",
          "siteDescription",
          "siteName",
          "twitterUrl"
        ],
        "type": "object",
        "properties": {
          "siteName": {"type": "string"},
          "siteDescription": {"type": "string"},
          "headerLogo": {"type": "string", "nullable": true},
          "footerLogo": {"type": "string", "nullable": true},
          "googlePlayUrl": {"type": "string", "nullable": true},
          "appStoreUrl": {"type": "string", "nullable": true},
          "faceBookUrl": {"type": "string"},
          "instagramUrl": {"type": "string"},
          "twitterUrl": {"type": "string"},
          "youTubeUrl": {"type": "string", "nullable": true},
          "videoUrl": {"type": "string", "nullable": true},
          "heroHeading_en": {"type": "string", "nullable": true},
          "heroSubheading_en": {"type": "string", "nullable": true},
          "heroButton_en": {"type": "string", "nullable": true},
          "heroHeading_ar": {"type": "string", "nullable": true},
          "heroSubheading_ar": {"type": "string", "nullable": true},
          "heroButton_ar": {"type": "string", "nullable": true},
          "heroHeading_ku": {"type": "string", "nullable": true},
          "heroSubheading_ku": {"type": "string", "nullable": true},
          "heroButton_ku": {"type": "string", "nullable": true},
          "interiorEmail": {"type": "string"},
          "nteriorEmail": {"type": "string", "nullable": true},
          "interiorPhone": {"type": "string"},
          "passportsAffairsEmail": {"type": "string"},
          "passportsAffairsPhone": {"type": "string"},
          "civilStatusEmail": {"type": "string"},
          "civilStatusPhone": {"type": "string"},
          "location_en": {"type": "string", "nullable": true},
          "location_ar": {"type": "string", "nullable": true},
          "location_ku": {"type": "string", "nullable": true}
        },
        "additionalProperties": false
      },
      "StringClientResponse": {
        "type": "object",
        "properties": {
          "message": {"type": "string", "nullable": true},
          "data": {"type": "string", "nullable": true},
          "error": {"type": "boolean"}
        },
        "additionalProperties": false
      },
      "StringListClientResponse": {
        "type": "object",
        "properties": {
          "message": {"type": "string", "nullable": true},
          "data": {
            "type": "array",
            "items": {"type": "string"},
            "nullable": true
          },
          "error": {"type": "boolean"}
        },
        "additionalProperties": false
      },
      "UserDto": {
        "type": "object",
        "properties": {
          "id": {"type": "string", "format": "uuid"},
          "username": {"type": "string", "nullable": true},
          "phoneNumber": {"type": "string", "nullable": true},
          "role": {"type": "string", "nullable": true},
          "deletedAt": {
            "type": "string",
            "format": "date-time",
            "nullable": true
          },
          "createdAt": {"type": "string", "format": "date-time"},
          "updatedAt": {
            "type": "string",
            "format": "date-time",
            "nullable": true
          }
        },
        "additionalProperties": false
      },
      "Videos": {
        "type": "object",
        "properties": {
          "id": {"type": "string", "format": "uuid"},
          "url": {"type": "string", "nullable": true},
          "title_ar": {"type": "string", "nullable": true},
          "description_ar": {"type": "string", "nullable": true},
          "title_en": {"type": "string", "nullable": true},
          "description_en": {"type": "string", "nullable": true},
          "title_ku": {"type": "string", "nullable": true},
          "description_ku": {"type": "string", "nullable": true},
          "isHero": {"type": "boolean", "nullable": true},
          "videoLanguage": {"type": "string", "nullable": true},
          "deletedAt": {
            "type": "string",
            "format": "date-time",
            "nullable": true
          },
          "createdAt": {"type": "string", "format": "date-time"},
          "updatedAt": {
            "type": "string",
            "format": "date-time",
            "nullable": true
          }
        },
        "additionalProperties": false
      },
      "VideosClientResponse": {
        "type": "object",
        "properties": {
          "message": {"type": "string", "nullable": true},
          "data": {"\$ref": "#/components/schemas/Videos"},
          "error": {"type": "boolean"}
        },
        "additionalProperties": false
      },
      "VideosDto": {
        "type": "object",
        "properties": {
          "id": {"type": "string", "format": "uuid"},
          "url": {"type": "string", "nullable": true},
          "title_ar": {"type": "string", "nullable": true},
          "description_ar": {"type": "string", "nullable": true},
          "title_en": {"type": "string", "nullable": true},
          "description_en": {"type": "string", "nullable": true},
          "title_ku": {"type": "string", "nullable": true},
          "description_ku": {"type": "string", "nullable": true},
          "videoLanguage": {"type": "string", "nullable": true},
          "createdAt": {"type": "string", "format": "date-time"}
        },
        "additionalProperties": false
      },
      "VideosDtoClientResponse": {
        "type": "object",
        "properties": {
          "message": {"type": "string", "nullable": true},
          "data": {"\$ref": "#/components/schemas/VideosDto"},
          "error": {"type": "boolean"}
        },
        "additionalProperties": false
      },
      "VideosDtoListPagedResponse": {
        "type": "object",
        "properties": {
          "message": {"type": "string", "nullable": true},
          "data": {
            "type": "array",
            "items": {"\$ref": "#/components/schemas/VideosDto"},
            "nullable": true
          },
          "error": {"type": "boolean"},
          "pageNumber": {"type": "integer", "format": "int32"},
          "pageSize": {"type": "integer", "format": "int32"},
          "totalPages": {"type": "integer", "format": "int32"},
          "totalRecords": {"type": "integer", "format": "int32"}
        },
        "additionalProperties": false
      },
      "VideosForm": {
        "type": "object",
        "properties": {
          "url": {"type": "string", "nullable": true},
          "title_ar": {"type": "string", "nullable": true},
          "description_ar": {"type": "string", "nullable": true},
          "title_en": {"type": "string", "nullable": true},
          "description_en": {"type": "string", "nullable": true},
          "title_ku": {"type": "string", "nullable": true},
          "description_ku": {"type": "string", "nullable": true},
          "videoLanguage": {
            "pattern": "ar|en|ku",
            "type": "string",
            "nullable": true
          }
        },
        "additionalProperties": false
      }
    },
    "securitySchemes": {
      "Bearer": {
        "type": "http",
        "description": "Please enter token",
        "scheme": "bearer",
        "bearerFormat": "JWT"
      }
    }
  },
  "security": [
    {"Bearer": []}
  ]
};
