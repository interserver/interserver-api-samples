#' Create a new GetAccountLocales200ResponseValue
#'
#' @description
#' GetAccountLocales200ResponseValue Class
#'
#' @docType class
#' @title GetAccountLocales200ResponseValue
#' @description GetAccountLocales200ResponseValue Class
#' @format An \code{R6Class} generator object
#' @field name English display name of the locale. character [optional]
#' @field local_name Display name of the locale in its own language. character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GetAccountLocales200ResponseValue <- R6::R6Class(
  "GetAccountLocales200ResponseValue",
  public = list(
    `name` = NULL,
    `local_name` = NULL,

    #' @description
    #' Initialize a new GetAccountLocales200ResponseValue class.
    #'
    #' @param name English display name of the locale.
    #' @param local_name Display name of the locale in its own language.
    #' @param ... Other optional arguments.
    initialize = function(`name` = NULL, `local_name` = NULL, ...) {
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`local_name`)) {
        if (!(is.character(`local_name`) && length(`local_name`) == 1)) {
          stop(paste("Error! Invalid data for `local_name`. Must be a string:", `local_name`))
        }
        self$`local_name` <- `local_name`
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
    #' @return GetAccountLocales200ResponseValue as a base R list.
    #' @examples
    #' # convert array of GetAccountLocales200ResponseValue (x) to a data frame
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
    #' Convert GetAccountLocales200ResponseValue to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      GetAccountLocales200ResponseValueObject <- list()
      if (!is.null(self$`name`)) {
        GetAccountLocales200ResponseValueObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`local_name`)) {
        GetAccountLocales200ResponseValueObject[["local_name"]] <-
          self$`local_name`
      }
      return(GetAccountLocales200ResponseValueObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of GetAccountLocales200ResponseValue
    #'
    #' @param input_json the JSON input
    #' @return the instance of GetAccountLocales200ResponseValue
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`local_name`)) {
        self$`local_name` <- this_object$`local_name`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return GetAccountLocales200ResponseValue in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of GetAccountLocales200ResponseValue
    #'
    #' @param input_json the JSON input
    #' @return the instance of GetAccountLocales200ResponseValue
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`name` <- this_object$`name`
      self$`local_name` <- this_object$`local_name`
      self
    },

    #' @description
    #' Validate JSON input with respect to GetAccountLocales200ResponseValue and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of GetAccountLocales200ResponseValue
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
# GetAccountLocales200ResponseValue$unlock()
#
## Below is an example to define the print function
# GetAccountLocales200ResponseValue$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GetAccountLocales200ResponseValue$lock()

