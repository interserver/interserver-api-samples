#' Create a new ServerBillingDetails
#'
#' @description
#' Billing information for a dedicated server service including payment status, billing cycle, and cost.
#'
#' @docType class
#' @title ServerBillingDetails
#' @description ServerBillingDetails Class
#' @format An \code{R6Class} generator object
#' @field service_last_invoice_date  character [optional]
#' @field service_payment_status  character [optional]
#' @field service_frequency  character [optional]
#' @field next_date  character [optional]
#' @field service_next_invoice_date  character [optional]
#' @field service_currency  character [optional]
#' @field service_currency_symbol  character [optional]
#' @field service_cost_info  character [optional]
#' @field service_extra  list(character) [optional]
#' @field service_extra_json  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ServerBillingDetails <- R6::R6Class(
  "ServerBillingDetails",
  public = list(
    `service_last_invoice_date` = NULL,
    `service_payment_status` = NULL,
    `service_frequency` = NULL,
    `next_date` = NULL,
    `service_next_invoice_date` = NULL,
    `service_currency` = NULL,
    `service_currency_symbol` = NULL,
    `service_cost_info` = NULL,
    `service_extra` = NULL,
    `service_extra_json` = NULL,

    #' @description
    #' Initialize a new ServerBillingDetails class.
    #'
    #' @param service_last_invoice_date service_last_invoice_date
    #' @param service_payment_status service_payment_status
    #' @param service_frequency service_frequency
    #' @param next_date next_date
    #' @param service_next_invoice_date service_next_invoice_date
    #' @param service_currency service_currency
    #' @param service_currency_symbol service_currency_symbol
    #' @param service_cost_info service_cost_info
    #' @param service_extra service_extra
    #' @param service_extra_json service_extra_json
    #' @param ... Other optional arguments.
    initialize = function(`service_last_invoice_date` = NULL, `service_payment_status` = NULL, `service_frequency` = NULL, `next_date` = NULL, `service_next_invoice_date` = NULL, `service_currency` = NULL, `service_currency_symbol` = NULL, `service_cost_info` = NULL, `service_extra` = NULL, `service_extra_json` = NULL, ...) {
      if (!is.null(`service_last_invoice_date`)) {
        if (!(is.character(`service_last_invoice_date`) && length(`service_last_invoice_date`) == 1)) {
          stop(paste("Error! Invalid data for `service_last_invoice_date`. Must be a string:", `service_last_invoice_date`))
        }
        self$`service_last_invoice_date` <- `service_last_invoice_date`
      }
      if (!is.null(`service_payment_status`)) {
        if (!(is.character(`service_payment_status`) && length(`service_payment_status`) == 1)) {
          stop(paste("Error! Invalid data for `service_payment_status`. Must be a string:", `service_payment_status`))
        }
        self$`service_payment_status` <- `service_payment_status`
      }
      if (!is.null(`service_frequency`)) {
        if (!(is.character(`service_frequency`) && length(`service_frequency`) == 1)) {
          stop(paste("Error! Invalid data for `service_frequency`. Must be a string:", `service_frequency`))
        }
        self$`service_frequency` <- `service_frequency`
      }
      if (!is.null(`next_date`)) {
        if (!(is.character(`next_date`) && length(`next_date`) == 1)) {
          stop(paste("Error! Invalid data for `next_date`. Must be a string:", `next_date`))
        }
        self$`next_date` <- `next_date`
      }
      if (!is.null(`service_next_invoice_date`)) {
        if (!(is.character(`service_next_invoice_date`) && length(`service_next_invoice_date`) == 1)) {
          stop(paste("Error! Invalid data for `service_next_invoice_date`. Must be a string:", `service_next_invoice_date`))
        }
        self$`service_next_invoice_date` <- `service_next_invoice_date`
      }
      if (!is.null(`service_currency`)) {
        if (!(is.character(`service_currency`) && length(`service_currency`) == 1)) {
          stop(paste("Error! Invalid data for `service_currency`. Must be a string:", `service_currency`))
        }
        self$`service_currency` <- `service_currency`
      }
      if (!is.null(`service_currency_symbol`)) {
        if (!(is.character(`service_currency_symbol`) && length(`service_currency_symbol`) == 1)) {
          stop(paste("Error! Invalid data for `service_currency_symbol`. Must be a string:", `service_currency_symbol`))
        }
        self$`service_currency_symbol` <- `service_currency_symbol`
      }
      if (!is.null(`service_cost_info`)) {
        if (!(is.character(`service_cost_info`) && length(`service_cost_info`) == 1)) {
          stop(paste("Error! Invalid data for `service_cost_info`. Must be a string:", `service_cost_info`))
        }
        self$`service_cost_info` <- `service_cost_info`
      }
      if (!is.null(`service_extra`)) {
        stopifnot(is.vector(`service_extra`), length(`service_extra`) != 0)
        sapply(`service_extra`, function(x) stopifnot(is.character(x)))
        self$`service_extra` <- `service_extra`
      }
      if (!is.null(`service_extra_json`)) {
        if (!(is.character(`service_extra_json`) && length(`service_extra_json`) == 1)) {
          stop(paste("Error! Invalid data for `service_extra_json`. Must be a string:", `service_extra_json`))
        }
        self$`service_extra_json` <- `service_extra_json`
      }
    },

    #' @description
    #' Convert to an R object. This method is deprecated. Use `toSimpleType()` instead.
    toJSON = function() {
      .Deprecated(new = "toSimpleType", msg = "Use the '$toSimpleType()' method instead since that is more clearly named. Use '$toJSONString()' to get a JSON string")
      return(self$toSimpleType())
    },

    #' @description
    #' Convert to a List
    #'
    #' Convert the R6 object to a list to work more easily with other tooling.
    #'
    #' @return ServerBillingDetails as a base R list.
    #' @examples
    #' # convert array of ServerBillingDetails (x) to a data frame
    #' \dontrun{
    #' library(purrr)
    #' library(tibble)
    #' df <- x |> map(\(y)y$toList()) |> map(as_tibble) |> list_rbind()
    #' df
    #' }
    toList = function() {
      return(self$toSimpleType())
    },

    #' @description
    #' Convert ServerBillingDetails to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ServerBillingDetailsObject <- list()
      if (!is.null(self$`service_last_invoice_date`)) {
        ServerBillingDetailsObject[["service_last_invoice_date"]] <-
          self$`service_last_invoice_date`
      }
      if (!is.null(self$`service_payment_status`)) {
        ServerBillingDetailsObject[["service_payment_status"]] <-
          self$`service_payment_status`
      }
      if (!is.null(self$`service_frequency`)) {
        ServerBillingDetailsObject[["service_frequency"]] <-
          self$`service_frequency`
      }
      if (!is.null(self$`next_date`)) {
        ServerBillingDetailsObject[["next_date"]] <-
          self$`next_date`
      }
      if (!is.null(self$`service_next_invoice_date`)) {
        ServerBillingDetailsObject[["service_next_invoice_date"]] <-
          self$`service_next_invoice_date`
      }
      if (!is.null(self$`service_currency`)) {
        ServerBillingDetailsObject[["service_currency"]] <-
          self$`service_currency`
      }
      if (!is.null(self$`service_currency_symbol`)) {
        ServerBillingDetailsObject[["service_currency_symbol"]] <-
          self$`service_currency_symbol`
      }
      if (!is.null(self$`service_cost_info`)) {
        ServerBillingDetailsObject[["service_cost_info"]] <-
          self$`service_cost_info`
      }
      if (!is.null(self$`service_extra`)) {
        ServerBillingDetailsObject[["service_extra"]] <-
          self$`service_extra`
      }
      if (!is.null(self$`service_extra_json`)) {
        ServerBillingDetailsObject[["service_extra_json"]] <-
          self$`service_extra_json`
      }
      return(ServerBillingDetailsObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ServerBillingDetails
    #'
    #' @param input_json the JSON input
    #' @return the instance of ServerBillingDetails
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`service_last_invoice_date`)) {
        self$`service_last_invoice_date` <- this_object$`service_last_invoice_date`
      }
      if (!is.null(this_object$`service_payment_status`)) {
        self$`service_payment_status` <- this_object$`service_payment_status`
      }
      if (!is.null(this_object$`service_frequency`)) {
        self$`service_frequency` <- this_object$`service_frequency`
      }
      if (!is.null(this_object$`next_date`)) {
        self$`next_date` <- this_object$`next_date`
      }
      if (!is.null(this_object$`service_next_invoice_date`)) {
        self$`service_next_invoice_date` <- this_object$`service_next_invoice_date`
      }
      if (!is.null(this_object$`service_currency`)) {
        self$`service_currency` <- this_object$`service_currency`
      }
      if (!is.null(this_object$`service_currency_symbol`)) {
        self$`service_currency_symbol` <- this_object$`service_currency_symbol`
      }
      if (!is.null(this_object$`service_cost_info`)) {
        self$`service_cost_info` <- this_object$`service_cost_info`
      }
      if (!is.null(this_object$`service_extra`)) {
        self$`service_extra` <- ApiClient$new()$deserializeObj(this_object$`service_extra`, "array[character]", loadNamespace("interserverapi"))
      }
      if (!is.null(this_object$`service_extra_json`)) {
        self$`service_extra_json` <- this_object$`service_extra_json`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ServerBillingDetails in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ServerBillingDetails
    #'
    #' @param input_json the JSON input
    #' @return the instance of ServerBillingDetails
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`service_last_invoice_date` <- this_object$`service_last_invoice_date`
      self$`service_payment_status` <- this_object$`service_payment_status`
      self$`service_frequency` <- this_object$`service_frequency`
      self$`next_date` <- this_object$`next_date`
      self$`service_next_invoice_date` <- this_object$`service_next_invoice_date`
      self$`service_currency` <- this_object$`service_currency`
      self$`service_currency_symbol` <- this_object$`service_currency_symbol`
      self$`service_cost_info` <- this_object$`service_cost_info`
      self$`service_extra` <- ApiClient$new()$deserializeObj(this_object$`service_extra`, "array[character]", loadNamespace("interserverapi"))
      self$`service_extra_json` <- this_object$`service_extra_json`
      self
    },

    #' @description
    #' Validate JSON input with respect to ServerBillingDetails and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ServerBillingDetails
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      TRUE
    },

    #' @description
    #' Return a list of invalid fields (if any).
    #'
    #' @return A list of invalid fields (if any).
    getInvalidFields = function() {
      invalid_fields <- list()
      invalid_fields
    },

    #' @description
    #' Print the object
    print = function() {
      print(jsonlite::prettify(self$toJSONString()))
      invisible(self)
    }
  ),
  # Lock the class to prevent modifications to the method or field
  lock_class = TRUE
)
## Uncomment below to unlock the class to allow modifications of the method or field
# ServerBillingDetails$unlock()
#
## Below is an example to define the print function
# ServerBillingDetails$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ServerBillingDetails$lock()

