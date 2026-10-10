variable "bedrockagent_flows" {
  description = <<EOT
Map of bedrockagent_flows, attributes below
Required:
    - execution_role_arn
    - name
Optional:
    - customer_encryption_key_arn
    - description
    - region
    - tags
    - definition (block):
        - connection (optional, block):
            - configuration (optional, block):
                - conditional (optional, block):
                    - condition (required)
                - data (optional, block):
                    - source_output (required)
                    - target_input (required)
            - name (required)
            - source (required)
            - target (required)
            - type (required)
        - node (optional, block):
            - configuration (optional, block):
                - agent (optional, block):
                    - agent_alias_arn (required)
                - collector (optional, block):
                - condition (optional, block):
                    - condition (optional, block):
                        - expression (optional)
                        - name (required)
                - inline_code (optional, block):
                    - code (required)
                    - language (required)
                - input (optional, block):
                - iterator (optional, block):
                - knowledge_base (optional, block):
                    - guardrail_configuration (optional, block):
                        - guardrail_identifier (required)
                        - guardrail_version (required)
                    - inference_configuration (optional, block):
                        - text (optional, block):
                            - max_tokens (optional)
                            - stop_sequences (optional)
                            - temperature (optional)
                            - top_p (optional)
                    - knowledge_base_id (required)
                    - model_id (required)
                    - number_of_results (optional)
                - lambda_function (optional, block):
                    - lambda_arn (required)
                - lex (optional, block):
                    - bot_alias_arn (required)
                    - locale_id (required)
                - output (optional, block):
                - prompt (optional, block):
                    - guardrail_configuration (optional, block):
                        - guardrail_identifier (required)
                        - guardrail_version (required)
                    - source_configuration (optional, block):
                        - inline (optional, block):
                            - additional_model_request_fields (optional)
                            - inference_configuration (optional, block):
                                - text (optional, block):
                                    - max_tokens (optional)
                                    - stop_sequences (optional)
                                    - temperature (optional)
                                    - top_p (optional)
                            - model_id (required)
                            - template_configuration (optional, block):
                                - chat (optional, block):
                                    - input_variable (optional, block):
                                        - name (required)
                                    - message (optional, block):
                                        - content (optional, block):
                                            - cache_point (optional, block):
                                                - type (required)
                                            - text (optional)
                                        - role (required)
                                    - system (optional, block):
                                        - cache_point (optional, block):
                                            - type (required)
                                        - text (optional)
                                    - tool_configuration (optional, block):
                                        - tool (optional, block):
                                            - cache_point (optional, block):
                                                - type (required)
                                            - tool_spec (optional, block):
                                                - description (optional)
                                                - input_schema (optional, block):
                                                    - json (optional)
                                                - name (required)
                                        - tool_choice (optional, block):
                                            - any (optional, block):
                                            - auto (optional, block):
                                            - tool (optional, block):
                                                - name (required)
                                - text (optional, block):
                                    - cache_point (optional, block):
                                        - type (required)
                                    - input_variable (optional, block):
                                        - name (required)
                                    - text (required)
                            - template_type (required)
                        - resource (optional, block):
                            - prompt_arn (required)
                - retrieval (optional, block):
                    - service_configuration (optional, block):
                        - s3 (optional, block):
                            - bucket_name (required)
                - storage (optional, block):
                    - service_configuration (optional, block):
                        - s3 (optional, block):
                            - bucket_name (required)
            - input (optional, block):
                - category (optional)
                - expression (required)
                - name (required)
                - type (required)
            - name (required)
            - output (optional, block):
                - name (required)
                - type (required)
            - type (required)
EOT

  type = map(object({
    execution_role_arn          = string
    name                        = string
    customer_encryption_key_arn = optional(string)
    description                 = optional(string)
    region                      = optional(string)
    tags                        = optional(map(string))
    definition = optional(list(object({
      connection = optional(list(object({
        configuration = optional(list(object({
          conditional = optional(list(object({
            condition = string
          })))
          data = optional(list(object({
            source_output = string
            target_input  = string
          })))
        })))
        name   = string
        source = string
        target = string
        type   = string
      })))
      node = optional(list(object({
        configuration = optional(list(object({
          agent = optional(list(object({
            agent_alias_arn = string
          })))
          collector = optional(list(object({
          })))
          condition = optional(list(object({
            condition = optional(list(object({
              expression = optional(string)
              name       = string
            })))
          })))
          inline_code = optional(list(object({
            code     = string
            language = string
          })))
          input = optional(list(object({
          })))
          iterator = optional(list(object({
          })))
          knowledge_base = optional(list(object({
            guardrail_configuration = optional(list(object({
              guardrail_identifier = string
              guardrail_version    = string
            })))
            inference_configuration = optional(list(object({
              text = optional(list(object({
                max_tokens     = optional(number)
                stop_sequences = optional(list(string))
                temperature    = optional(number)
                top_p          = optional(number)
              })))
            })))
            knowledge_base_id = string
            model_id          = string
            number_of_results = optional(number)
          })))
          lambda_function = optional(list(object({
            lambda_arn = string
          })))
          lex = optional(list(object({
            bot_alias_arn = string
            locale_id     = string
          })))
          output = optional(list(object({
          })))
          prompt = optional(list(object({
            guardrail_configuration = optional(list(object({
              guardrail_identifier = string
              guardrail_version    = string
            })))
            source_configuration = optional(list(object({
              inline = optional(list(object({
                additional_model_request_fields = optional(string)
                inference_configuration = optional(list(object({
                  text = optional(list(object({
                    max_tokens     = optional(number)
                    stop_sequences = optional(list(string))
                    temperature    = optional(number)
                    top_p          = optional(number)
                  })))
                })))
                model_id = string
                template_configuration = optional(list(object({
                  chat = optional(list(object({
                    input_variable = optional(list(object({
                      name = string
                    })))
                    message = optional(list(object({
                      content = optional(list(object({
                        cache_point = optional(list(object({
                          type = string
                        })))
                        text = optional(string)
                      })))
                      role = string
                    })))
                    system = optional(list(object({
                      cache_point = optional(list(object({
                        type = string
                      })))
                      text = optional(string)
                    })))
                    tool_configuration = optional(list(object({
                      tool = optional(list(object({
                        cache_point = optional(list(object({
                          type = string
                        })))
                        tool_spec = optional(list(object({
                          description = optional(string)
                          input_schema = optional(list(object({
                            json = optional(string)
                          })))
                          name = string
                        })))
                      })))
                      tool_choice = optional(list(object({
                        any = optional(list(object({
                        })))
                        auto = optional(list(object({
                        })))
                        tool = optional(list(object({
                          name = string
                        })))
                      })))
                    })))
                  })))
                  text = optional(list(object({
                    cache_point = optional(list(object({
                      type = string
                    })))
                    input_variable = optional(list(object({
                      name = string
                    })))
                    text = string
                  })))
                })))
                template_type = string
              })))
              resource = optional(list(object({
                prompt_arn = string
              })))
            })))
          })))
          retrieval = optional(list(object({
            service_configuration = optional(list(object({
              s3 = optional(list(object({
                bucket_name = string
              })))
            })))
          })))
          storage = optional(list(object({
            service_configuration = optional(list(object({
              s3 = optional(list(object({
                bucket_name = string
              })))
            })))
          })))
        })))
        input = optional(list(object({
          category   = optional(string)
          expression = string
          name       = string
          type       = string
        })))
        name = string
        output = optional(list(object({
          name = string
          type = string
        })))
        type = string
      })))
    })))
  }))
}

