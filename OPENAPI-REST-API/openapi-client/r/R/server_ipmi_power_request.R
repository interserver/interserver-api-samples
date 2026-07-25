#' Create a new ServerIpmiPowerRequest
#'
#' @description
#' IPMI Power command for servers
#'
#' @docType class
#' @title ServerIpmiPowerRequest
#' @description ServerIpmiPowerRequest Class
#' @format An \code{R6Class} generator object
#' @field action The power action to send to the ipmi controller. character
#' @field asset The Asset ID integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ServerIpmiPowerRequest <- R6::R6Class(
  "ServerIpmiPowerRequest",
  public = list(
    `action` = NULL,
    `asset` = NULL,

    #' @description
    #' Initialize a new ServerIpmiPowerRequest class.
    #'
    #' @param action The power action to send to the ipmi controller.
    #' @param asset The Asset ID
    #' @param ... Other optional arguments.
    initialize = function(`action`, `asset` = NULL, ...) {
      if (!missing(`action`)) {
        if (!(`action` %in% c("cycle", "reset", "on", "off", "soft"))) {
          stop(paste("Error! \"", `action`, "\" cannot be assigned to `action`. Must be \"cycle\", \"reset\", \"on\", \"off\", \"soft\".", sep = ""))
        }
        if (!(is.character(`action`) && length(`action`) == 1)) {
          stop(paste("Error! Invalid data for `action`. Must be a string:", `action`))
        }
        self$`action` <- `action`
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
    #' @return ServerIpmiPowerRequest as a base R list.
    #' @examples
    #' # convert array of ServerIpmiPowerRequest (x) to a data frame
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
    #' Convert ServerIpmiPowerRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ServerIpmiPowerRequestObject <- list()
      if (!is.null(self$`action`)) {
        ServerIpmiPowerRequestObject[["action"]] <-
          self$`action`
      }
      if (!is.null(self$`asset`)) {
        ServerIpmiPowerRequestObject[["asset"]] <-
          self$`asset`
      }
      return(ServerIpmiPowerRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ServerIpmiPowerRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of ServerIpmiPowerRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`action`)) {
        if (!is.null(this_object$`action`) && !(this_object$`action` %in% c("cycle", "reset", "on", "off", "soft"))) {
          stop(paste("Error! \"", this_object$`action`, "\" cannot be assigned to `action`. Must be \"cycle\", \"reset\", \"on\", \"off\", \"soft\".", sep = ""))
        }
        self$`action` <- this_object$`action`
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
    #' @return ServerIpmiPowerRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ServerIpmiPowerRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of ServerIpmiPowerRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`action`) && !(this_object$`action` %in% c("cycle", "reset", "on", "off", "soft"))) {
        stop(paste("Error! \"", this_object$`action`, "\" cannot be assigned to `action`. Must be \"cycle\", \"reset\", \"on\", \"off\", \"soft\".", sep = ""))
      }
      self$`action` <- this_object$`action`
      self$`asset` <- this_object$`asset`
      self
    },

    #' @description
    #' Validate JSON input with respect to ServerIpmiPowerRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `action`
      if (!is.null(input_json$`action`)) {
        if (!(is.character(input_json$`action`) && length(input_json$`action`) == 1)) {
          stop(paste("Error! Invalid data for `action`. Must be a string:", input_json$`action`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ServerIpmiPowerRequest: the required field `action` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ServerIpmiPowerRequest
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `action` is null
      if (is.null(self$`action`)) {
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
      # check if the required `action` is null
      if (is.null(self$`action`)) {
        invalid_fields["action"] <- "Non-nullable required field `action` cannot be null."
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
# ServerIpmiPowerRequest$unlock()
#
## Below is an example to define the print function
# ServerIpmiPowerRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ServerIpmiPowerRequest$lock()

