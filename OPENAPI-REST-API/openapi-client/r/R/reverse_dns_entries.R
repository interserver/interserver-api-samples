#' Create a new ReverseDnsEntries
#'
#' @description
#' The Reverse DNS entries.
#'
#' @docType class
#' @title ReverseDnsEntries
#' @description ReverseDnsEntries Class
#' @format An \code{R6Class} generator object
#' @field ips The IPs you have access to and their current reverse dns mapping. named list(\link{AnyType}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ReverseDnsEntries <- R6::R6Class(
  "ReverseDnsEntries",
  public = list(
    `ips` = NULL,

    #' @description
    #' Initialize a new ReverseDnsEntries class.
    #'
    #' @param ips The IPs you have access to and their current reverse dns mapping.
    #' @param ... Other optional arguments.
    initialize = function(`ips` = NULL, ...) {
      if (!is.null(`ips`)) {
        stopifnot(is.vector(`ips`), length(`ips`) != 0)
        sapply(`ips`, function(x) stopifnot(R6::is.R6(x)))
        self$`ips` <- `ips`
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
    #' @return ReverseDnsEntries as a base R list.
    #' @examples
    #' # convert array of ReverseDnsEntries (x) to a data frame
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
    #' Convert ReverseDnsEntries to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ReverseDnsEntriesObject <- list()
      if (!is.null(self$`ips`)) {
        ReverseDnsEntriesObject[["ips"]] <-
          self$extractSimpleType(self$`ips`)
      }
      return(ReverseDnsEntriesObject)
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
    #' Deserialize JSON string into an instance of ReverseDnsEntries
    #'
    #' @param input_json the JSON input
    #' @return the instance of ReverseDnsEntries
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`ips`)) {
        self$`ips` <- ApiClient$new()$deserializeObj(this_object$`ips`, "map(AnyType)", loadNamespace("interserverapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ReverseDnsEntries in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ReverseDnsEntries
    #'
    #' @param input_json the JSON input
    #' @return the instance of ReverseDnsEntries
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`ips` <- ApiClient$new()$deserializeObj(this_object$`ips`, "map(AnyType)", loadNamespace("interserverapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to ReverseDnsEntries and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ReverseDnsEntries
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
# ReverseDnsEntries$unlock()
#
## Below is an example to define the print function
# ReverseDnsEntries$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ReverseDnsEntries$lock()

