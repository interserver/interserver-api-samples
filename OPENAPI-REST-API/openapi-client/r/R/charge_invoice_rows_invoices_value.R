#' Create a new ChargeInvoiceRowsInvoicesValue
#'
#' @description
#' ChargeInvoiceRowsInvoicesValue Class
#'
#' @docType class
#' @title ChargeInvoiceRowsInvoicesValue
#' @description ChargeInvoiceRowsInvoicesValue Class
#' @format An \code{R6Class} generator object
#' @field invoices_id Unique invoice ID. numeric [optional]
#' @field invoices_description Description of the invoice charge. character [optional]
#' @field invoices_amount Invoice amount. numeric [optional]
#' @field invoices_date Invoice date. character [optional]
#' @field invoices_paid  numeric [optional]
#' @field invoices_due_date  character [optional]
#' @field invoices_currency  character [optional]
#' @field currency_symbol  character [optional]
#' @field invoices_date_formatted  character [optional]
#' @field paid_invoices This is optional when invoices_paid = 1 this array will show named list(\link{ChargeInvoiceRowsInvoicesValuePaidInvoicesValue}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ChargeInvoiceRowsInvoicesValue <- R6::R6Class(
  "ChargeInvoiceRowsInvoicesValue",
  public = list(
    `invoices_id` = NULL,
    `invoices_description` = NULL,
    `invoices_amount` = NULL,
    `invoices_date` = NULL,
    `invoices_paid` = NULL,
    `invoices_due_date` = NULL,
    `invoices_currency` = NULL,
    `currency_symbol` = NULL,
    `invoices_date_formatted` = NULL,
    `paid_invoices` = NULL,

    #' @description
    #' Initialize a new ChargeInvoiceRowsInvoicesValue class.
    #'
    #' @param invoices_id Unique invoice ID.
    #' @param invoices_description Description of the invoice charge.
    #' @param invoices_amount Invoice amount.
    #' @param invoices_date Invoice date.
    #' @param invoices_paid invoices_paid
    #' @param invoices_due_date invoices_due_date
    #' @param invoices_currency invoices_currency
    #' @param currency_symbol currency_symbol
    #' @param invoices_date_formatted invoices_date_formatted
    #' @param paid_invoices This is optional when invoices_paid = 1 this array will show
    #' @param ... Other optional arguments.
    initialize = function(`invoices_id` = NULL, `invoices_description` = NULL, `invoices_amount` = NULL, `invoices_date` = NULL, `invoices_paid` = NULL, `invoices_due_date` = NULL, `invoices_currency` = NULL, `currency_symbol` = NULL, `invoices_date_formatted` = NULL, `paid_invoices` = NULL, ...) {
      if (!is.null(`invoices_id`)) {
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
      if (!is.null(`invoices_paid`)) {
        if (!(`invoices_paid` %in% c("0", "1"))) {
          stop(paste("Error! \"", `invoices_paid`, "\" cannot be assigned to `invoices_paid`. Must be \"0\", \"1\".", sep = ""))
        }
        self$`invoices_paid` <- `invoices_paid`
      }
      if (!is.null(`invoices_due_date`)) {
        if (!(is.character(`invoices_due_date`) && length(`invoices_due_date`) == 1)) {
          stop(paste("Error! Invalid data for `invoices_due_date`. Must be a string:", `invoices_due_date`))
        }
        self$`invoices_due_date` <- `invoices_due_date`
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
      if (!is.null(`paid_invoices`)) {
        stopifnot(is.vector(`paid_invoices`), length(`paid_invoices`) != 0)
        sapply(`paid_invoices`, function(x) stopifnot(R6::is.R6(x)))
        self$`paid_invoices` <- `paid_invoices`
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
    #' @return ChargeInvoiceRowsInvoicesValue as a base R list.
    #' @examples
    #' # convert array of ChargeInvoiceRowsInvoicesValue (x) to a data frame
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
    #' Convert ChargeInvoiceRowsInvoicesValue to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ChargeInvoiceRowsInvoicesValueObject <- list()
      if (!is.null(self$`invoices_id`)) {
        ChargeInvoiceRowsInvoicesValueObject[["invoices_id"]] <-
          self$`invoices_id`
      }
      if (!is.null(self$`invoices_description`)) {
        ChargeInvoiceRowsInvoicesValueObject[["invoices_description"]] <-
          self$`invoices_description`
      }
      if (!is.null(self$`invoices_amount`)) {
        ChargeInvoiceRowsInvoicesValueObject[["invoices_amount"]] <-
          self$`invoices_amount`
      }
      if (!is.null(self$`invoices_date`)) {
        ChargeInvoiceRowsInvoicesValueObject[["invoices_date"]] <-
          self$`invoices_date`
      }
      if (!is.null(self$`invoices_paid`)) {
        ChargeInvoiceRowsInvoicesValueObject[["invoices_paid"]] <-
          self$`invoices_paid`
      }
      if (!is.null(self$`invoices_due_date`)) {
        ChargeInvoiceRowsInvoicesValueObject[["invoices_due_date"]] <-
          self$`invoices_due_date`
      }
      if (!is.null(self$`invoices_currency`)) {
        ChargeInvoiceRowsInvoicesValueObject[["invoices_currency"]] <-
          self$`invoices_currency`
      }
      if (!is.null(self$`currency_symbol`)) {
        ChargeInvoiceRowsInvoicesValueObject[["currency_symbol"]] <-
          self$`currency_symbol`
      }
      if (!is.null(self$`invoices_date_formatted`)) {
        ChargeInvoiceRowsInvoicesValueObject[["invoices_date_formatted"]] <-
          self$`invoices_date_formatted`
      }
      if (!is.null(self$`paid_invoices`)) {
        ChargeInvoiceRowsInvoicesValueObject[["paid_invoices"]] <-
          self$extractSimpleType(self$`paid_invoices`)
      }
      return(ChargeInvoiceRowsInvoicesValueObject)
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
    #' Deserialize JSON string into an instance of ChargeInvoiceRowsInvoicesValue
    #'
    #' @param input_json the JSON input
    #' @return the instance of ChargeInvoiceRowsInvoicesValue
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
      if (!is.null(this_object$`invoices_paid`)) {
        if (!is.null(this_object$`invoices_paid`) && !(this_object$`invoices_paid` %in% c("0", "1"))) {
          stop(paste("Error! \"", this_object$`invoices_paid`, "\" cannot be assigned to `invoices_paid`. Must be \"0\", \"1\".", sep = ""))
        }
        self$`invoices_paid` <- this_object$`invoices_paid`
      }
      if (!is.null(this_object$`invoices_due_date`)) {
        self$`invoices_due_date` <- this_object$`invoices_due_date`
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
      if (!is.null(this_object$`paid_invoices`)) {
        self$`paid_invoices` <- ApiClient$new()$deserializeObj(this_object$`paid_invoices`, "map(ChargeInvoiceRowsInvoicesValuePaidInvoicesValue)", loadNamespace("interserverapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ChargeInvoiceRowsInvoicesValue in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ChargeInvoiceRowsInvoicesValue
    #'
    #' @param input_json the JSON input
    #' @return the instance of ChargeInvoiceRowsInvoicesValue
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`invoices_id` <- this_object$`invoices_id`
      self$`invoices_description` <- this_object$`invoices_description`
      self$`invoices_amount` <- this_object$`invoices_amount`
      self$`invoices_date` <- this_object$`invoices_date`
      if (!is.null(this_object$`invoices_paid`) && !(this_object$`invoices_paid` %in% c("0", "1"))) {
        stop(paste("Error! \"", this_object$`invoices_paid`, "\" cannot be assigned to `invoices_paid`. Must be \"0\", \"1\".", sep = ""))
      }
      self$`invoices_paid` <- this_object$`invoices_paid`
      self$`invoices_due_date` <- this_object$`invoices_due_date`
      self$`invoices_currency` <- this_object$`invoices_currency`
      self$`currency_symbol` <- this_object$`currency_symbol`
      self$`invoices_date_formatted` <- this_object$`invoices_date_formatted`
      self$`paid_invoices` <- ApiClient$new()$deserializeObj(this_object$`paid_invoices`, "map(ChargeInvoiceRowsInvoicesValuePaidInvoicesValue)", loadNamespace("interserverapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to ChargeInvoiceRowsInvoicesValue and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ChargeInvoiceRowsInvoicesValue
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
# ChargeInvoiceRowsInvoicesValue$unlock()
#
## Below is an example to define the print function
# ChargeInvoiceRowsInvoicesValue$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ChargeInvoiceRowsInvoicesValue$lock()

