#' Create a new MailDeliverabilityResponse
#'
#' @description
#' Deliverability statistics for a mail service.
#'
#' @docType class
#' @title MailDeliverabilityResponse
#' @description MailDeliverabilityResponse Class
#' @format An \code{R6Class} generator object
#' @field stat Delivered and bounced counts. object [optional]
#' @field percent Bounce percentage. numeric [optional]
#' @field table_data Detailed deliverability breakdown by sender or domain. list(list(character)) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
MailDeliverabilityResponse <- R6::R6Class(
  "MailDeliverabilityResponse",
  public = list(
    `stat` = NULL,
    `percent` = NULL,
    `table_data` = NULL,

    #' @description
    #' Initialize a new MailDeliverabilityResponse class.
    #'
    #' @param stat Delivered and bounced counts.
    #' @param percent Bounce percentage.
    #' @param table_data Detailed deliverability breakdown by sender or domain.
    #' @param ... Other optional arguments.
    initialize = function(`stat` = NULL, `percent` = NULL, `table_data` = NULL, ...) {
      if (!is.null(`stat`)) {
        self$`stat` <- `stat`
      }
      if (!is.null(`percent`)) {
        self$`percent` <- `percent`
      }
      if (!is.null(`table_data`)) {
        stopifnot(is.vector(`table_data`), length(`table_data`) != 0)
        sapply(`table_data`, function(x) stopifnot(R6::is.R6(x)))
        self$`table_data` <- `table_data`
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
    #' @return MailDeliverabilityResponse as a base R list.
    #' @examples
    #' # convert array of MailDeliverabilityResponse (x) to a data frame
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
    #' Convert MailDeliverabilityResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      MailDeliverabilityResponseObject <- list()
      if (!is.null(self$`stat`)) {
        MailDeliverabilityResponseObject[["stat"]] <-
          self$`stat`
      }
      if (!is.null(self$`percent`)) {
        MailDeliverabilityResponseObject[["percent"]] <-
          self$`percent`
      }
      if (!is.null(self$`table_data`)) {
        MailDeliverabilityResponseObject[["table_data"]] <-
          self$extractSimpleType(self$`table_data`)
      }
      return(MailDeliverabilityResponseObject)
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
    #' Deserialize JSON string into an instance of MailDeliverabilityResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of MailDeliverabilityResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`stat`)) {
        self$`stat` <- this_object$`stat`
      }
      if (!is.null(this_object$`percent`)) {
        self$`percent` <- this_object$`percent`
      }
      if (!is.null(this_object$`table_data`)) {
        self$`table_data` <- ApiClient$new()$deserializeObj(this_object$`table_data`, "array[array[character]]", loadNamespace("interserverapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return MailDeliverabilityResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of MailDeliverabilityResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of MailDeliverabilityResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`stat` <- this_object$`stat`
      self$`percent` <- this_object$`percent`
      self$`table_data` <- ApiClient$new()$deserializeObj(this_object$`table_data`, "array[array[character]]", loadNamespace("interserverapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to MailDeliverabilityResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of MailDeliverabilityResponse
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
# MailDeliverabilityResponse$unlock()
#
## Below is an example to define the print function
# MailDeliverabilityResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# MailDeliverabilityResponse$lock()

