#' Create a new ServerIpmiLiveRequest
#'
#' @description
#' Request body to setup an IPMI Live connection.
#'
#' @docType class
#' @title ServerIpmiLiveRequest
#' @description ServerIpmiLiveRequest Class
#' @format An \code{R6Class} generator object
#' @field ip Your IP Address you wish to connect to the IPMI system from. character
#' @field asset Asset ID integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ServerIpmiLiveRequest <- R6::R6Class(
  "ServerIpmiLiveRequest",
  public = list(
    `ip` = NULL,
    `asset` = NULL,

    #' @description
    #' Initialize a new ServerIpmiLiveRequest class.
    #'
    #' @param ip Your IP Address you wish to connect to the IPMI system from.
    #' @param asset Asset ID
    #' @param ... Other optional arguments.
    initialize = function(`ip`, `asset` = NULL, ...) {
      if (!missing(`ip`)) {
        if (!(is.character(`ip`) && length(`ip`) == 1)) {
          stop(paste("Error! Invalid data for `ip`. Must be a string:", `ip`))
        }
        self$`ip` <- `ip`
      }
      if (!is.null(`asset`)) {
        if (!(is.numeric(`asset`) && length(`asset`) == 1)) {
          stop(paste("Error! Invalid data for `asset`. Must be an integer:", `asset`))
        }
        self$`asset` <- `asset`
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
    #' @return ServerIpmiLiveRequest as a base R list.
    #' @examples
    #' # convert array of ServerIpmiLiveRequest (x) to a data frame
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
    #' Convert ServerIpmiLiveRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ServerIpmiLiveRequestObject <- list()
      if (!is.null(self$`ip`)) {
        ServerIpmiLiveRequestObject[["ip"]] <-
          self$`ip`
      }
      if (!is.null(self$`asset`)) {
        ServerIpmiLiveRequestObject[["asset"]] <-
          self$`asset`
      }
      return(ServerIpmiLiveRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ServerIpmiLiveRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of ServerIpmiLiveRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`ip`)) {
        self$`ip` <- this_object$`ip`
      }
      if (!is.null(this_object$`asset`)) {
        self$`asset` <- this_object$`asset`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ServerIpmiLiveRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ServerIpmiLiveRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of ServerIpmiLiveRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`ip` <- this_object$`ip`
      self$`asset` <- this_object$`asset`
      self
    },

    #' @description
    #' Validate JSON input with respect to ServerIpmiLiveRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `ip`
      if (!is.null(input_json$`ip`)) {
        if (!(is.character(input_json$`ip`) && length(input_json$`ip`) == 1)) {
          stop(paste("Error! Invalid data for `ip`. Must be a string:", input_json$`ip`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ServerIpmiLiveRequest: the required field `ip` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ServerIpmiLiveRequest
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `ip` is null
      if (is.null(self$`ip`)) {
        return(FALSE)
      }

      TRUE
    },

    #' @description
    #' Return a list of invalid fields (if any).
    #'
    #' @return A list of invalid fields (if any).
    getInvalidFields = function() {
      invalid_fields <- list()
      # check if the required `ip` is null
      if (is.null(self$`ip`)) {
        invalid_fields["ip"] <- "Non-nullable required field `ip` cannot be null."
      }

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
# ServerIpmiLiveRequest$unlock()
#
## Below is an example to define the print function
# ServerIpmiLiveRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ServerIpmiLiveRequest$lock()

