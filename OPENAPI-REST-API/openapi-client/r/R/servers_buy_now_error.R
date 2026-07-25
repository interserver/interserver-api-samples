#' Create a new ServersBuyNowError
#'
#' @description
#' Error response when a buy-it-now server order fails validation.
#'
#' @docType class
#' @title ServersBuyNowError
#' @description ServersBuyNowError Class
#' @format An \code{R6Class} generator object
#' @field success Always false for error responses. character [optional]
#' @field text Human-readable error summary. character [optional]
#' @field errors List of specific validation error messages. list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ServersBuyNowError <- R6::R6Class(
  "ServersBuyNowError",
  public = list(
    `success` = NULL,
    `text` = NULL,
    `errors` = NULL,

    #' @description
    #' Initialize a new ServersBuyNowError class.
    #'
    #' @param success Always false for error responses.
    #' @param text Human-readable error summary.
    #' @param errors List of specific validation error messages.
    #' @param ... Other optional arguments.
    initialize = function(`success` = NULL, `text` = NULL, `errors` = NULL, ...) {
      if (!is.null(`success`)) {
        if (!(is.logical(`success`) && length(`success`) == 1)) {
          stop(paste("Error! Invalid data for `success`. Must be a boolean:", `success`))
        }
        self$`success` <- `success`
      }
      if (!is.null(`text`)) {
        if (!(is.character(`text`) && length(`text`) == 1)) {
          stop(paste("Error! Invalid data for `text`. Must be a string:", `text`))
        }
        self$`text` <- `text`
      }
      if (!is.null(`errors`)) {
        stopifnot(is.vector(`errors`), length(`errors`) != 0)
        sapply(`errors`, function(x) stopifnot(is.character(x)))
        self$`errors` <- `errors`
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
    #' @return ServersBuyNowError as a base R list.
    #' @examples
    #' # convert array of ServersBuyNowError (x) to a data frame
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
    #' Convert ServersBuyNowError to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ServersBuyNowErrorObject <- list()
      if (!is.null(self$`success`)) {
        ServersBuyNowErrorObject[["success"]] <-
          self$`success`
      }
      if (!is.null(self$`text`)) {
        ServersBuyNowErrorObject[["text"]] <-
          self$`text`
      }
      if (!is.null(self$`errors`)) {
        ServersBuyNowErrorObject[["errors"]] <-
          self$`errors`
      }
      return(ServersBuyNowErrorObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ServersBuyNowError
    #'
    #' @param input_json the JSON input
    #' @return the instance of ServersBuyNowError
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`success`)) {
        self$`success` <- this_object$`success`
      }
      if (!is.null(this_object$`text`)) {
        self$`text` <- this_object$`text`
      }
      if (!is.null(this_object$`errors`)) {
        self$`errors` <- ApiClient$new()$deserializeObj(this_object$`errors`, "array[character]", loadNamespace("interserverapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ServersBuyNowError in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ServersBuyNowError
    #'
    #' @param input_json the JSON input
    #' @return the instance of ServersBuyNowError
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`success` <- this_object$`success`
      self$`text` <- this_object$`text`
      self$`errors` <- ApiClient$new()$deserializeObj(this_object$`errors`, "array[character]", loadNamespace("interserverapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to ServersBuyNowError and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ServersBuyNowError
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
# ServersBuyNowError$unlock()
#
## Below is an example to define the print function
# ServersBuyNowError$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ServersBuyNowError$lock()

