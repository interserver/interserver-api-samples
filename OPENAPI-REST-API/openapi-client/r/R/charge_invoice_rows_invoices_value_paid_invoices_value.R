#' Create a new ChargeInvoiceRowsInvoicesValuePaidInvoicesValue
#'
#' @description
#' ChargeInvoiceRowsInvoicesValuePaidInvoicesValue Class
#'
#' @docType class
#' @title ChargeInvoiceRowsInvoicesValuePaidInvoicesValue
#' @description ChargeInvoiceRowsInvoicesValuePaidInvoicesValue Class
#' @format An \code{R6Class} generator object
#' @field invoices_id  character [optional]
#' @field invoices_description  character [optional]
#' @field invoices_amount  numeric [optional]
#' @field invoices_date  character [optional]
#' @field invoices_currency  character [optional]
#' @field currency_symbol  character [optional]
#' @field invoices_date_formatted  character [optional]
#' @field payment_type  character [optional]
#' @field refund_invoices This is optional when refund is present this will show named list(\link{ChargeInvoiceRowsInvoicesValuePaidInvoicesValueRefundInvoicesValue}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ChargeInvoiceRowsInvoicesValuePaidInvoicesValue <- R6::R6Class(
  "ChargeInvoiceRowsInvoicesValuePaidInvoicesValue",
  public = list(
    `invoices_id` = NULL,
    `invoices_description` = NULL,
    `invoices_amount` = NULL,
    `invoices_date` = NULL,
    `invoices_currency` = NULL,
    `currency_symbol` = NULL,
    `invoices_date_formatted` = NULL,
    `payment_type` = NULL,
    `refund_invoices` = NULL,

    #' @description
    #' Initialize a new ChargeInvoiceRowsInvoicesValuePaidInvoicesValue class.
    #'
    #' @param invoices_id invoices_id
    #' @param invoices_description invoices_description
    #' @param invoices_amount invoices_amount
    #' @param invoices_date invoices_date
    #' @param invoices_currency invoices_currency
    #' @param currency_symbol currency_symbol
    #' @param invoices_date_formatted invoices_date_formatted
    #' @param payment_type payment_type
    #' @param refund_invoices This is optional when refund is present this will show
    #' @param ... Other optional arguments.
    initialize = function(`invoices_id` = NULL, `invoices_description` = NULL, `invoices_amount` = NULL, `invoices_date` = NULL, `invoices_currency` = NULL, `currency_symbol` = NULL, `invoices_date_formatted` = NULL, `payment_type` = NULL, `refund_invoices` = NULL, ...) {
      if (!is.null(`invoices_id`)) {
        if (!(is.character(`invoices_id`) && length(`invoices_id`) == 1)) {
          stop(paste("Error! Invalid data for `invoices_id`. Must be a string:", `invoices_id`))
        }
        self$`invoices_id` <- `invoices_id`
      }
      if (!is.null(`invoices_description`)) {
        if (!(is.character(`invoices_description`) && length(`invoices_description`) == 1)) {
          stop(paste("Error! Invalid data for `invoices_description`. Must be a string:", `invoices_description`))
        }
        self$`invoices_description` <- `invoices_description`
      }
      if (!is.null(`invoices_amount`)) {
        self$`invoices_amount` <- `invoices_amount`
      }
      if (!is.null(`invoices_date`)) {
        if (!(is.character(`invoices_date`) && length(`invoices_date`) == 1)) {
          stop(paste("Error! Invalid data for `invoices_date`. Must be a string:", `invoices_date`))
        }
        self$`invoices_date` <- `invoices_date`
      }
      if (!is.null(`invoices_currency`)) {
        if (!(is.character(`invoices_currency`) && length(`invoices_currency`) == 1)) {
          stop(paste("Error! Invalid data for `invoices_currency`. Must be a string:", `invoices_currency`))
        }
        self$`invoices_currency` <- `invoices_currency`
      }
      if (!is.null(`currency_symbol`)) {
        if (!(is.character(`currency_symbol`) && length(`currency_symbol`) == 1)) {
          stop(paste("Error! Invalid data for `currency_symbol`. Must be a string:", `currency_symbol`))
        }
        self$`currency_symbol` <- `currency_symbol`
      }
      if (!is.null(`invoices_date_formatted`)) {
        if (!(is.character(`invoices_date_formatted`) && length(`invoices_date_formatted`) == 1)) {
          stop(paste("Error! Invalid data for `invoices_date_formatted`. Must be a string:", `invoices_date_formatted`))
        }
        self$`invoices_date_formatted` <- `invoices_date_formatted`
      }
      if (!is.null(`payment_type`)) {
        if (!(is.character(`payment_type`) && length(`payment_type`) == 1)) {
          stop(paste("Error! Invalid data for `payment_type`. Must be a string:", `payment_type`))
        }
        self$`payment_type` <- `payment_type`
      }
      if (!is.null(`refund_invoices`)) {
        stopifnot(is.vector(`refund_invoices`), length(`refund_invoices`) != 0)
        sapply(`refund_invoices`, function(x) stopifnot(R6::is.R6(x)))
        self$`refund_invoices` <- `refund_invoices`
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
    #' @return ChargeInvoiceRowsInvoicesValuePaidInvoicesValue as a base R list.
    #' @examples
    #' # convert array of ChargeInvoiceRowsInvoicesValuePaidInvoicesValue (x) to a data frame
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
    #' Convert ChargeInvoiceRowsInvoicesValuePaidInvoicesValue to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ChargeInvoiceRowsInvoicesValuePaidInvoicesValueObject <- list()
      if (!is.null(self$`invoices_id`)) {
        ChargeInvoiceRowsInvoicesValuePaidInvoicesValueObject[["invoices_id"]] <-
          self$`invoices_id`
      }
      if (!is.null(self$`invoices_description`)) {
        ChargeInvoiceRowsInvoicesValuePaidInvoicesValueObject[["invoices_description"]] <-
          self$`invoices_description`
      }
      if (!is.null(self$`invoices_amount`)) {
        ChargeInvoiceRowsInvoicesValuePaidInvoicesValueObject[["invoices_amount"]] <-
          self$`invoices_amount`
      }
      if (!is.null(self$`invoices_date`)) {
        ChargeInvoiceRowsInvoicesValuePaidInvoicesValueObject[["invoices_date"]] <-
          self$`invoices_date`
      }
      if (!is.null(self$`invoices_currency`)) {
        ChargeInvoiceRowsInvoicesValuePaidInvoicesValueObject[["invoices_currency"]] <-
          self$`invoices_currency`
      }
      if (!is.null(self$`currency_symbol`)) {
        ChargeInvoiceRowsInvoicesValuePaidInvoicesValueObject[["currency_symbol"]] <-
          self$`currency_symbol`
      }
      if (!is.null(self$`invoices_date_formatted`)) {
        ChargeInvoiceRowsInvoicesValuePaidInvoicesValueObject[["invoices_date_formatted"]] <-
          self$`invoices_date_formatted`
      }
      if (!is.null(self$`payment_type`)) {
        ChargeInvoiceRowsInvoicesValuePaidInvoicesValueObject[["payment_type"]] <-
          self$`payment_type`
      }
      if (!is.null(self$`refund_invoices`)) {
        ChargeInvoiceRowsInvoicesValuePaidInvoicesValueObject[["refund_invoices"]] <-
          self$extractSimpleType(self$`refund_invoices`)
      }
      return(ChargeInvoiceRowsInvoicesValuePaidInvoicesValueObject)
    },

    extractSimpleType = function(x) {
      if (R6::is.R6(x)) {
        return(x$toSimpleType())
      } else if (!self$hasNestedR6(x)) {
        return(x)
      }
      lapply(x, self$extractSimpleType)
    },

    hasNestedR6 = function(x) {
      if (R6::is.R6(x)) {
        return(TRUE)
      }
      if (is.list(x)) {
        for (item in x) {
          if (self$hasNestedR6(item)) {
            return(TRUE)
          }
        }
      }
      FALSE
    },

    #' @description
    #' Deserialize JSON string into an instance of ChargeInvoiceRowsInvoicesValuePaidInvoicesValue
    #'
    #' @param input_json the JSON input
    #' @return the instance of ChargeInvoiceRowsInvoicesValuePaidInvoicesValue
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`invoices_id`)) {
        self$`invoices_id` <- this_object$`invoices_id`
      }
      if (!is.null(this_object$`invoices_description`)) {
        self$`invoices_description` <- this_object$`invoices_description`
      }
      if (!is.null(this_object$`invoices_amount`)) {
        self$`invoices_amount` <- this_object$`invoices_amount`
      }
      if (!is.null(this_object$`invoices_date`)) {
        self$`invoices_date` <- this_object$`invoices_date`
      }
      if (!is.null(this_object$`invoices_currency`)) {
        self$`invoices_currency` <- this_object$`invoices_currency`
      }
      if (!is.null(this_object$`currency_symbol`)) {
        self$`currency_symbol` <- this_object$`currency_symbol`
      }
      if (!is.null(this_object$`invoices_date_formatted`)) {
        self$`invoices_date_formatted` <- this_object$`invoices_date_formatted`
      }
      if (!is.null(this_object$`payment_type`)) {
        self$`payment_type` <- this_object$`payment_type`
      }
      if (!is.null(this_object$`refund_invoices`)) {
        self$`refund_invoices` <- ApiClient$new()$deserializeObj(this_object$`refund_invoices`, "map(ChargeInvoiceRowsInvoicesValuePaidInvoicesValueRefundInvoicesValue)", loadNamespace("interserverapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ChargeInvoiceRowsInvoicesValuePaidInvoicesValue in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ChargeInvoiceRowsInvoicesValuePaidInvoicesValue
    #'
    #' @param input_json the JSON input
    #' @return the instance of ChargeInvoiceRowsInvoicesValuePaidInvoicesValue
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`invoices_id` <- this_object$`invoices_id`
      self$`invoices_description` <- this_object$`invoices_description`
      self$`invoices_amount` <- this_object$`invoices_amount`
      self$`invoices_date` <- this_object$`invoices_date`
      self$`invoices_currency` <- this_object$`invoices_currency`
      self$`currency_symbol` <- this_object$`currency_symbol`
      self$`invoices_date_formatted` <- this_object$`invoices_date_formatted`
      self$`payment_type` <- this_object$`payment_type`
      self$`refund_invoices` <- ApiClient$new()$deserializeObj(this_object$`refund_invoices`, "map(ChargeInvoiceRowsInvoicesValuePaidInvoicesValueRefundInvoicesValue)", loadNamespace("interserverapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to ChargeInvoiceRowsInvoicesValuePaidInvoicesValue and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ChargeInvoiceRowsInvoicesValuePaidInvoicesValue
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
# ChargeInvoiceRowsInvoicesValuePaidInvoicesValue$unlock()
#
## Below is an example to define the print function
# ChargeInvoiceRowsInvoicesValuePaidInvoicesValue$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ChargeInvoiceRowsInvoicesValuePaidInvoicesValue$lock()

