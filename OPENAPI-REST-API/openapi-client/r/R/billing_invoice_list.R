#' Create a new BillingInvoiceList
#'
#' @description
#' Summary list of invoices for the account.
#'
#' @docType class
#' @title BillingInvoiceList
#' @description BillingInvoiceList Class
#' @format An \code{R6Class} generator object
#' @field rows Invoice rows returned for the account. list(object) [optional]
#' @field summary Totals and summary data for the invoices list. object [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
BillingInvoiceList <- R6::R6Class(
  "BillingInvoiceList",
  public = list(
    `rows` = NULL,
    `summary` = NULL,

    #' @description
    #' Initialize a new BillingInvoiceList class.
    #'
    #' @param rows Invoice rows returned for the account.
    #' @param summary Totals and summary data for the invoices list.
    #' @param ... Other optional arguments.
    initialize = function(`rows` = NULL, `summary` = NULL, ...) {
      if (!is.null(`rows`)) {
        stopifnot(is.vector(`rows`), length(`rows`) != 0)
        sapply(`rows`, function(x) stopifnot(is.character(x)))
        self$`rows` <- `rows`
      }
      if (!is.null(`summary`)) {
        self$`summary` <- `summary`
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
    #' @return BillingInvoiceList as a base R list.
    #' @examples
    #' # convert array of BillingInvoiceList (x) to a data frame
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
    #' Convert BillingInvoiceList to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      BillingInvoiceListObject <- list()
      if (!is.null(self$`rows`)) {
        BillingInvoiceListObject[["rows"]] <-
          self$`rows`
      }
      if (!is.null(self$`summary`)) {
        BillingInvoiceListObject[["summary"]] <-
          self$`summary`
      }
      return(BillingInvoiceListObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of BillingInvoiceList
    #'
    #' @param input_json the JSON input
    #' @return the instance of BillingInvoiceList
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`rows`)) {
        self$`rows` <- ApiClient$new()$deserializeObj(this_object$`rows`, "array[object]", loadNamespace("interserverapi"))
      }
      if (!is.null(this_object$`summary`)) {
        self$`summary` <- this_object$`summary`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return BillingInvoiceList in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of BillingInvoiceList
    #'
    #' @param input_json the JSON input
    #' @return the instance of BillingInvoiceList
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`rows` <- ApiClient$new()$deserializeObj(this_object$`rows`, "array[object]", loadNamespace("interserverapi"))
      self$`summary` <- this_object$`summary`
      self
    },

    #' @description
    #' Validate JSON input with respect to BillingInvoiceList and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of BillingInvoiceList
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
# BillingInvoiceList$unlock()
#
## Below is an example to define the print function
# BillingInvoiceList$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# BillingInvoiceList$lock()

