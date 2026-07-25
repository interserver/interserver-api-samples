#' Create a new QsOrderRequest
#'
#' @description
#' Request body to validate (putQs) or place (addQs) a QuickServer order. Server and OS template come from getNewQs.
#'
#' @docType class
#' @title QsOrderRequest
#' @description QsOrderRequest Class
#' @format An \code{R6Class} generator object
#' @field server QuickServer plan/server id from getNewQs. integer
#' @field password Root password for the QuickServer. character
#' @field os OS template file name from getNewQs (falls back to a default if unrecognized). character [optional]
#' @field tos Terms-of-service acceptance. Must be true to place the order. character
#' @field comment Free-form note saved on the service row. character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
QsOrderRequest <- R6::R6Class(
  "QsOrderRequest",
  public = list(
    `server` = NULL,
    `password` = NULL,
    `os` = NULL,
    `tos` = NULL,
    `comment` = NULL,

    #' @description
    #' Initialize a new QsOrderRequest class.
    #'
    #' @param server QuickServer plan/server id from getNewQs.
    #' @param password Root password for the QuickServer.
    #' @param tos Terms-of-service acceptance. Must be true to place the order.
    #' @param os OS template file name from getNewQs (falls back to a default if unrecognized).. Default to "".
    #' @param comment Free-form note saved on the service row.. Default to "".
    #' @param ... Other optional arguments.
    initialize = function(`server`, `password`, `tos`, `os` = "", `comment` = "", ...) {
      if (!missing(`server`)) {
        if (!(is.numeric(`server`) && length(`server`) == 1)) {
          stop(paste("Error! Invalid data for `server`. Must be an integer:", `server`))
        }
        self$`server` <- `server`
      }
      if (!missing(`password`)) {
        if (!(is.character(`password`) && length(`password`) == 1)) {
          stop(paste("Error! Invalid data for `password`. Must be a string:", `password`))
        }
        self$`password` <- `password`
      }
      if (!missing(`tos`)) {
        if (!(is.logical(`tos`) && length(`tos`) == 1)) {
          stop(paste("Error! Invalid data for `tos`. Must be a boolean:", `tos`))
        }
        self$`tos` <- `tos`
      }
      if (!is.null(`os`)) {
        if (!(is.character(`os`) && length(`os`) == 1)) {
          stop(paste("Error! Invalid data for `os`. Must be a string:", `os`))
        }
        self$`os` <- `os`
      }
      if (!is.null(`comment`)) {
        if (!(is.character(`comment`) && length(`comment`) == 1)) {
          stop(paste("Error! Invalid data for `comment`. Must be a string:", `comment`))
        }
        self$`comment` <- `comment`
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
    #' @return QsOrderRequest as a base R list.
    #' @examples
    #' # convert array of QsOrderRequest (x) to a data frame
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
    #' Convert QsOrderRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      QsOrderRequestObject <- list()
      if (!is.null(self$`server`)) {
        QsOrderRequestObject[["server"]] <-
          self$`server`
      }
      if (!is.null(self$`password`)) {
        QsOrderRequestObject[["password"]] <-
          self$`password`
      }
      if (!is.null(self$`os`)) {
        QsOrderRequestObject[["os"]] <-
          self$`os`
      }
      if (!is.null(self$`tos`)) {
        QsOrderRequestObject[["tos"]] <-
          self$`tos`
      }
      if (!is.null(self$`comment`)) {
        QsOrderRequestObject[["comment"]] <-
          self$`comment`
      }
      return(QsOrderRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of QsOrderRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of QsOrderRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`server`)) {
        self$`server` <- this_object$`server`
      }
      if (!is.null(this_object$`password`)) {
        self$`password` <- this_object$`password`
      }
      if (!is.null(this_object$`os`)) {
        self$`os` <- this_object$`os`
      }
      if (!is.null(this_object$`tos`)) {
        self$`tos` <- this_object$`tos`
      }
      if (!is.null(this_object$`comment`)) {
        self$`comment` <- this_object$`comment`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return QsOrderRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of QsOrderRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of QsOrderRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`server` <- this_object$`server`
      self$`password` <- this_object$`password`
      self$`os` <- this_object$`os`
      self$`tos` <- this_object$`tos`
      self$`comment` <- this_object$`comment`
      self
    },

    #' @description
    #' Validate JSON input with respect to QsOrderRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `server`
      if (!is.null(input_json$`server`)) {
        if (!(is.numeric(input_json$`server`) && length(input_json$`server`) == 1)) {
          stop(paste("Error! Invalid data for `server`. Must be an integer:", input_json$`server`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for QsOrderRequest: the required field `server` is missing."))
      }
      # check the required field `password`
      if (!is.null(input_json$`password`)) {
        if (!(is.character(input_json$`password`) && length(input_json$`password`) == 1)) {
          stop(paste("Error! Invalid data for `password`. Must be a string:", input_json$`password`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for QsOrderRequest: the required field `password` is missing."))
      }
      # check the required field `tos`
      if (!is.null(input_json$`tos`)) {
        if (!(is.logical(input_json$`tos`) && length(input_json$`tos`) == 1)) {
          stop(paste("Error! Invalid data for `tos`. Must be a boolean:", input_json$`tos`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for QsOrderRequest: the required field `tos` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of QsOrderRequest
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `server` is null
      if (is.null(self$`server`)) {
        return(FALSE)
      }

      # check if the required `password` is null
      if (is.null(self$`password`)) {
        return(FALSE)
      }

      # check if the required `tos` is null
      if (is.null(self$`tos`)) {
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
      # check if the required `server` is null
      if (is.null(self$`server`)) {
        invalid_fields["server"] <- "Non-nullable required field `server` cannot be null."
      }

      # check if the required `password` is null
      if (is.null(self$`password`)) {
        invalid_fields["password"] <- "Non-nullable required field `password` cannot be null."
      }

      # check if the required `tos` is null
      if (is.null(self$`tos`)) {
        invalid_fields["tos"] <- "Non-nullable required field `tos` cannot be null."
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
# QsOrderRequest$unlock()
#
## Below is an example to define the print function
# QsOrderRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# QsOrderRequest$lock()

