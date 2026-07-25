#' Create a new ChargeInvoiceRows
#'
#' @description
#' Billing invoices associated with a service, including invoice IDs, descriptions, amounts, and payment status.
#'
#' @docType class
#' @title ChargeInvoiceRows
#' @description ChargeInvoiceRows Class
#' @format An \code{R6Class} generator object
#' @field success Whether the invoice retrieval was successful. character [optional]
#' @field invoices List of invoices for the service. named list(\link{ChargeInvoiceRowsInvoicesValue}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ChargeInvoiceRows <- R6::R6Class(
  "ChargeInvoiceRows",
  public = list(
    `success` = NULL,
    `invoices` = NULL,

    #' @description
    #' Initialize a new ChargeInvoiceRows class.
    #'
    #' @param success Whether the invoice retrieval was successful.
    #' @param invoices List of invoices for the service.
    #' @param ... Other optional arguments.
    initialize = function(`success` = NULL, `invoices` = NULL, ...) {
      if (!is.null(`success`)) {
        if (!(is.logical(`success`) && length(`success`) == 1)) {
          stop(paste("Error! Invalid data for `success`. Must be a boolean:", `success`))
        }
        self$`success` <- `success`
      }
      if (!is.null(`invoices`)) {
        stopifnot(is.vector(`invoices`), length(`invoices`) != 0)
        sapply(`invoices`, function(x) stopifnot(R6::is.R6(x)))
        self$`invoices` <- `invoices`
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
    #' @return ChargeInvoiceRows as a base R list.
    #' @examples
    #' # convert array of ChargeInvoiceRows (x) to a data frame
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
    #' Convert ChargeInvoiceRows to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ChargeInvoiceRowsObject <- list()
      if (!is.null(self$`success`)) {
        ChargeInvoiceRowsObject[["success"]] <-
          self$`success`
      }
      if (!is.null(self$`invoices`)) {
        ChargeInvoiceRowsObject[["invoices"]] <-
          self$extractSimpleType(self$`invoices`)
      }
      return(ChargeInvoiceRowsObject)
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
    #' Deserialize JSON string into an instance of ChargeInvoiceRows
    #'
    #' @param input_json the JSON input
    #' @return the instance of ChargeInvoiceRows
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`success`)) {
        self$`success` <- this_object$`success`
      }
      if (!is.null(this_object$`invoices`)) {
        self$`invoices` <- ApiClient$new()$deserializeObj(this_object$`invoices`, "map(ChargeInvoiceRowsInvoicesValue)", loadNamespace("interserverapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ChargeInvoiceRows in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ChargeInvoiceRows
    #'
    #' @param input_json the JSON input
    #' @return the instance of ChargeInvoiceRows
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`success` <- this_object$`success`
      self$`invoices` <- ApiClient$new()$deserializeObj(this_object$`invoices`, "map(ChargeInvoiceRowsInvoicesValue)", loadNamespace("interserverapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to ChargeInvoiceRows and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ChargeInvoiceRows
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
# ChargeInvoiceRows$unlock()
#
## Below is an example to define the print function
# ChargeInvoiceRows$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ChargeInvoiceRows$lock()

