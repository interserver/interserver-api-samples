#' Create a new DomainDnssecRequest
#'
#' @description
#' Request payload for adding DNSSEC DS records to a domain.
#'
#' @docType class
#' @title DomainDnssecRequest
#' @description DomainDnssecRequest Class
#' @format An \code{R6Class} generator object
#' @field algorithm List of DNSSEC algorithm IDs for each record. list(integer) [optional]
#' @field digest_type List of digest type IDs for each record. list(integer) [optional]
#' @field digest List of hex digests for each record. list(character) [optional]
#' @field key_tag List of key tag values corresponding to each record. list(integer) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DomainDnssecRequest <- R6::R6Class(
  "DomainDnssecRequest",
  public = list(
    `algorithm` = NULL,
    `digest_type` = NULL,
    `digest` = NULL,
    `key_tag` = NULL,

    #' @description
    #' Initialize a new DomainDnssecRequest class.
    #'
    #' @param algorithm List of DNSSEC algorithm IDs for each record.
    #' @param digest_type List of digest type IDs for each record.
    #' @param digest List of hex digests for each record.
    #' @param key_tag List of key tag values corresponding to each record.
    #' @param ... Other optional arguments.
    initialize = function(`algorithm` = NULL, `digest_type` = NULL, `digest` = NULL, `key_tag` = NULL, ...) {
      if (!is.null(`algorithm`)) {
        stopifnot(is.vector(`algorithm`), length(`algorithm`) != 0)
        sapply(`algorithm`, function(x) stopifnot(is.character(x)))
        self$`algorithm` <- `algorithm`
      }
      if (!is.null(`digest_type`)) {
        stopifnot(is.vector(`digest_type`), length(`digest_type`) != 0)
        sapply(`digest_type`, function(x) stopifnot(is.character(x)))
        self$`digest_type` <- `digest_type`
      }
      if (!is.null(`digest`)) {
        stopifnot(is.vector(`digest`), length(`digest`) != 0)
        sapply(`digest`, function(x) stopifnot(is.character(x)))
        self$`digest` <- `digest`
      }
      if (!is.null(`key_tag`)) {
        stopifnot(is.vector(`key_tag`), length(`key_tag`) != 0)
        sapply(`key_tag`, function(x) stopifnot(is.character(x)))
        self$`key_tag` <- `key_tag`
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
    #' @return DomainDnssecRequest as a base R list.
    #' @examples
    #' # convert array of DomainDnssecRequest (x) to a data frame
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
    #' Convert DomainDnssecRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      DomainDnssecRequestObject <- list()
      if (!is.null(self$`algorithm`)) {
        DomainDnssecRequestObject[["algorithm"]] <-
          self$`algorithm`
      }
      if (!is.null(self$`digest_type`)) {
        DomainDnssecRequestObject[["digest_type"]] <-
          self$`digest_type`
      }
      if (!is.null(self$`digest`)) {
        DomainDnssecRequestObject[["digest"]] <-
          self$`digest`
      }
      if (!is.null(self$`key_tag`)) {
        DomainDnssecRequestObject[["key_tag"]] <-
          self$`key_tag`
      }
      return(DomainDnssecRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of DomainDnssecRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of DomainDnssecRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`algorithm`)) {
        self$`algorithm` <- ApiClient$new()$deserializeObj(this_object$`algorithm`, "array[integer]", loadNamespace("interserverapi"))
      }
      if (!is.null(this_object$`digest_type`)) {
        self$`digest_type` <- ApiClient$new()$deserializeObj(this_object$`digest_type`, "array[integer]", loadNamespace("interserverapi"))
      }
      if (!is.null(this_object$`digest`)) {
        self$`digest` <- ApiClient$new()$deserializeObj(this_object$`digest`, "array[character]", loadNamespace("interserverapi"))
      }
      if (!is.null(this_object$`key_tag`)) {
        self$`key_tag` <- ApiClient$new()$deserializeObj(this_object$`key_tag`, "array[integer]", loadNamespace("interserverapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return DomainDnssecRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of DomainDnssecRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of DomainDnssecRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`algorithm` <- ApiClient$new()$deserializeObj(this_object$`algorithm`, "array[integer]", loadNamespace("interserverapi"))
      self$`digest_type` <- ApiClient$new()$deserializeObj(this_object$`digest_type`, "array[integer]", loadNamespace("interserverapi"))
      self$`digest` <- ApiClient$new()$deserializeObj(this_object$`digest`, "array[character]", loadNamespace("interserverapi"))
      self$`key_tag` <- ApiClient$new()$deserializeObj(this_object$`key_tag`, "array[integer]", loadNamespace("interserverapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to DomainDnssecRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of DomainDnssecRequest
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
# DomainDnssecRequest$unlock()
#
## Below is an example to define the print function
# DomainDnssecRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# DomainDnssecRequest$lock()

