#' Create a new DomainSearchResponse
#'
#' @description
#' Lookup and suggestion results returned for a domain search.
#'
#' @docType class
#' @title DomainSearchResponse
#' @description DomainSearchResponse Class
#' @format An \code{R6Class} generator object
#' @field success Indicates whether the registrar search succeeded. character [optional]
#' @field response_text Human-readable status text from the registrar. character [optional]
#' @field response_time Response time as reported by the registrar. character [optional]
#' @field lookup Availability lookup results for queried domains. list(object) [optional]
#' @field suggest Suggested alternative domains and availability data. list(object) [optional]
#' @field tlds TLDs evaluated during the search. list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DomainSearchResponse <- R6::R6Class(
  "DomainSearchResponse",
  public = list(
    `success` = NULL,
    `response_text` = NULL,
    `response_time` = NULL,
    `lookup` = NULL,
    `suggest` = NULL,
    `tlds` = NULL,

    #' @description
    #' Initialize a new DomainSearchResponse class.
    #'
    #' @param success Indicates whether the registrar search succeeded.
    #' @param response_text Human-readable status text from the registrar.
    #' @param response_time Response time as reported by the registrar.
    #' @param lookup Availability lookup results for queried domains.
    #' @param suggest Suggested alternative domains and availability data.
    #' @param tlds TLDs evaluated during the search.
    #' @param ... Other optional arguments.
    initialize = function(`success` = NULL, `response_text` = NULL, `response_time` = NULL, `lookup` = NULL, `suggest` = NULL, `tlds` = NULL, ...) {
      if (!is.null(`success`)) {
        if (!(is.logical(`success`) && length(`success`) == 1)) {
          stop(paste("Error! Invalid data for `success`. Must be a boolean:", `success`))
        }
        self$`success` <- `success`
      }
      if (!is.null(`response_text`)) {
        if (!(is.character(`response_text`) && length(`response_text`) == 1)) {
          stop(paste("Error! Invalid data for `response_text`. Must be a string:", `response_text`))
        }
        self$`response_text` <- `response_text`
      }
      if (!is.null(`response_time`)) {
        if (!(is.character(`response_time`) && length(`response_time`) == 1)) {
          stop(paste("Error! Invalid data for `response_time`. Must be a string:", `response_time`))
        }
        self$`response_time` <- `response_time`
      }
      if (!is.null(`lookup`)) {
        stopifnot(is.vector(`lookup`), length(`lookup`) != 0)
        sapply(`lookup`, function(x) stopifnot(is.character(x)))
        self$`lookup` <- `lookup`
      }
      if (!is.null(`suggest`)) {
        stopifnot(is.vector(`suggest`), length(`suggest`) != 0)
        sapply(`suggest`, function(x) stopifnot(is.character(x)))
        self$`suggest` <- `suggest`
      }
      if (!is.null(`tlds`)) {
        stopifnot(is.vector(`tlds`), length(`tlds`) != 0)
        sapply(`tlds`, function(x) stopifnot(is.character(x)))
        self$`tlds` <- `tlds`
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
    #' @return DomainSearchResponse as a base R list.
    #' @examples
    #' # convert array of DomainSearchResponse (x) to a data frame
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
    #' Convert DomainSearchResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      DomainSearchResponseObject <- list()
      if (!is.null(self$`success`)) {
        DomainSearchResponseObject[["success"]] <-
          self$`success`
      }
      if (!is.null(self$`response_text`)) {
        DomainSearchResponseObject[["response_text"]] <-
          self$`response_text`
      }
      if (!is.null(self$`response_time`)) {
        DomainSearchResponseObject[["response_time"]] <-
          self$`response_time`
      }
      if (!is.null(self$`lookup`)) {
        DomainSearchResponseObject[["lookup"]] <-
          self$`lookup`
      }
      if (!is.null(self$`suggest`)) {
        DomainSearchResponseObject[["suggest"]] <-
          self$`suggest`
      }
      if (!is.null(self$`tlds`)) {
        DomainSearchResponseObject[["tlds"]] <-
          self$`tlds`
      }
      return(DomainSearchResponseObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of DomainSearchResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of DomainSearchResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`success`)) {
        self$`success` <- this_object$`success`
      }
      if (!is.null(this_object$`response_text`)) {
        self$`response_text` <- this_object$`response_text`
      }
      if (!is.null(this_object$`response_time`)) {
        self$`response_time` <- this_object$`response_time`
      }
      if (!is.null(this_object$`lookup`)) {
        self$`lookup` <- ApiClient$new()$deserializeObj(this_object$`lookup`, "array[object]", loadNamespace("interserverapi"))
      }
      if (!is.null(this_object$`suggest`)) {
        self$`suggest` <- ApiClient$new()$deserializeObj(this_object$`suggest`, "array[object]", loadNamespace("interserverapi"))
      }
      if (!is.null(this_object$`tlds`)) {
        self$`tlds` <- ApiClient$new()$deserializeObj(this_object$`tlds`, "array[character]", loadNamespace("interserverapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return DomainSearchResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of DomainSearchResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of DomainSearchResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`success` <- this_object$`success`
      self$`response_text` <- this_object$`response_text`
      self$`response_time` <- this_object$`response_time`
      self$`lookup` <- ApiClient$new()$deserializeObj(this_object$`lookup`, "array[object]", loadNamespace("interserverapi"))
      self$`suggest` <- ApiClient$new()$deserializeObj(this_object$`suggest`, "array[object]", loadNamespace("interserverapi"))
      self$`tlds` <- ApiClient$new()$deserializeObj(this_object$`tlds`, "array[character]", loadNamespace("interserverapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to DomainSearchResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of DomainSearchResponse
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
# DomainSearchResponse$unlock()
#
## Below is an example to define the print function
# DomainSearchResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# DomainSearchResponse$lock()

