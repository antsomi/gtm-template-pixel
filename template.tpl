___INFO___

{
  "type": "TAG",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "Antsomi Pixel",
  "brand": {
    "id": "brand_dummy",
    "displayName": "Antsomi",
    "thumbnail": "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABYAAAAZCAYAAAA14t7uAAAABmJLR0QA/wD/AP+gvaeTAAAC8ElEQVRIiaWUS0hUURjHf9+9oz2IHoMU9JCIIiJalFq0silJe9GDip7O9KBVUFG0i6QWQRAFPUh7aFkZ2CYkxspQaBfMohY9SI0yo7dKqaPeuV8Lm5l7xzua9MFdnP/5vt/5n++ce4R/iVB4OirHAeiLlXBn1fuhSnz/BLapBnIBMM25wMKhSowhoTsfLgXJTYyFPIprA/8PNuyDHqqX5goZdDb0aBa2/drDgGLrHG6teJPWz6BgtQ+kyREM2T9YaXrHofrx2D0twJg0GV1kMI1rRT+9JtM71t69KdAXf794jKZP9zhL2vIC+R0LAoUK4u14Sb2P7J4mIDu5kO4CQKTckfmRkVkztCw31p4buBrPUeSKt+Ps6BYXFL5ijrzLeK0CPjv0qZnRrxvac/LLEwsDgm7xBotcSBEuURGIcn5lD8jluGqoUvnh3hmQYlc2+nQgOFhbjDLOofTQZyZgmLFLQNRQpbS1pnv5r+YpKYTnBhIcCFZOpiiPqSr4khiVr/xmEqsqba3p3tjxclQq1DTNZWMjDd/db0UonIft6i1lrffZ51oXo/HNxQlZVtdAKBSMffbkB6ReN1tOOYc5XZ+sTe2vVrfl5J+JQ9tzllzPsrrWeUIjDd/jQvK67asZTTSjBfDHper31RT8bup3qnpaRCYBwaGg4Hw2oxm7ndCJVqe9tLMpsSMROcrASEKDtZux8VNZdNnRChXA9e+Ps3rLDNVmD5g3VLmNcJiSEiMJDtauAWY7itrejvAfUTIC4Al3QMNbUe783f1MmhavSoJVUt5XLaWysNMfqfvgAXf31DbmAWZiVvrfbyH0YB62+ZzkQVqYMoPywpZ47u9Fyyb1WrFDIkRVfWf9kbqOBGj3o8lY9jsgM6EZxnyhOFwB4jzpKm4WbfNqatrYGb6FyPakayoMkLUpaeeGBe13eNY1VtYbCM7+1XOz6NmwwTcKI0CdQ2n0Yfo2EbOOoXRjxE4MGxqPPt8OMq1jKKMw9OQfhzcUmtiztJsAAAAASUVORK5CYII\u003d"
  },
  "description": "Antsomi (CDP) Template for website tracking",
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "GROUP",
    "name": "group_partner_setting",
    "subParams": [
      {
        "type": "TEXT",
        "name": "text_portal_id",
        "displayName": "Portal ID (*)",
        "simpleValueType": true,
        "valueValidators": [
          {
            "type": "NON_EMPTY",
            "errorMessage": "Your Portal ID cannot be empty."
          },
          {
            "type": "REGEX",
            "args": [
              "^[0-9]+$"
            ],
            "errorMessage": "Your Portal ID is not in an integer format."
          }
        ],
        "help": "Input your CDP\u0027s Portal ID.",
        "alwaysInSummary": true,
        "valueHint": "e.g. 33167",
        "notSetText": "Your CDP\u0027s Portal ID."
      },
      {
        "type": "TEXT",
        "name": "text_prop_id",
        "displayName": "Property ID (*)",
        "simpleValueType": true,
        "valueValidators": [
          {
            "type": "NON_EMPTY",
            "errorMessage": "Your Property ID cannot be empty."
          },
          {
            "type": "REGEX",
            "args": [
              "^[0-9]+$"
            ],
            "errorMessage": "Your Property ID is not in an integer format."
          }
        ],
        "help": "Input your CDP\u0027s Property ID.",
        "alwaysInSummary": true,
        "valueHint": "e.g. 556380312",
        "notSetText": "Your CDP\u0027s Property ID."
      }
    ],
    "displayName": "Partner Settings",
    "groupStyle": "ZIPPY_OPEN_ON_PARAM"
  },
  {
    "type": "GROUP",
    "name": "group_event_setting",
    "displayName": "Event Settings",
    "groupStyle": "ZIPPY_OPEN",
    "subParams": [
      {
        "type": "SELECT",
        "name": "drop_down_event_type",
        "displayName": "Event Type",
        "macrosInSelect": false,
        "selectItems": [
          {
            "value": "RETAIL",
            "displayValue": "E-Commerce Event"
          },
          {
            "value": "IDENTIFY",
            "displayValue": "Identify Event"
          },
          {
            "value": "PAGE_VIEW",
            "displayValue": "Page View Event"
          },
          {
            "value": "CUSTOM",
            "displayValue": "Custom Event"
          }
        ],
        "simpleValueType": true,
        "defaultValue": "RETAIL",
        "help": "Choose the event type. \u003cbr/\u003e\n\u003cstrong\u003e\u003cem\u003eNOTE:\u003c/em\u003e\u003c/strong\u003e If you\u0027ve already added the Antsomi main script to your site, avoid selecting \u003ci\u003ePage View Event\u003c/i\u003e. However, if you still prefer this option, be sure to activate the \u003ci\u003e\u0027Prevent Default Event\u0027\u003c/i\u003e setting in the \u003cb\u003e\u003ci\u003eSDK Global Settings\u003c/i\u003e\u003c/b\u003e section.",
        "alwaysInSummary": true
      },
      {
        "type": "GROUP",
        "name": "group_event_retail",
        "subParams": [
          {
            "type": "SELECT",
            "name": "drop_down_event_retail",
            "displayName": "Choose the event",
            "macrosInSelect": false,
            "selectItems": [
              {
                "value": "VIEW_PRODUCT",
                "displayValue": "View Product"
              },
              {
                "value": "ADD_TO_CART",
                "displayValue": "Add Product to Cart"
              },
              {
                "value": "VIEW_CART",
                "displayValue": "View Cart"
              },
              {
                "value": "REMOVE_CART",
                "displayValue": "Remove Product from Cart"
              },
              {
                "value": "CHECKOUT",
                "displayValue": "Checkout"
              },
              {
                "value": "PROMOTION_CODE_USED",
                "displayValue": "Promotion Code used"
              },
              {
                "value": "PURCHASE",
                "displayValue": "Purchase"
              },
              {
                "value": "SEARCH_PRODUCT",
                "displayValue": "Search Product(s)"
              }
            ],
            "simpleValueType": true,
            "defaultValue": "VIEW_PRODUCT",
            "alwaysInSummary": true
          },
          {
            "type": "GROUP",
            "name": "group_search_product",
            "subParams": [
              {
                "type": "TEXT",
                "name": "text_search_keyword",
                "displayName": "Search Keywords",
                "simpleValueType": true,
                "alwaysInSummary": true,
                "canBeEmptyString": true,
                "help": "Select the GTM Variable that returns the user\u0027s search keywords in the current page.",
                "valueHint": "e.g. T-Shirt",
                "notSetText": "The user\u0027s search keywords in the current page."
              }
            ],
            "enablingConditions": [
              {
                "paramName": "drop_down_event_retail",
                "paramValue": "SEARCH_PRODUCT",
                "type": "EQUALS"
              }
            ]
          },
          {
            "type": "GROUP",
            "name": "group_product",
            "subParams": [
              {
                "type": "RADIO",
                "name": "radio_product_input_type",
                "displayName": "Input Type",
                "radioItems": [
                  {
                    "value": "SINGLE",
                    "displayValue": "Single Entry",
                    "help": "Configure product information using attributes of a unique object."
                  },
                  {
                    "value": "JSON",
                    "displayValue": "Array-JSON Payload",
                    "help": "Configure product information by submitting an array of unique products in JSON format."
                  },
                  {
                    "value": "NONE",
                    "displayValue": "None",
                    "help": "Configure an empty product information."
                  }
                ],
                "simpleValueType": true,
                "defaultValue": "SINGLE"
              },
              {
                "type": "GROUP",
                "name": "group_single_product",
                "subParams": [
                  {
                    "type": "TEXT",
                    "name": "text_product_id",
                    "displayName": "Product ID (*)",
                    "simpleValueType": true,
                    "valueHint": "e.g. SKUABC12345",
                    "help": "Select the GTM Variable that returns Product ID in the current page.",
                    "valueValidators": [
                      {
                        "type": "NON_EMPTY",
                        "errorMessage": "Your Product ID cannot be empty."
                      }
                    ],
                    "alwaysInSummary": true,
                    "notSetText": "The Product ID in the current page."
                  },
                  {
                    "type": "PARAM_TABLE",
                    "name": "table_product_attr",
                    "displayName": "Product Attributes",
                    "paramTableColumns": [
                      {
                        "param": {
                          "type": "SELECT",
                          "name": "drop_down_attr_name",
                          "displayName": "Attribute Name",
                          "selectItems": [
                            {
                              "value": "name",
                              "displayValue": "Product Name"
                            },
                            {
                              "value": "sku",
                              "displayValue": "SKU"
                            },
                            {
                              "value": "brand",
                              "displayValue": "Brand"
                            },
                            {
                              "value": "status",
                              "displayValue": "Status"
                            },
                            {
                              "value": "price",
                              "displayValue": "Price"
                            },
                            {
                              "value": "original_price",
                              "displayValue": "Original Price"
                            },
                            {
                              "value": "page_url",
                              "displayValue": "Page URL"
                            },
                            {
                              "value": "image_url",
                              "displayValue": "Image URL"
                            },
                            {
                              "value": "main_category",
                              "displayValue": "Main Category"
                            },
                            {
                              "value": "category_level_1",
                              "displayValue": "Category Level 1"
                            },
                            {
                              "value": "category_level_2",
                              "displayValue": "Category Level 2"
                            },
                            {
                              "value": "quantity",
                              "displayValue": "Quantity"
                            },
                            {
                              "value": "custom",
                              "displayValue": "Custom"
                            }
                          ],
                          "simpleValueType": true,
                          "valueValidators": [
                            {
                              "type": "NON_EMPTY",
                              "errorMessage": "Please select an Attribute Name.",
                              "enablingConditions": [
                                {
                                  "paramName": "drop_down_attr_name",
                                  "paramValue": "custom",
                                  "type": "NOT_EQUALS"
                                }
                              ]
                            }
                          ],
                          "help": "Choose from a list of CDP product\u0027s predefined attributes.\u003cbr/\u003e\nSelect \u003ci\u003eCustom\u003c/i\u003e if you want to input your custom attribute\u0027s code instead.\u003cbr/\u003e\n\u003cstrong\u003e\u003cem\u003eNOTE:\u003c/em\u003e\u003c/strong\u003e If you add an attribute more than once, the value of the later one will be used in your event data."
                        },
                        "isUnique": false
                      },
                      {
                        "param": {
                          "type": "TEXT",
                          "name": "text_attr_code",
                          "displayName": "Attribute Code",
                          "simpleValueType": true,
                          "enablingConditions": [
                            {
                              "paramName": "drop_down_attr_name",
                              "paramValue": "custom",
                              "type": "EQUALS"
                            }
                          ],
                          "valueValidators": [
                            {
                              "type": "NON_EMPTY",
                              "enablingConditions": [
                                {
                                  "paramName": "drop_down_attr_name",
                                  "paramValue": "custom",
                                  "type": "EQUALS"
                                }
                              ],
                              "errorMessage": "Your Attribute Code cannot be empty."
                            },
                            {
                              "type": "REGEX",
                              "args": [
                                "[a-z0-9_]+"
                              ],
                              "errorMessage": "Your Attribute Code contains characters other than a-z, 0-9, and underscore _.",
                              "enablingConditions": [
                                {
                                  "paramName": "drop_down_attr_name",
                                  "paramValue": "custom",
                                  "type": "EQUALS"
                                }
                              ]
                            }
                          ],
                          "valueHint": "e.g. stock_availability",
                          "help": "Input your custom attribute code.\u003cbr/\u003e\nLeave it blanks if you want to select from the list of CDP product\u0027s predefined attributes."
                        },
                        "isUnique": true
                      },
                      {
                        "param": {
                          "type": "TEXT",
                          "name": "text_attr_value",
                          "displayName": "Attribute Value",
                          "simpleValueType": true,
                          "valueHint": "e.g. 100"
                        },
                        "isUnique": false
                      }
                    ],
                    "help": "Configure the Product Attributes.",
                    "newRowTitle": "Product Attribute configuration",
                    "newRowButtonText": "Add Attribute"
                  },
                  {
                    "type": "SIMPLE_TABLE",
                    "name": "table_product_line_item_attr",
                    "displayName": "Line Item Attributes",
                    "simpleTableColumns": [
                      {
                        "defaultValue": "",
                        "displayName": "Attribute Name",
                        "name": "line_item_attr_code",
                        "type": "SELECT",
                        "selectItems": [
                          {
                            "value": "line_item_quantity",
                            "displayValue": "Line Item Quantity"
                          },
                          {
                            "value": "line_item_discount_amount",
                            "displayValue": "Line Item Discount Amount"
                          },
                          {
                            "value": "line_item_sale_price",
                            "displayValue": "Line Item Sale Price (i.e. Price on sale)"
                          },
                          {
                            "value": "line_item_rounded_amount",
                            "displayValue": "Line Item Rounded Amount (i.e Final paid amount)"
                          }
                        ],
                        "isUnique": true,
                        "valueHint": "stock_availability",
                        "valueValidators": [
                          {
                            "type": "NON_EMPTY",
                            "errorMessage": "Please select a Line Item Attribute."
                          }
                        ]
                      },
                      {
                        "defaultValue": "",
                        "displayName": "Value",
                        "name": "line_item_attr_value",
                        "type": "TEXT",
                        "valueHint": "150.25",
                        "valueValidators": [
                          {
                            "type": "REGEX",
                            "args": [
                              "^(-?(([0-9]+)|([0-9]+)((,[0-9]+))*|(([0-9]+)((,[0-9]+))*)\\.([0-9]*)*))$"
                            ],
                            "errorMessage": "Your Attribute Value is not in a valid numeric format."
                          }
                        ]
                      }
                    ],
                    "newRowButtonText": "Add Line Item Attribute",
                    "alwaysInSummary": false,
                    "enablingConditions": [
                      {
                        "paramName": "drop_down_event_retail",
                        "paramValue": "PURCHASE",
                        "type": "EQUALS"
                      }
                    ]
                  }
                ],
                "enablingConditions": [
                  {
                    "paramName": "radio_product_input_type",
                    "paramValue": "SINGLE",
                    "type": "EQUALS"
                  }
                ],
                "groupStyle": "NO_ZIPPY"
              },
              {
                "type": "GROUP",
                "name": "group_json_product",
                "groupStyle": "NO_ZIPPY",
                "subParams": [
                  {
                    "type": "TEXT",
                    "name": "text_json_product",
                    "displayName": "Array-JSON Payload (*)",
                    "simpleValueType": true,
                    "alwaysInSummary": true,
                    "valueHint": "e.g. [{\"id\":\"24-WB04\",\"name\":\"Push It Messenger Bag\",\"sku\":\"24-WB04\",\"price\":45,\"currency\":\"USD\"},{\"id\":\"24-UG07\",\"name\":\"Dual Handle Cardio Ball\",\"sku\":\"24-UG07\",\"price\":12,\"currency\":\"USD\"}]",
                    "help": "Select the GTM Variable that returns an array containing the product\u0027s attributes. The attribute \u003ci\u003e\u0027id\u0027\u003c/i\u003e is required, the rest are optional.\u003cbr/\u003e\n\u003cstrong\u003e\u003cem\u003eExample:\u003c/em\u003e\u003c/strong\u003e\u003cbr/\u003e\n\u003ci\u003e[\u003cbr/\u003e\n\u0026nbsp;{\u003cbr/\u003e\n\u0026nbsp;\u0026nbsp;\"id\": \"24-WB04\",\u003cbr/\u003e\n\u0026nbsp;\u0026nbsp;\"name\": \"Push It Messenger Bag\",\u003cbr/\u003e\n\u0026nbsp;\u0026nbsp;\"sku\": \"24-WB04\",\u003cbr/\u003e\n\u0026nbsp;\u0026nbsp;\"price\": 45,\u003cbr/\u003e\n\u0026nbsp;\u0026nbsp;\"currency\": \"USD\"\u003cbr/\u003e\n\u0026nbsp;},\u003cbr/\u003e\n\u0026nbsp;{\u003cbr/\u003e\n\u0026nbsp;\u0026nbsp;\"id\": \"24-UG07\",\u003cbr/\u003e\n\u0026nbsp;\u0026nbsp;\"name\": \"Dual Handle Cardio Ball\",\u003cbr/\u003e\n\u0026nbsp;\u0026nbsp;\"sku\": \"24-UG07\",\u003cbr/\u003e\n\u0026nbsp;\u0026nbsp;\"price\": 12,\u003cbr/\u003e\n\u0026nbsp;\u0026nbsp;\"currency\": \"USD\"\u003cbr/\u003e\n\u0026nbsp;}\u003cbr/\u003e\n]\u003c/i\u003e",
                    "valueValidators": [
                      {
                        "type": "NON_EMPTY",
                        "errorMessage": "Your Product Array-JSON Payload cannot be empty."
                      }
                    ],
                    "notSetText": "The Product Array-JSON Payload."
                  }
                ],
                "enablingConditions": [
                  {
                    "paramName": "radio_product_input_type",
                    "paramValue": "JSON",
                    "type": "EQUALS"
                  }
                ]
              }
            ],
            "enablingConditions": [
              {
                "paramName": "drop_down_event_retail",
                "paramValue": "PROMOTION_CODE_USED",
                "type": "NOT_EQUALS"
              }
            ],
            "displayName": "Product Variables",
            "groupStyle": "ZIPPY_OPEN"
          },
          {
            "type": "GROUP",
            "name": "group_promotion_code",
            "subParams": [
              {
                "type": "TEXT",
                "name": "text_promotion_code",
                "displayName": "Promotion Code (*)",
                "simpleValueType": true,
                "valueHint": "e.g. CDP_FMXCCC",
                "help": "Select the GTM Variable that returns the Promotion Code that has been used.",
                "valueValidators": [
                  {
                    "type": "NON_EMPTY",
                    "errorMessage": "Your Promotion Code cannot be empty."
                  }
                ],
                "alwaysInSummary": true,
                "notSetText": "The Promotion Code that has been used."
              },
              {
                "type": "TEXT",
                "name": "text_cdp_property_id",
                "displayName": "CDP Property ID (*)",
                "simpleValueType": true,
                "valueHint": "e.g. 564993252",
                "help": "Select the GTM Variable that returns the CDP Loyalty Programs event source ID.",
                "valueValidators": [
                  {
                    "type": "NON_EMPTY",
                    "errorMessage": "Your CDP Loyalty Programs event source ID cannot be empty."
                  },
                  {
                    "type": "REGEX",
                    "args": [
                      "^[0-9]+$"
                    ],
                    "errorMessage": "Your CDP Loyalty Programs event source ID is not in an integer format."
                  }
                ],
                "alwaysInSummary": true,
                "notSetText": "The CDP Loyalty Programs event source ID."
              }
            ],
            "enablingConditions": [
              {
                "paramName": "drop_down_event_retail",
                "paramValue": "PROMOTION_CODE_USED",
                "type": "EQUALS"
              }
            ],
            "displayName": "Promotion Code Variables",
            "groupStyle": "ZIPPY_OPEN"
          },
          {
            "type": "GROUP",
            "name": "group_cart",
            "subParams": [
              {
                "type": "TEXT",
                "name": "text_cart_subtotal",
                "displayName": "Cart Subtotal (*)",
                "simpleValueType": true,
                "valueHint": "e.g. 150.25",
                "help": "Select the GTM Variable that returns the current amount that\u0027s in the shopping cart.",
                "valueValidators": [
                  {
                    "type": "NON_EMPTY",
                    "errorMessage": "Your Cart Subtotal cannot be empty.",
                    "enablingConditions": []
                  },
                  {
                    "type": "REGEX",
                    "args": [
                      "^(-?(([0-9]+)|([0-9]+)((,[0-9]+))*|(([0-9]+)((,[0-9]+))*)\\.([0-9]*)*))$"
                    ],
                    "errorMessage": "Your Cart Subtotal is not in a valid numeric format."
                  }
                ],
                "alwaysInSummary": true,
                "notSetText": "The current amount that\u0027s in the shopping cart."
              },
              {
                "type": "TEXT",
                "name": "text_cart_item_count",
                "displayName": "Cart Item Count (*)",
                "simpleValueType": true,
                "valueHint": "e.g. 3",
                "help": "Select the GTM Variable that returns the current amount of item that\u0027s in the shopping cart.",
                "valueValidators": [
                  {
                    "type": "NON_EMPTY",
                    "errorMessage": "Your Cart Item Count cannot be empty."
                  },
                  {
                    "type": "REGEX",
                    "args": [
                      "^[0-9]+$"
                    ],
                    "errorMessage": "Your Cart Item Count is not in an integer format."
                  }
                ],
                "alwaysInSummary": true,
                "notSetText": "The current amount of item that\u0027s in the shopping cart."
              }
            ],
            "enablingConditions": [
              {
                "paramName": "drop_down_event_retail",
                "paramValue": "ADD_TO_CART",
                "type": "EQUALS"
              },
              {
                "paramName": "drop_down_event_retail",
                "paramValue": "VIEW_CART",
                "type": "EQUALS"
              },
              {
                "paramName": "drop_down_event_retail",
                "paramValue": "REMOVE_CART",
                "type": "EQUALS"
              },
              {
                "paramName": "drop_down_event_retail",
                "paramValue": "CHECKOUT",
                "type": "EQUALS"
              }
            ],
            "displayName": "Cart Variables",
            "groupStyle": "ZIPPY_OPEN"
          },
          {
            "type": "GROUP",
            "name": "group_purchase",
            "subParams": [
              {
                "type": "RADIO",
                "name": "radio_purchase_input_type",
                "displayName": "Input Type",
                "radioItems": [
                  {
                    "value": "SINGLE",
                    "displayValue": "Single Entry",
                    "help": "Configure purchase information using attributes of a unique object."
                  },
                  {
                    "value": "JSON",
                    "displayValue": "JSON Payload",
                    "help": "Configure purchase information by submitting a unique object in JSON format."
                  },
                  {
                    "value": "NONE",
                    "displayValue": "None",
                    "help": "Configure an empty purchase information."
                  }
                ],
                "simpleValueType": true,
                "defaultValue": "SINGLE"
              },
              {
                "type": "GROUP",
                "name": "group_single_purchase",
                "subParams": [
                  {
                    "type": "TEXT",
                    "name": "text_purchase_id",
                    "displayName": "Purchase ID (*)",
                    "simpleValueType": true,
                    "valueHint": "e.g. 000001507",
                    "help": "Select the GTM Variable that returns Purchase ID in the current page.",
                    "valueValidators": [
                      {
                        "type": "NON_EMPTY",
                        "errorMessage": "Your Purchase ID cannot be empty."
                      }
                    ],
                    "alwaysInSummary": true,
                    "notSetText": "The Purchase ID in the current page."
                  },
                  {
                    "type": "PARAM_TABLE",
                    "name": "table_purchase_attr",
                    "displayName": "Purchase Attributes",
                    "paramTableColumns": [
                      {
                        "param": {
                          "type": "SELECT",
                          "name": "drop_down_attr_name",
                          "displayName": "Attribute Name",
                          "selectItems": [
                            {
                              "value": "name",
                              "displayValue": "Name"
                            },
                            {
                              "value": "subtotal_amount",
                              "displayValue": "Subtotal Amount"
                            },
                            {
                              "value": "discount_amount",
                              "displayValue": "Discount Amount"
                            },
                            {
                              "value": "shipping_amount",
                              "displayValue": "Shipping Amount"
                            },
                            {
                              "value": "tax_amount",
                              "displayValue": "Tax Amount"
                            },
                            {
                              "value": "total_amount",
                              "displayValue": "Total Amount"
                            },
                            {
                              "value": "returned_amount",
                              "displayValue": "Returned Amount"
                            },
                            {
                              "value": "revenue",
                              "displayValue": "Revenue"
                            },
                            {
                              "value": "promotion_code",
                              "displayValue": "Promotion Code"
                            },
                            {
                              "value": "status",
                              "displayValue": "Status"
                            },
                            {
                              "value": "custom",
                              "displayValue": "Custom"
                            }
                          ],
                          "simpleValueType": true,
                          "valueValidators": [
                            {
                              "type": "NON_EMPTY",
                              "errorMessage": "Please select an Attribute Name.",
                              "enablingConditions": [
                                {
                                  "paramName": "drop_down_attr_name",
                                  "paramValue": "custom",
                                  "type": "NOT_EQUALS"
                                }
                              ]
                            }
                          ],
                          "help": "Choose from a list of CDP purchase\u0027s predefined attributes.\u003cbr/\u003e\nSelect \u003ci\u003eCustom\u003c/i\u003e if you want to input your custom attribute\u0027s code instead.\u003cbr/\u003e\n\u003cstrong\u003e\u003cem\u003eNOTE:\u003c/em\u003e\u003c/strong\u003e If you add an attribute more than once, the value of the later one will be used in your event data."
                        },
                        "isUnique": false
                      },
                      {
                        "param": {
                          "type": "TEXT",
                          "name": "text_attr_code",
                          "displayName": "Attribute Code",
                          "simpleValueType": true,
                          "enablingConditions": [
                            {
                              "paramName": "drop_down_attr_name",
                              "paramValue": "custom",
                              "type": "EQUALS"
                            }
                          ],
                          "valueValidators": [
                            {
                              "type": "NON_EMPTY",
                              "enablingConditions": [
                                {
                                  "paramName": "drop_down_attr_name",
                                  "paramValue": "custom",
                                  "type": "EQUALS"
                                }
                              ],
                              "errorMessage": "Your Attribute Code cannot be empty."
                            },
                            {
                              "type": "REGEX",
                              "args": [
                                "[a-z0-9_]+"
                              ],
                              "errorMessage": "Your Attribute Code contains characters other than a-z, 0-9, and underscore _.",
                              "enablingConditions": [
                                {
                                  "paramName": "drop_down_attr_name",
                                  "paramValue": "custom",
                                  "type": "EQUALS"
                                }
                              ]
                            }
                          ],
                          "valueHint": "e.g. shipping_date",
                          "help": "Input your custom attribute code.\u003cbr/\u003e\nLeave it blanks if you want to select from the list of CDP purchase\u0027s predefined attributes."
                        },
                        "isUnique": true
                      },
                      {
                        "param": {
                          "type": "TEXT",
                          "name": "text_attr_value",
                          "displayName": "Attribute Value",
                          "simpleValueType": true,
                          "valueHint": "e,g, 2024-01-01 15:15:15"
                        },
                        "isUnique": false
                      }
                    ],
                    "help": "Configure the Purchase Attributes.",
                    "newRowTitle": "Purchase Attribute configuration",
                    "newRowButtonText": "Add Attribute"
                  }
                ],
                "enablingConditions": [
                  {
                    "paramName": "radio_purchase_input_type",
                    "paramValue": "SINGLE",
                    "type": "EQUALS"
                  }
                ],
                "groupStyle": "NO_ZIPPY"
              },
              {
                "type": "GROUP",
                "name": "group_json_purchase",
                "groupStyle": "NO_ZIPPY",
                "subParams": [
                  {
                    "type": "TEXT",
                    "name": "text_json_purchase",
                    "displayName": "JSON Payload (*)",
                    "simpleValueType": true,
                    "alwaysInSummary": true,
                    "valueHint": "e.g. {\"id\":\"000001507\",\"name\":\"000001507\",\"subtotal_amount\":129,\"discount_amount\":10,\"shipping_amount\":25,\"tax_amount\":5,\"total_amount\":149,\"returned_amount\":0,\"revenue\":149,\"promotion_code\":\"CDP_FMXCCC\",\"customer_id\":\"7574fec20b6ccb7d18c1b965a6572b2b\",\"customer_name\":\"Miranda Stephens\",\"status\":\"Paid\"}",
                    "help": "Select the GTM Variable that returns a JSON object containing the customer\u0027s attributes. The attribute \u003ci\u003e\u0027id\u0027\u003c/i\u003e and \u003ci\u003e\u0027name\u0027\u003c/i\u003e are required, the rest are optional.\u003cbr/\u003e\n\u003cstrong\u003e\u003cem\u003eExample:\u003c/em\u003e\u003c/strong\u003e\u003cbr/\u003e\n\u003ci\u003e{\u003cbr/\u003e\n\u0026nbsp;\"id\": \"000001507\",\u003cbr/\u003e\n\u0026nbsp;\"name\": \"000001507\",\u003cbr/\u003e\n\u0026nbsp;\"subtotal_amount\": 129,\u003cbr/\u003e\n\u0026nbsp;\"discount_amount\": 10,\u003cbr/\u003e\n\u0026nbsp;\"shipping_amount\": 25,\u003cbr/\u003e\n\u0026nbsp;\"tax_amount\": 5,\u003cbr/\u003e\n\u0026nbsp;\"total_amount\": 149,\u003cbr/\u003e\n\u0026nbsp;\"returned_amount\": 0,\u003cbr/\u003e\n\u0026nbsp;\"revenue\": 149,\u003cbr/\u003e\n\u0026nbsp;\"promotion_code\": \"CDP_FMXCCC\",\u003cbr/\u003e\n\u0026nbsp;\"customer_id\": \"7574fec20b6ccb7d18c1b965a6572b2b\",\u003cbr/\u003e\n\u0026nbsp;\"customer_name\": \"Miranda Stephens\",\u003cbr/\u003e\n\u0026nbsp;\"status\": \"Paid\"\u003cbr/\u003e\n}\u003c/i\u003e",
                    "valueValidators": [
                      {
                        "type": "NON_EMPTY",
                        "errorMessage": "Your Purchase JSON Payload cannot be empty."
                      }
                    ],
                    "notSetText": "The Purchase JSON Payload."
                  }
                ],
                "enablingConditions": [
                  {
                    "paramName": "radio_purchase_input_type",
                    "paramValue": "JSON",
                    "type": "EQUALS"
                  }
                ]
              }
            ],
            "enablingConditions": [
              {
                "paramName": "drop_down_event_retail",
                "paramValue": "PURCHASE",
                "type": "EQUALS"
              },
              {
                "paramName": "drop_down_event_retail",
                "paramValue": "PROMOTION_CODE_USED",
                "type": "EQUALS"
              }
            ],
            "displayName": "Purchase Variables",
            "groupStyle": "ZIPPY_OPEN"
          }
        ],
        "enablingConditions": [
          {
            "paramName": "drop_down_event_type",
            "paramValue": "RETAIL",
            "type": "EQUALS"
          }
        ]
      },
      {
        "type": "GROUP",
        "name": "group_event_identify",
        "subParams": [
          {
            "type": "SELECT",
            "name": "drop_down_event_identify",
            "displayName": "Choose the event",
            "macrosInSelect": false,
            "selectItems": [
              {
                "value": "SIGN_IN",
                "displayValue": "User Sign-in"
              },
              {
                "value": "SIGN_UP",
                "displayValue": "User Signs Up"
              },
              {
                "value": "IDENTIFY",
                "displayValue": "Identify User"
              }
            ],
            "simpleValueType": true,
            "defaultValue": "IDENTIFY",
            "alwaysInSummary": true
          }
        ],
        "enablingConditions": [
          {
            "paramName": "drop_down_event_type",
            "paramValue": "IDENTIFY",
            "type": "EQUALS"
          }
        ]
      },
      {
        "type": "GROUP",
        "name": "group_event_page_view",
        "subParams": [
          {
            "type": "TEXT",
            "name": "text_page_type",
            "displayName": "Page Type",
            "simpleValueType": true,
            "help": "Select the GTM Variable that returns the Page Type in the current page.",
            "alwaysInSummary": true,
            "valueHint": "e.g. Home",
            "notSetText": "The Page Type in the current page."
          },
          {
            "type": "TEXT",
            "name": "text_page_category",
            "displayName": "Page Category",
            "simpleValueType": true,
            "help": "Select the GTM Variable that returns the Page Category in the current page.",
            "alwaysInSummary": true,
            "valueHint": "e.g. Home",
            "notSetText": "The Page Category in the current page."
          }
        ],
        "enablingConditions": [
          {
            "paramName": "drop_down_event_type",
            "paramValue": "PAGE_VIEW",
            "type": "EQUALS"
          }
        ]
      },
      {
        "type": "GROUP",
        "name": "group_event_custom",
        "subParams": [
          {
            "type": "TEXT",
            "name": "text_event_category",
            "displayName": "Event Category (*)",
            "simpleValueType": true,
            "help": "Input your Event Category.",
            "alwaysInSummary": true,
            "valueHint": "e.g. lead",
            "valueValidators": [
              {
                "type": "NON_EMPTY",
                "errorMessage": "Your Event Category cannot be empty."
              },
              {
                "type": "REGEX",
                "args": [
                  "[a-z0-9_]+"
                ],
                "errorMessage": "Your Event Category contains characters other than a-z, 0-9, and underscore _."
              }
            ],
            "notSetText": "Your Event Category."
          },
          {
            "type": "TEXT",
            "name": "text_event_action",
            "displayName": "Event Action (*)",
            "simpleValueType": true,
            "help": "Input your Event Action.",
            "alwaysInSummary": true,
            "valueHint": "e.g. submit",
            "valueValidators": [
              {
                "type": "NON_EMPTY",
                "errorMessage": "Your Event Action cannot be empty."
              },
              {
                "type": "REGEX",
                "args": [
                  "[a-z0-9_]+"
                ],
                "errorMessage": "Your Event Action contains characters other than a-z, 0-9, and underscore _."
              }
            ],
            "notSetText": "Your Event Action."
          },
          {
            "type": "GROUP",
            "name": "group_multi_item",
            "subParams": [
              {
                "type": "RADIO",
                "name": "radio_multi_item_input_type",
                "displayName": "Input Type",
                "radioItems": [
                  {
                    "value": "SINGLE",
                    "displayValue": "Single Entry",
                    "help": "Configure product information using attributes of a unique object."
                  },
                  {
                    "value": "JSON",
                    "displayValue": "Array-JSON Payload",
                    "help": "Configure product information by submitting an array of unique products in JSON format."
                  },
                  {
                    "value": "NONE",
                    "displayValue": "None",
                    "help": "Configure an empty product information."
                  }
                ],
                "simpleValueType": true,
                "defaultValue": "SINGLE"
              },
              {
                "type": "TEXT",
                "name": "text_multi_item_type",
                "displayName": "Data Object Type",
                "simpleValueType": true,
                "alwaysInSummary": true,
                "help": "Input your Data Object Type.",
                "valueValidators": [
                  {
                    "type": "NON_EMPTY",
                    "errorMessage": "Your Data Object Type cannot be empty."
                  },
                  {
                    "type": "REGEX",
                    "args": [
                      "[a-z0-9_]+"
                    ],
                    "errorMessage": "Your Data Object Type contains characters other than a-z, 0-9, and underscore _."
                  }
                ],
                "valueHint": "e.g. lead",
                "enablingConditions": [
                  {
                    "paramName": "radio_multi_item_input_type",
                    "paramValue": "NONE",
                    "type": "NOT_EQUALS"
                  }
                ],
                "notSetText": "Your Data Object Type."
              },
              {
                "type": "GROUP",
                "name": "group_single_multi_item",
                "subParams": [
                  {
                    "type": "TEXT",
                    "name": "text_multi_item_id",
                    "displayName": "ID (*)",
                    "simpleValueType": true,
                    "valueHint": "e.g. 862f42109690fa8cf5fe459f901cc91a",
                    "help": "Select the GTM Variable that returns Object ID in the current page.",
                    "valueValidators": [
                      {
                        "type": "NON_EMPTY",
                        "errorMessage": "Your Object ID cannot be empty."
                      }
                    ],
                    "alwaysInSummary": true,
                    "notSetText": "The Object ID in the current page."
                  },
                  {
                    "type": "SIMPLE_TABLE",
                    "name": "table_multi_item_attr",
                    "displayName": "Custom Attributes",
                    "simpleTableColumns": [
                      {
                        "defaultValue": "",
                        "displayName": "Attribute Code",
                        "name": "text_attr_code",
                        "type": "TEXT",
                        "selectItems": [],
                        "isUnique": true,
                        "valueHint": "stock_availability",
                        "valueValidators": [
                          {
                            "type": "NON_EMPTY",
                            "errorMessage": "Your Attribute Code cannot be empty."
                          },
                          {
                            "type": "REGEX",
                            "args": [
                              "[a-z0-9_]+"
                            ],
                            "errorMessage": "Your Attribute Code contains characters other than a-z, 0-9, and underscore _."
                          }
                        ]
                      },
                      {
                        "defaultValue": "",
                        "displayName": "Value",
                        "name": "text_attr_value",
                        "type": "TEXT",
                        "valueHint": "attribute_value_1"
                      }
                    ],
                    "newRowButtonText": "Add Attribute",
                    "alwaysInSummary": false
                  }
                ],
                "enablingConditions": [
                  {
                    "paramName": "radio_multi_item_input_type",
                    "paramValue": "SINGLE",
                    "type": "EQUALS"
                  }
                ],
                "groupStyle": "NO_ZIPPY"
              },
              {
                "type": "GROUP",
                "name": "group_json_multi_item",
                "groupStyle": "NO_ZIPPY",
                "subParams": [
                  {
                    "type": "TEXT",
                    "name": "text_json_multi_item",
                    "displayName": "Array-JSON Payload",
                    "simpleValueType": true,
                    "alwaysInSummary": true,
                    "valueHint": "e.g. [{\"id\":\"862f42109690fa8cf5fe459f901cc91a\",\"name\":\"Cdp lead 02\",\"phone\":\"0939579163\"},{\"id\":\"06f21505129c0c8e55b1b95cd784492f\",\"name\":\"cdp lead 01\",\"phone\":\"0939579163\"}]",
                    "help": "Select the GTM Variable that returns an array containing the object\u0027s attributes. The attribute \u003ci\u003e\u0027id\u0027\u003c/i\u003e is required, the rest are optional.\u003cbr/\u003e\n\u003cstrong\u003e\u003cem\u003eExample:\u003c/em\u003e\u003c/strong\u003e\u003cbr/\u003e\n\u003ci\u003e[\u003cbr/\u003e\n\u0026nbsp;{\u003cbr/\u003e\n\u0026nbsp;\u0026nbsp;\"id\": \"862f42109690fa8cf5fe459f901cc91a\",\u003cbr/\u003e\n\u0026nbsp;\u0026nbsp;\"name\": \"Cdp lead 02\",\u003cbr/\u003e\n\u0026nbsp;\u0026nbsp;\"phone\": \"0939579163\"\u003cbr/\u003e\n\u0026nbsp;},\u003cbr/\u003e\n\u0026nbsp;{\u003cbr/\u003e\n\u0026nbsp;\u0026nbsp;\"id\": \"06f21505129c0c8e55b1b95cd784492f\",\u003cbr/\u003e\n\u0026nbsp;\u0026nbsp;\"name\": \"cdp lead 01\",\u003cbr/\u003e\n\u0026nbsp;\u0026nbsp;\"phone\": \"0939579163\"\u003cbr/\u003e\n\u0026nbsp;}\u003cbr/\u003e\n]\u003c/i\u003e",
                    "notSetText": "The Object Array-JSON Payload."
                  }
                ],
                "enablingConditions": [
                  {
                    "paramName": "radio_multi_item_input_type",
                    "paramValue": "JSON",
                    "type": "EQUALS"
                  }
                ]
              }
            ],
            "displayName": "Multi-Items",
            "groupStyle": "ZIPPY_CLOSED",
            "help": "Configure the Multi-Items object."
          },
          {
            "type": "GROUP",
            "name": "group_single_item",
            "subParams": [
              {
                "type": "SELECT",
                "name": "drop_down_single_item_count",
                "displayName": "Total number of items",
                "macrosInSelect": false,
                "selectItems": [
                  {
                    "value": 0,
                    "displayValue": "0"
                  },
                  {
                    "value": 1,
                    "displayValue": "1"
                  },
                  {
                    "value": 2,
                    "displayValue": "2"
                  },
                  {
                    "value": 3,
                    "displayValue": "3"
                  },
                  {
                    "value": 4,
                    "displayValue": "4"
                  },
                  {
                    "value": 5,
                    "displayValue": "5"
                  }
                ],
                "simpleValueType": true,
                "alwaysInSummary": true,
                "help": "Pick a total number of single items object this event could have. Maximum is 5 items.",
                "valueUnit": "object(s)",
                "defaultValue": 0
              },
              {
                "type": "GROUP",
                "name": "group_single_item_1",
                "displayName": "1st Single-Item",
                "groupStyle": "ZIPPY_OPEN",
                "subParams": [
                  {
                    "type": "TEXT",
                    "name": "text_single_item_1_type",
                    "displayName": "Data Object Type",
                    "simpleValueType": true,
                    "alwaysInSummary": true,
                    "help": "Input your 1st Data Object Type.",
                    "valueValidators": [
                      {
                        "type": "NON_EMPTY",
                        "errorMessage": "Your Data Object Type cannot be empty."
                      },
                      {
                        "type": "REGEX",
                        "args": [
                          "[a-z0-9_]+"
                        ],
                        "errorMessage": "Your Data Object Type contains characters other than a-z, 0-9, and underscore _."
                      }
                    ],
                    "valueHint": "lead",
                    "notSetText": "Your 1st Data Object Type."
                  },
                  {
                    "type": "TEXT",
                    "name": "text_single_item_1_id",
                    "displayName": "ID (*)",
                    "simpleValueType": true,
                    "valueHint": "862f42109690fa8cf5fe459f901cc91a",
                    "help": "Select the GTM Variable that returns Object ID in the current page.",
                    "valueValidators": [
                      {
                        "type": "NON_EMPTY",
                        "errorMessage": "Your Object ID cannot be empty."
                      }
                    ],
                    "alwaysInSummary": true,
                    "notSetText": "The 1st Object ID in the current page."
                  },
                  {
                    "type": "SIMPLE_TABLE",
                    "name": "table_single_item_1_attr",
                    "displayName": "Custom Attributes",
                    "simpleTableColumns": [
                      {
                        "defaultValue": "",
                        "displayName": "Attribute Code",
                        "name": "text_attr_code",
                        "type": "TEXT",
                        "selectItems": [],
                        "isUnique": true,
                        "valueHint": "stock_availability",
                        "valueValidators": [
                          {
                            "type": "NON_EMPTY",
                            "errorMessage": "Your Attribute Code cannot be empty."
                          },
                          {
                            "type": "REGEX",
                            "args": [
                              "[a-z0-9_]+"
                            ],
                            "errorMessage": "Your Attribute Code contains characters other than a-z, 0-9, and underscore _."
                          }
                        ]
                      },
                      {
                        "defaultValue": "",
                        "displayName": "Value",
                        "name": "text_attr_value",
                        "type": "TEXT",
                        "valueHint": "attribute_value_1"
                      }
                    ],
                    "newRowButtonText": "Add Attribute",
                    "alwaysInSummary": false
                  }
                ],
                "enablingConditions": [
                  {
                    "paramName": "drop_down_single_item_count",
                    "paramValue": 1,
                    "type": "EQUALS"
                  },
                  {
                    "paramName": "drop_down_single_item_count",
                    "paramValue": 2,
                    "type": "EQUALS"
                  },
                  {
                    "paramName": "drop_down_single_item_count",
                    "paramValue": 3,
                    "type": "EQUALS"
                  },
                  {
                    "paramName": "drop_down_single_item_count",
                    "paramValue": 4,
                    "type": "EQUALS"
                  },
                  {
                    "paramName": "drop_down_single_item_count",
                    "paramValue": 5,
                    "type": "EQUALS"
                  }
                ]
              },
              {
                "type": "GROUP",
                "name": "group_single_item_2",
                "displayName": "2nd Single-Item",
                "groupStyle": "ZIPPY_OPEN",
                "subParams": [
                  {
                    "type": "TEXT",
                    "name": "text_single_item_2_type",
                    "displayName": "Data Object Type",
                    "simpleValueType": true,
                    "alwaysInSummary": true,
                    "help": "Input your 2nd Data Object Type.",
                    "valueValidators": [
                      {
                        "type": "NON_EMPTY",
                        "errorMessage": "Your Data Object Type cannot be empty."
                      },
                      {
                        "type": "REGEX",
                        "args": [
                          "[a-z0-9_]+"
                        ],
                        "errorMessage": "Your Data Object Type contains characters other than a-z, 0-9, and underscore _."
                      }
                    ],
                    "valueHint": "lead",
                    "notSetText": "Your 2nd Data Object Type."
                  },
                  {
                    "type": "TEXT",
                    "name": "text_single_item_2_id",
                    "displayName": "ID (*)",
                    "simpleValueType": true,
                    "valueHint": "862f42109690fa8cf5fe459f901cc91a",
                    "help": "Select the GTM Variable that returns Object ID in the current page.",
                    "valueValidators": [
                      {
                        "type": "NON_EMPTY",
                        "errorMessage": "Your Object ID cannot be empty."
                      }
                    ],
                    "alwaysInSummary": true,
                    "notSetText": "The 2nd Object ID in the current page."
                  },
                  {
                    "type": "SIMPLE_TABLE",
                    "name": "table_single_item_2_attr",
                    "displayName": "Custom Attributes",
                    "simpleTableColumns": [
                      {
                        "defaultValue": "",
                        "displayName": "Attribute Code",
                        "name": "text_attr_code",
                        "type": "TEXT",
                        "selectItems": [],
                        "isUnique": true,
                        "valueHint": "stock_availability",
                        "valueValidators": [
                          {
                            "type": "NON_EMPTY",
                            "errorMessage": "Your Attribute Code cannot be empty."
                          },
                          {
                            "type": "REGEX",
                            "args": [
                              "[a-z0-9_]+"
                            ],
                            "errorMessage": "Your Attribute Code contains characters other than a-z, 0-9, and underscore _."
                          }
                        ]
                      },
                      {
                        "defaultValue": "",
                        "displayName": "Value",
                        "name": "text_attr_value",
                        "type": "TEXT",
                        "valueHint": "attribute_value_1"
                      }
                    ],
                    "newRowButtonText": "Add Attribute",
                    "alwaysInSummary": false
                  }
                ],
                "enablingConditions": [
                  {
                    "paramName": "drop_down_single_item_count",
                    "paramValue": 2,
                    "type": "EQUALS"
                  },
                  {
                    "paramName": "drop_down_single_item_count",
                    "paramValue": 3,
                    "type": "EQUALS"
                  },
                  {
                    "paramName": "drop_down_single_item_count",
                    "paramValue": 4,
                    "type": "EQUALS"
                  },
                  {
                    "paramName": "drop_down_single_item_count",
                    "paramValue": 5,
                    "type": "EQUALS"
                  }
                ]
              },
              {
                "type": "GROUP",
                "name": "group_single_item_3",
                "displayName": "3rd Single-Item",
                "groupStyle": "ZIPPY_OPEN",
                "subParams": [
                  {
                    "type": "TEXT",
                    "name": "text_single_item_3_type",
                    "displayName": "Data Object Type",
                    "simpleValueType": true,
                    "alwaysInSummary": true,
                    "help": "Input your 3rd Data Object Type.",
                    "valueValidators": [
                      {
                        "type": "NON_EMPTY",
                        "errorMessage": "Your Data Object Type cannot be empty."
                      },
                      {
                        "type": "REGEX",
                        "args": [
                          "[a-z0-9_]+"
                        ],
                        "errorMessage": "Your Data Object Type contains characters other than a-z, 0-9, and underscore _."
                      }
                    ],
                    "valueHint": "lead",
                    "notSetText": "Your 3rd Data Object Type."
                  },
                  {
                    "type": "TEXT",
                    "name": "text_single_item_3_id",
                    "displayName": "ID (*)",
                    "simpleValueType": true,
                    "valueHint": "862f42109690fa8cf5fe459f901cc91a",
                    "help": "Select the GTM Variable that returns Object ID in the current page.",
                    "valueValidators": [
                      {
                        "type": "NON_EMPTY",
                        "errorMessage": "Your Object ID cannot be empty."
                      }
                    ],
                    "alwaysInSummary": true,
                    "notSetText": "The 3rd Object ID in the current page."
                  },
                  {
                    "type": "SIMPLE_TABLE",
                    "name": "table_single_item_3_attr",
                    "displayName": "Custom Attributes",
                    "simpleTableColumns": [
                      {
                        "defaultValue": "",
                        "displayName": "Attribute Code",
                        "name": "text_attr_code",
                        "type": "TEXT",
                        "selectItems": [],
                        "isUnique": true,
                        "valueHint": "stock_availability",
                        "valueValidators": [
                          {
                            "type": "NON_EMPTY",
                            "errorMessage": "Your Attribute Code cannot be empty."
                          },
                          {
                            "type": "REGEX",
                            "args": [
                              "[a-z0-9_]+"
                            ],
                            "errorMessage": "Your Attribute Code contains characters other than a-z, 0-9, and underscore _."
                          }
                        ]
                      },
                      {
                        "defaultValue": "",
                        "displayName": "Value",
                        "name": "text_attr_value",
                        "type": "TEXT",
                        "valueHint": "attribute_value_1"
                      }
                    ],
                    "newRowButtonText": "Add Attribute",
                    "alwaysInSummary": false
                  }
                ],
                "enablingConditions": [
                  {
                    "paramName": "drop_down_single_item_count",
                    "paramValue": 3,
                    "type": "EQUALS"
                  },
                  {
                    "paramName": "drop_down_single_item_count",
                    "paramValue": 4,
                    "type": "EQUALS"
                  },
                  {
                    "paramName": "drop_down_single_item_count",
                    "paramValue": 5,
                    "type": "EQUALS"
                  }
                ]
              },
              {
                "type": "GROUP",
                "name": "group_single_item_4",
                "displayName": "4th Single-Item",
                "groupStyle": "ZIPPY_OPEN",
                "subParams": [
                  {
                    "type": "TEXT",
                    "name": "text_single_item_4_type",
                    "displayName": "Data Object Type",
                    "simpleValueType": true,
                    "alwaysInSummary": true,
                    "help": "Input your 4th Data Object Type.",
                    "valueValidators": [
                      {
                        "type": "NON_EMPTY",
                        "errorMessage": "Your Data Object Type cannot be empty."
                      },
                      {
                        "type": "REGEX",
                        "args": [
                          "[a-z0-9_]+"
                        ],
                        "errorMessage": "Your Data Object Type contains characters other than a-z, 0-9, and underscore _."
                      }
                    ],
                    "valueHint": "lead",
                    "notSetText": "Your 4th Data Object Type."
                  },
                  {
                    "type": "TEXT",
                    "name": "text_single_item_4_id",
                    "displayName": "ID (*)",
                    "simpleValueType": true,
                    "valueHint": "862f42109690fa8cf5fe459f901cc91a",
                    "help": "Select the GTM Variable that returns Object ID in the current page.",
                    "valueValidators": [
                      {
                        "type": "NON_EMPTY",
                        "errorMessage": "Your Object ID cannot be empty."
                      }
                    ],
                    "alwaysInSummary": true,
                    "notSetText": "The 4th Object ID in the current page."
                  },
                  {
                    "type": "SIMPLE_TABLE",
                    "name": "table_single_item_4_attr",
                    "displayName": "Custom Attributes",
                    "simpleTableColumns": [
                      {
                        "defaultValue": "",
                        "displayName": "Attribute Code",
                        "name": "text_attr_code",
                        "type": "TEXT",
                        "selectItems": [],
                        "isUnique": true,
                        "valueHint": "stock_availability",
                        "valueValidators": [
                          {
                            "type": "NON_EMPTY",
                            "errorMessage": "Your Attribute Code cannot be empty."
                          },
                          {
                            "type": "REGEX",
                            "args": [
                              "[a-z0-9_]+"
                            ],
                            "errorMessage": "Your Attribute Code contains characters other than a-z, 0-9, and underscore _."
                          }
                        ]
                      },
                      {
                        "defaultValue": "",
                        "displayName": "Value",
                        "name": "text_attr_value",
                        "type": "TEXT",
                        "valueHint": "attribute_value_1"
                      }
                    ],
                    "newRowButtonText": "Add Attribute",
                    "alwaysInSummary": false
                  }
                ],
                "enablingConditions": [
                  {
                    "paramName": "drop_down_single_item_count",
                    "paramValue": 4,
                    "type": "EQUALS"
                  },
                  {
                    "paramName": "drop_down_single_item_count",
                    "paramValue": 5,
                    "type": "EQUALS"
                  }
                ]
              },
              {
                "type": "GROUP",
                "name": "group_single_item_5",
                "displayName": "5th Single-Item",
                "groupStyle": "ZIPPY_OPEN",
                "subParams": [
                  {
                    "type": "TEXT",
                    "name": "text_single_item_5_type",
                    "displayName": "Data Object Type",
                    "simpleValueType": true,
                    "alwaysInSummary": true,
                    "help": "Input your 5th Data Object Type.",
                    "valueValidators": [
                      {
                        "type": "NON_EMPTY",
                        "errorMessage": "Your Data Object Type cannot be empty."
                      },
                      {
                        "type": "REGEX",
                        "args": [
                          "[a-z0-9_]+"
                        ],
                        "errorMessage": "Your Data Object Type contains characters other than a-z, 0-9, and underscore _."
                      }
                    ],
                    "valueHint": "lead",
                    "notSetText": "Your 5th Data Object Type."
                  },
                  {
                    "type": "TEXT",
                    "name": "text_single_item_5_id",
                    "displayName": "ID (*)",
                    "simpleValueType": true,
                    "valueHint": "862f42109690fa8cf5fe459f901cc91a",
                    "help": "Select the GTM Variable that returns Object ID in the current page.",
                    "valueValidators": [
                      {
                        "type": "NON_EMPTY",
                        "errorMessage": "Your Object ID cannot be empty."
                      }
                    ],
                    "alwaysInSummary": true,
                    "notSetText": "The 5th Object ID in the current page."
                  },
                  {
                    "type": "SIMPLE_TABLE",
                    "name": "table_single_item_5_attr",
                    "displayName": "Custom Attributes",
                    "simpleTableColumns": [
                      {
                        "defaultValue": "",
                        "displayName": "Attribute Code",
                        "name": "text_attr_code",
                        "type": "TEXT",
                        "selectItems": [],
                        "isUnique": true,
                        "valueHint": "stock_availability",
                        "valueValidators": [
                          {
                            "type": "NON_EMPTY",
                            "errorMessage": "Your Attribute Code cannot be empty."
                          },
                          {
                            "type": "REGEX",
                            "args": [
                              "[a-z0-9_]+"
                            ],
                            "errorMessage": "Your Attribute Code contains characters other than a-z, 0-9, and underscore _."
                          }
                        ]
                      },
                      {
                        "defaultValue": "",
                        "displayName": "Value",
                        "name": "text_attr_value",
                        "type": "TEXT",
                        "valueHint": "attribute_value_1"
                      }
                    ],
                    "newRowButtonText": "Add Attribute",
                    "alwaysInSummary": false
                  }
                ],
                "enablingConditions": [
                  {
                    "paramName": "drop_down_single_item_count",
                    "paramValue": 5,
                    "type": "EQUALS"
                  }
                ]
              }
            ],
            "displayName": "Single-Item",
            "groupStyle": "ZIPPY_CLOSED",
            "help": "Configure the Single-Item objects."
          },
          {
            "type": "GROUP",
            "name": "group_event_attribute",
            "subParams": [
              {
                "type": "SIMPLE_TABLE",
                "name": "table_event_attribute",
                "simpleTableColumns": [
                  {
                    "defaultValue": "",
                    "displayName": "Attribute Code",
                    "name": "event_attr_code",
                    "type": "TEXT",
                    "selectItems": [],
                    "isUnique": true,
                    "valueHint": "stock_availability",
                    "valueValidators": [
                      {
                        "type": "NON_EMPTY",
                        "errorMessage": "Your Attribute Code cannot be empty."
                      },
                      {
                        "type": "REGEX",
                        "args": [
                          "[a-z0-9_]+"
                        ],
                        "errorMessage": "Your Attribute Code contains characters other than a-z, 0-9, and underscore _."
                      }
                    ]
                  },
                  {
                    "defaultValue": "",
                    "displayName": "Value",
                    "name": "event_attr_value",
                    "type": "TEXT",
                    "valueHint": "attribute_value_1"
                  }
                ],
                "newRowButtonText": "Add Event Attribute",
                "alwaysInSummary": false
              }
            ],
            "displayName": "Event Attributes",
            "groupStyle": "ZIPPY_CLOSED",
            "help": "Configure the Event Attributes."
          }
        ],
        "enablingConditions": [
          {
            "paramName": "drop_down_event_type",
            "paramValue": "CUSTOM",
            "type": "EQUALS"
          }
        ]
      },
      {
        "type": "GROUP",
        "name": "group_customers",
        "subParams": [
          {
            "type": "RADIO",
            "name": "radio_customers_input_type",
            "displayName": "Input Type",
            "radioItems": [
              {
                "value": "SINGLE",
                "displayValue": "Single Entry",
                "help": "Configure customer information using attributes of a unique customer."
              },
              {
                "value": "JSON",
                "displayValue": "JSON Payload",
                "help": "Configure customer information by submitting a unique customer in JSON format."
              },
              {
                "value": "NONE",
                "displayValue": "None",
                "help": "Configure an empty customer information."
              }
            ],
            "simpleValueType": true,
            "defaultValue": "SINGLE"
          },
          {
            "type": "GROUP",
            "name": "group_single_customers",
            "subParams": [
              {
                "type": "TEXT",
                "name": "text_customers_id",
                "displayName": "Customer ID (*)",
                "simpleValueType": true,
                "valueHint": "e83bf4421a9260bc4bc7b0c1e4ff39ff",
                "help": "Select the GTM Variable that returns Customer ID in the current page.",
                "valueValidators": [
                  {
                    "type": "NON_EMPTY",
                    "errorMessage": "Your Customer ID cannot be empty."
                  }
                ],
                "alwaysInSummary": true,
                "notSetText": "The Customer ID in the current page."
              },
              {
                "type": "PARAM_TABLE",
                "name": "table_customers_attr",
                "displayName": "Customer Attributes",
                "paramTableColumns": [
                  {
                    "param": {
                      "type": "SELECT",
                      "name": "drop_down_attr_name",
                      "displayName": "Attribute Name",
                      "selectItems": [
                        {
                          "value": "name",
                          "displayValue": "Name"
                        },
                        {
                          "value": "email",
                          "displayValue": "Email"
                        },
                        {
                          "value": "phone",
                          "displayValue": "Phone"
                        },
                        {
                          "value": "custom",
                          "displayValue": "Custom"
                        }
                      ],
                      "simpleValueType": true,
                      "valueValidators": [
                        {
                          "type": "NON_EMPTY",
                          "errorMessage": "Please select an Attribute Name.",
                          "enablingConditions": [
                            {
                              "paramName": "drop_down_attr_name",
                              "paramValue": "custom",
                              "type": "NOT_EQUALS"
                            }
                          ]
                        }
                      ],
                      "help": "Choose from a list of CDP customer\u0027s predefined attributes.\u003cbr/\u003e\nSelect \u003ci\u003eCustom\u003c/i\u003e if you want to input your custom attribute\u0027s code instead.\u003cbr/\u003e\n\u003cstrong\u003e\u003cem\u003eNOTE:\u003c/em\u003e\u003c/strong\u003e If you add an attribute more than once, the value of the later one will be used in your event data."
                    },
                    "isUnique": false
                  },
                  {
                    "param": {
                      "type": "TEXT",
                      "name": "text_attr_code",
                      "displayName": "Attribute Code",
                      "simpleValueType": true,
                      "enablingConditions": [
                        {
                          "paramName": "drop_down_attr_name",
                          "paramValue": "custom",
                          "type": "EQUALS"
                        }
                      ],
                      "valueValidators": [
                        {
                          "type": "NON_EMPTY",
                          "enablingConditions": [
                            {
                              "paramName": "drop_down_attr_name",
                              "paramValue": "custom",
                              "type": "EQUALS"
                            }
                          ],
                          "errorMessage": "Your Attribute Code cannot be empty."
                        },
                        {
                          "type": "REGEX",
                          "args": [
                            "[a-z0-9_]+"
                          ],
                          "errorMessage": "Your Attribute Code contains characters other than a-z, 0-9, and underscore _.",
                          "enablingConditions": [
                            {
                              "paramName": "drop_down_attr_name",
                              "paramValue": "custom",
                              "type": "EQUALS"
                            }
                          ]
                        }
                      ],
                      "valueHint": "gender",
                      "help": "Input your custom attribute code.\u003cbr/\u003e\nLeave it blanks if you want to select from the list of CDP customer\u0027s predefined attributes."
                    },
                    "isUnique": true
                  },
                  {
                    "param": {
                      "type": "TEXT",
                      "name": "text_attr_value",
                      "displayName": "Attribute Value",
                      "simpleValueType": true,
                      "valueHint": ""
                    },
                    "isUnique": false
                  }
                ],
                "help": "Configure the Customer Attributes.",
                "newRowTitle": "Customer Attribute configuration",
                "newRowButtonText": "Add Attribute"
              }
            ],
            "enablingConditions": [
              {
                "paramName": "radio_customers_input_type",
                "paramValue": "SINGLE",
                "type": "EQUALS"
              }
            ],
            "groupStyle": "NO_ZIPPY"
          },
          {
            "type": "GROUP",
            "name": "group_json_customers",
            "groupStyle": "NO_ZIPPY",
            "subParams": [
              {
                "type": "TEXT",
                "name": "text_json_customers",
                "displayName": "JSON Payload (*)",
                "simpleValueType": true,
                "alwaysInSummary": true,
                "valueHint": "{\"customer_id\":\"e83bf4421a9260bc4bc7b0c1e4ff39ff\",\"name\":\"Miranda Stephens\",\"email\":\"miranda_stephens.bea.28.05.2006@gmail.com\",\"gender\":\"Male\",\"phone\":\"0900028583\"}",
                "help": "Select the GTM Variable that returns a JSON object containing the customer\u0027s attributes. The attribute \u003ci\u003e\u0027customer_id\u0027\u003c/i\u003e is required, the rest are optional.\u003cbr/\u003e\n\u003cstrong\u003e\u003cem\u003eExample:\u003c/em\u003e\u003c/strong\u003e\n{\u003cbr/\u003e\n\u0026nbsp;\"customer_id\": \"e83bf4421a9260bc4bc7b0c1e4ff39ff\",\u003cbr/\u003e\n\u0026nbsp;\"name\": \"Miranda Stephens\",\u003cbr/\u003e\n\u0026nbsp;\"email\": \"miranda_stephens.bea.28.05.2006@gmail.com\",\u003cbr/\u003e\n\u0026nbsp;\"gender\": \"Male\",\u003cbr/\u003e\n\u0026nbsp;\"phone\": \"0900028583\"\u003cbr/\u003e\n}\u003cbr/\u003e",
                "valueValidators": [
                  {
                    "type": "NON_EMPTY",
                    "errorMessage": "Your Customer JSON Payload cannot be empty."
                  }
                ],
                "notSetText": "The Customer JSON Payload."
              }
            ],
            "enablingConditions": [
              {
                "paramName": "radio_customers_input_type",
                "paramValue": "JSON",
                "type": "EQUALS"
              }
            ]
          }
        ],
        "enablingConditions": [
          {
            "paramName": "drop_down_event_type",
            "paramValue": "IDENTIFY",
            "type": "EQUALS"
          },
          {
            "paramName": "drop_down_event_type",
            "paramValue": "RETAIL",
            "type": "EQUALS"
          }
        ],
        "displayName": "Customer Variables",
        "groupStyle": "ZIPPY_OPEN"
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "group_global_setting",
    "displayName": "SDK Global Settings",
    "groupStyle": "ZIPPY_CLOSED",
    "subParams": [
      {
        "type": "TEXT",
        "name": "text_first_party_domain",
        "displayName": "First Party Domain",
        "simpleValueType": true,
        "alwaysInSummary": true,
        "help": "Configure the first-party domain for the SDK cookie management.",
        "valueHint": ".antsomi.com",
        "notSetText": "The first-party domain for the SDK cookie management."
      },
      {
        "type": "CHECKBOX",
        "name": "checkbox_has_main_script",
        "checkboxText": "Has Antsomi main script",
        "simpleValueType": true,
        "alwaysInSummary": true,
        "help": "Uncheck this if you have the Antsomi main script implemented in your website.",
        "defaultValue": true
      },
      {
        "type": "CHECKBOX",
        "name": "checkbox_prevent_default_event",
        "checkboxText": "Prevent Default Event",
        "simpleValueType": true,
        "defaultValue": false,
        "alwaysInSummary": true,
        "help": "Enable this option will prevent the SDK\u0027s default events (e.g. Page View event) from firing.\u003cbr/\u003e\n\u003cstrong\u003e\u003cem\u003eNOTE:\u003c/em\u003e\u003c/strong\u003e You will need to manually fire the \u003ci\u003ePage View Event\u003c/i\u003e so that the others could normally function."
      }
    ],
    "help": "(Advance) Configure the global settings, will affect all of the events data."
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

const callInWindow = require('callInWindow');
const copyFromWindow = require('copyFromWindow');
const createQueue = require('createQueue');
const injectScript = require('injectScript');
const getType = require('getType');
const JSON = require('JSON');
const log = require('logToConsole');
const makeNumber = require('makeNumber');
const makeString = require('makeString');
const queryPermission = require('queryPermission');
const setInWindow = require('setInWindow');

const ANTSOMI_MAIN_SCRIPT_URL = 'https://st-a.cdp.asia/insight.js';

// Field Constants
const CHECKBOX_HAS_MAIN_SCRIPT = 'checkbox_has_main_script';
const CHECKBOX_PREVENT_DEFAULT_EVENT = 'checkbox_prevent_default_event';

const DROP_DOWN_ATTRIBUTE_NAME = 'drop_down_attr_name';
const DROP_DOWN_EVENT_IDENTIFY = 'drop_down_event_identify';
const DROP_DOWN_EVENT_RETAIL = 'drop_down_event_retail';
const DROP_DOWN_EVENT_TYPE = 'drop_down_event_type';
const DROP_DOW_SINGLE_ITEM_COUNT = 'drop_down_single_item_count';

const TABLE_EVENT_ATTRIBUTE = 'table_event_attribute';

const TABLE_COLUMN_LINE_ITEM_ATTRIBUTE_CODE = 'line_item_attr_code';
const TABLE_COLUMN_LINE_ITEM_ATTRIBUTE_VALUE = 'line_item_attr_value';

const TEXT_ATTRIBUTE_CODE = 'text_attr_code';
const TEXT_ATTRIBUTE_VALUE = 'text_attr_value';
const TEXT_CART_ITEM_COUNT = 'text_cart_item_count';
const TEXT_CART_SUBTOTAL = 'text_cart_subtotal';
const TEXT_CDP_PROPERTY_ID = 'text_cdp_property_id';
const TEXT_EVENT_ACTION = 'text_event_action';
const TEXT_EVENT_CATEGORY = 'text_event_category';
const TEXT_FIRST_PARTY_DOMAIN = 'text_first_party_domain';
const TEXT_MULTI_ITEM_TYPE = 'text_multi_item_type';
const TEXT_PAGE_TYPE = 'text_page_type';
const TEXT_PAGE_CATEGORY = 'text_page_category';
const TEXT_PORTAL_ID = 'text_portal_id';
const TEXT_PROMOTION_CODE = 'text_promotion_code';
const TEXT_PROP_ID = 'text_prop_id';
const TEXT_SEARCH_KEYWORD = 'text_search_keyword';

// log('CDP Debug >> data = ', data);
//

// Utils Functions
const getObjectFromSettings = (keyField, keyType) => {
    const inputType = data['radio_' + keyField + '_input_type'];
    const objectType = keyType || keyField;

    let object;
    switch (inputType) {
        case 'SINGLE': {
            object = {};
            object.type = objectType;

            switch (objectType) {
                case 'customers': {
                    object.customer_id = data['text_' + keyField + '_id'];
                    break;
                }
                case 'users': {
                    object.user_id = data['text_' + keyField + '_id'];
                    break;
                }
                default: {
                    object.id = data['text_' + keyField + '_id'];
                }
            }

            const tableAttr = data['table_' + keyField + '_attr'];
            if (getType(tableAttr) === 'array') {
                for (let i = 0; i < tableAttr.length; i++) {
                    let attrCode = tableAttr[i][DROP_DOWN_ATTRIBUTE_NAME];
                    let attrValue = tableAttr[i][TEXT_ATTRIBUTE_VALUE];

                    if (attrCode === 'custom') {
                        attrCode = tableAttr[i][TEXT_ATTRIBUTE_CODE];   
                    }

                    object[attrCode] = attrValue;
                }
            }

            const tableLineItemAttr = data['table_' + keyField + '_line_item_attr'];
            if (getType(tableLineItemAttr) === 'array') {
                for (let i = 0; i < tableLineItemAttr.length; i++) {
                    let attrCode = tableLineItemAttr[i][TABLE_COLUMN_LINE_ITEM_ATTRIBUTE_CODE];
                    let attrValue = tableLineItemAttr[i][TABLE_COLUMN_LINE_ITEM_ATTRIBUTE_VALUE];

                    object[attrCode] = attrValue;
                }
            }

            break;
        }
        case 'JSON': {
            const jsonStr = data['text_json_' + keyField];
            const jsonObject = getType(jsonStr) === 'string' ? JSON.parse(jsonStr) : jsonStr;
            if (getType(jsonObject) === 'object') {
                jsonObject.type = objectType;
                object = jsonObject;
            }
            else if (getType(jsonObject) === 'array') {
                for (let i = 0; i < jsonObject.length; i++) {
                    jsonObject[i].type = objectType;
                }

                object = jsonObject;
            }

            if (!object) {
                object = {};
            }

            break;
        }
    }

    return object;
};
const getObjectArrayFromSetting = (keyField, keyType) => {
    return [].concat(getObjectFromSettings(keyField, keyType));
};

const getWebEvent = () => {
    // Return the existing 'web_event' global method if available
    const web_event = copyFromWindow('web_event');
    if (web_event) {
        return web_event;
    }

    const partnerSettings = getPartnerSettings();

    // Initialize the 'web_event' global method to either use web_event.queue    
    setInWindow('web_event', function () {
        callInWindow('web_event.queue.push', arguments);
    });
    // Set the given portalId in window at the given _portalId
    setInWindow('_portalId', partnerSettings.portalId, true);
    // Set the given propId in window at the given _propId
    setInWindow('_propId', partnerSettings.propId, true);
    // Set the _ATM_TRACKING_ASSOCIATE_UTM
    setInWindow('_ATM_TRACKING_ASSOCIATE_UTM', 0, true);
    // Set the given web_event in window at the given web_event.track
    setInWindow('web_event.track', web_event, true);

    // Create the web_event.queue
    createQueue('web_event.queue');

    // Return the global 'web_event' method, created above
    return copyFromWindow('web_event');
};

// Event Configs Functions
const getPartnerSettings = () => {
    const portalId = data[TEXT_PORTAL_ID];
    const propId = data[TEXT_PROP_ID];

    return { portalId: portalId, propId: propId };
};

const getEventSettings = () => {
    const eventType = data[DROP_DOWN_EVENT_TYPE];

    switch (eventType) {
        case 'RETAIL': {
            return getEventRetailSettings();
        }
        case 'IDENTIFY': {
            return getEventIdentifySettigs();
        }
        case 'PAGE_VIEW': {
            return getEventPageViewSettigs();
        }
        case 'CUSTOM': {
            return getEventCustomSettigs();
        }
    }
};

const getGlobalSettings = () => {
    const firstPartyDomain = data[TEXT_FIRST_PARTY_DOMAIN];
    const hasMainScript = data[CHECKBOX_HAS_MAIN_SCRIPT];
    const preventDefaultEvent = data[CHECKBOX_PREVENT_DEFAULT_EVENT];

    return { firstPartyDomain: firstPartyDomain, hasMainScript: hasMainScript, preventDefaultEvent: preventDefaultEvent };
};

const getEventCustomSettigs = () => {
    const ec = data[TEXT_EVENT_CATEGORY];
    const ea = data[TEXT_EVENT_ACTION];

    let items = [];
    let dims = {}, extra = {};

    // Get multi-items object
    let itemType = data[TEXT_MULTI_ITEM_TYPE];
    if (itemType) {
        items = getObjectArrayFromSetting('multi_item', itemType);
    }

    // Get single-item objects
    const singleItemCount = makeNumber(data[DROP_DOW_SINGLE_ITEM_COUNT]);
    for (let i = 1; i <= singleItemCount; i++) {
        let itemType = data['text_single_item_' + makeString(i) + '_type'];
        if (itemType) {
            dims[itemType] = getObjectFromSettings('single_item_' + makeString(i), itemType);
        }
    }

    // Get event attributes
    const tableEventAttr = data[TABLE_EVENT_ATTRIBUTE];
    if (getType(tableEventAttr) === 'array') {
        for (let i = 0; i < tableEventAttr.length; i++) {
            let attrCode = tableEventAttr[i]['event_attr_code'];
            let attrValue = tableEventAttr[i]['event_attr_value'];

            extra[attrCode] = attrValue;
        }
    }

    return { ec: ec, ea: ea, items: items, dims: dims, extra: extra };
};

const getEventIdentifySettigs = () => {
    const eventName = data[DROP_DOWN_EVENT_IDENTIFY];

    let ec = '', ea = '';
    let items = [];
    let dims = {}, extra = {};

    // Get customers
    const customers = getObjectFromSettings('customers');
    if (customers && customers.customer_id) {
        dims.customers = customers;
        extra.identify_id = customers.customer_id;
    }

    // Get common event attributes
    extra.identify_event = eventName.toLowerCase();

    // Get event specific attributes
    switch (eventName) {
        case 'SIGN_IN': {
            ec = 'user';
            ea = 'sign_in';

            break;
        }
        case 'SIGN_UP': {
            ec = 'user';
            ea = 'sign_up';

            break;
        }
        case 'IDENTIFY': {
            ec = 'user';
            ea = 'identify';

            break;
        }
    }

    return { ec: ec, ea: ea, items: items, dims: dims, extra: extra };
};

const getEventPageViewSettigs = () => {
    let ec = 'pageview', ea = 'view';
    let items = [];
    let dims = {}, extra = {};

    // Get customers
    const customers = getObjectFromSettings('customers');
    if (customers && customers.customer_id) {
        dims.customers = customers;
        extra.identify_id = customers.customer_id;
    }

    // Get common event attributes
    extra.page_type = data[TEXT_PAGE_TYPE];
    extra.page_category = data[TEXT_PAGE_CATEGORY];

    return { ec: ec, ea: ea, items: items, dims: dims, extra: extra };
};

const getEventRetailSettings = () => {
    const eventName = data[DROP_DOWN_EVENT_RETAIL];

    let ec = '', ea = '';
    let items = [];
    let dims = {}, extra = {};

    // Get customers
    const customers = getObjectFromSettings('customers');
    if (customers && customers.customer_id) {
        dims.customers = customers;
        extra.identify_id = customers.customer_id;
    }

    // Get common event attributes
    extra.identify_event = eventName.toLowerCase();

    if (eventName === 'PROMOTION_CODE_USED') {
        ec = 'promotion_code';
        ea = 'used';

        // Get items
        items.push({
            type: 'promotion_code',
            id: data[TEXT_PROMOTION_CODE],
            name: data[TEXT_PROMOTION_CODE],
            code_status: 4
        });

        // Get purchase
        const purchase = getObjectFromSettings('purchase');
        if (purchase && purchase.id) {
            dims.purchase = {
                id: purchase.id
            };

            extra.order_id = purchase.id;
        }

        // Get event attributes
        extra.cdp_property_id = data[TEXT_CDP_PROPERTY_ID];
    }
    else {
        // Get products
        items = getObjectArrayFromSetting('product');

        // Get event specific attributes
        switch (eventName) {
            case 'VIEW_PRODUCT': {
                ec = 'product';
                ea = 'view';

                break;
            }
            case 'ADD_TO_CART': {
                ec = 'product';
                ea = 'add_to_cart';
            }
            case 'VIEW_CART': {
                ec = ec || 'product';
                ea = ea || 'view_cart';
            }
            case 'REMOVE_CART': {
                ec = ec || 'product';
                ea = ea || 'remove_cart';
            }
            case 'CHECKOUT': {
                ec = ec || 'product';
                ea = ea || 'checkout';

                extra.cart_subtotal = makeNumber(data[TEXT_CART_SUBTOTAL]);
                extra.cart_item_count = makeNumber(data[TEXT_CART_ITEM_COUNT]);

                break;
            }
            case 'PURCHASE': {
                ec = 'product';
                ea = 'purchase';

                // Get purchase
                const purchase = getObjectFromSettings('purchase');
                if (purchase && purchase.id) {
                    if (customers && customers.customer_id) {
                        purchase.customer_id = customers.customer_id;
                    }

                    if (customers && customers.name) {
                        purchase.customer_name = customers.name;
                    }

                    if (purchase.revenue) {
                        extra.revenue = makeNumber(purchase.revenue);
                    }

                    if (purchase.promotion_code) {
                        extra.promotion_code = purchase.promotion_code;
                    }

                    dims.purchase = purchase;
                    extra.order_id = purchase.id;
                }

                break;
            }
            case 'SEARCH_PRODUCT': {
                ec = 'browsing';
                ea = 'product_search';

                extra.src_search_term = data[TEXT_SEARCH_KEYWORD];

                break;
            }
        }
    }

    return { ec: ec, ea: ea, items: items, dims: dims, extra: extra };
};

const main = () => {
    const eventSettings = getEventSettings();
    const globalSettings = getGlobalSettings();

    // Config global settings
    let _cdp365Analytics = copyFromWindow('_cdp365Analytics');
    _cdp365Analytics = getType(_cdp365Analytics) === 'object' ? _cdp365Analytics : {};

    _cdp365Analytics.default_event = globalSettings.preventDefaultEvent ? 0 : 1;
    _cdp365Analytics.first_party_domain = globalSettings.firstPartyDomain;

    setInWindow('_cdp365Analytics', _cdp365Analytics, true);

    // Config event data
    const web_event = getWebEvent();

    if (globalSettings.hasMainScript) {
        web_event.track(eventSettings.ec, eventSettings.ea, {
            items: eventSettings.items,
            dims: eventSettings.dims,
            extra: eventSettings.extra
        });

        data.gtmOnSuccess();
    }
    else {
        if (queryPermission('inject_script', ANTSOMI_MAIN_SCRIPT_URL)) {
            injectScript(
                ANTSOMI_MAIN_SCRIPT_URL,
                () => {
                    web_event.track(eventSettings.ec, eventSettings.ea, {
                        items: eventSettings.items,
                        dims: eventSettings.dims,
                        extra: eventSettings.extra
                    });

                    data.gtmOnSuccess();
                },
                (e) => {
                    // log("CDP Debug >> error = ", e);
                    data.gtmOnFailure();
                }
            );
        } else {
            // log("CDP Debug >> error = Script load failed due to permissions mismatch");            
            data.gtmOnFailure();
        }
    }
};

main();


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "inject_script",
        "versionId": "1"
      },
      "param": [
        {
          "key": "urls",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "https://st-a.cdp.asia/insight.js"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "access_globals",
        "versionId": "1"
      },
      "param": [
        {
          "key": "keys",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "web_event"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "portalId"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "propId"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "web_event.queue"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "web_event.track"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "web_event.queue.push"
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "_portalId"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "_propId"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "_ATM_TRACKING_ASSOCIATE_UTM"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "_cdp365Analytics"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "logging",
        "versionId": "1"
      },
      "param": [
        {
          "key": "environments",
          "value": {
            "type": 1,
            "string": "debug"
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  }
]


___TESTS___

scenarios:
- name: Quick Test
  code: runCode();
setup: ''


___NOTES___

Created on 14/6/2023, 13:21:24


