#' Create a new ServerBulkIpmiPowerResponseResultsInner
#'
#' @description
#' ServerBulkIpmiPowerResponseResultsInner Class
#'
#' @docType class
#' @title ServerBulkIpmiPowerResponseResultsInner
#' @description ServerBulkIpmiPowerResponseResultsInner Class
#' @format An \code{R6Class} generator object
#' @field id Server ID this result corresponds to. integer [optional]
#' @field asset Asset ID that was queried for the server (omitted on errors before asset selection). integer [optional]
#' @field text IPMI power-status output for this server. character [optional]
#' @field error Error message for this server, if processing failed (mutually exclusive with `text`). character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ServerBulkIpmiPowerResponseResultsInner <- R6::R6Class(
  "ServerBulkIpmiPowerResponseResultsInner",
  public = list(
    `id` = NULL,
    `asset` = NULL,
    `text` = NULL,
    `error` = NULL,

    #' @description
    #' Initialize a new ServerBulkIpmiPowerResponseResultsInner class.
    #'
    #' @param id Server ID this result corresponds to.
    #' @param asset Asset ID that was queried for the server (omitted on errors before asset selection).
    #' @param text IPMI power-status output for this server.
    #' @param error Error message for this server, if processing failed (mutually exclusive with `text`).
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `asset` = NULL, `text` = NULL, `error` = NULL, ...) {
      if (!is.null(`id`)) {
        if (!(is.numeric(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", `id`))
        }
        self$`id` <- `id`
      }
      if (!is.null(`asset`)) {
        if (!(is.numeric(`asset`) && length(`asset`) == 1)) {
          stop(paste("Error! Invalid data for `asset`. Must be an integer:", `asset`))
        }
        self$`asset` <- `asset`
      }
      if (!is.null(`text`)) {
        if (!(is.character(`text`) && length(`text`) == 1)) {
          stop(paste("Error! Invalid data for `text`. Must be a string:", `text`))
        }
        self$`text` <- `text`
      }
      if (!is.null(`error`)) {
        if (!(is.character(`error`) && length(`error`) == 1)) {
          stop(paste("Error! Invalid data for `error`. Must be a string:", `error`))
        }
        self$`error` <- `error`
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
    #' @return ServerBulkIpmiPowerResponseResultsInner as a base R list.
    #' @examples
    #' # convert array of ServerBulkIpmiPowerResponseResultsInner (x) to a data frame
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
    #' Convert ServerBulkIpmiPowerResponseResultsInner to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ServerBulkIpmiPowerResponseResultsInnerObject <- list()
      if (!is.null(self$`id`)) {
        ServerBulkIpmiPowerResponseResultsInnerObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`asset`)) {
        ServerBulkIpmiPowerResponseResultsInnerObject[["asset"]] <-
          self$`asset`
      }
      if (!is.null(self$`text`)) {
        ServerBulkIpmiPowerResponseResultsInnerObject[["text"]] <-
          self$`text`
      }
      if (!is.null(self$`error`)) {
        ServerBulkIpmiPowerResponseResultsInnerObject[["error"]] <-
          self$`error`
      }
      return(ServerBulkIpmiPowerResponseResultsInnerObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ServerBulkIpmiPowerResponseResultsInner
    #'
    #' @param input_json the JSON input
    #' @return the instance of ServerBulkIpmiPowerResponseResultsInner
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`asset`)) {
        self$`asset` <- this_object$`asset`
      }
      if (!is.null(this_object$`text`)) {
        self$`text` <- this_object$`text`
      }
      if (!is.null(this_object$`error`)) {
        self$`error` <- this_object$`error`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ServerBulkIpmiPowerResponseResultsInner in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ServerBulkIpmiPowerResponseResultsInner
    #'
    #' @param input_json the JSON input
    #' @return the instance of ServerBulkIpmiPowerResponseResultsInner
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`asset` <- this_object$`asset`
      self$`text` <- this_object$`text`
      self$`error` <- this_object$`error`
      self
    },

    #' @description
    #' Validate JSON input with respect to ServerBulkIpmiPowerResponseResultsInner and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ServerBulkIpmiPowerResponseResultsInner
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
# ServerBulkIpmiPowerResponseResultsInner$unlock()
#
## Below is an example to define the print function
# ServerBulkIpmiPowerResponseResultsInner$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ServerBulkIpmiPowerResponseResultsInner$lock()

