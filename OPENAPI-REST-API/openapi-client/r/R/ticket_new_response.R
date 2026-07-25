#' Create a new TicketNewResponse
#'
#' @description
#' Response returned after creating a new support ticket.
#'
#' @docType class
#' @title TicketNewResponse
#' @description TicketNewResponse Class
#' @format An \code{R6Class} generator object
#' @field text  character
#' @field success  character
#' @field ticket_id  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TicketNewResponse <- R6::R6Class(
  "TicketNewResponse",
  public = list(
    `text` = NULL,
    `success` = NULL,
    `ticket_id` = NULL,

    #' @description
    #' Initialize a new TicketNewResponse class.
    #'
    #' @param text text
    #' @param success success
    #' @param ticket_id ticket_id
    #' @param ... Other optional arguments.
    initialize = function(`text`, `success`, `ticket_id` = NULL, ...) {
      if (!missing(`text`)) {
        if (!(is.character(`text`) && length(`text`) == 1)) {
          stop(paste("Error! Invalid data for `text`. Must be a string:", `text`))
        }
        self$`text` <- `text`
      }
      if (!missing(`success`)) {
        if (!(is.logical(`success`) && length(`success`) == 1)) {
          stop(paste("Error! Invalid data for `success`. Must be a boolean:", `success`))
        }
        self$`success` <- `success`
      }
      if (!is.null(`ticket_id`)) {
        if (!(is.numeric(`ticket_id`) && length(`ticket_id`) == 1)) {
          stop(paste("Error! Invalid data for `ticket_id`. Must be an integer:", `ticket_id`))
        }
        self$`ticket_id` <- `ticket_id`
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
    #' @return TicketNewResponse as a base R list.
    #' @examples
    #' # convert array of TicketNewResponse (x) to a data frame
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
    #' Convert TicketNewResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      TicketNewResponseObject <- list()
      if (!is.null(self$`text`)) {
        TicketNewResponseObject[["text"]] <-
          self$`text`
      }
      if (!is.null(self$`success`)) {
        TicketNewResponseObject[["success"]] <-
          self$`success`
      }
      if (!is.null(self$`ticket_id`)) {
        TicketNewResponseObject[["ticket_id"]] <-
          self$`ticket_id`
      }
      return(TicketNewResponseObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of TicketNewResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of TicketNewResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`text`)) {
        self$`text` <- this_object$`text`
      }
      if (!is.null(this_object$`success`)) {
        self$`success` <- this_object$`success`
      }
      if (!is.null(this_object$`ticket_id`)) {
        self$`ticket_id` <- this_object$`ticket_id`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return TicketNewResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of TicketNewResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of TicketNewResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`text` <- this_object$`text`
      self$`success` <- this_object$`success`
      self$`ticket_id` <- this_object$`ticket_id`
      self
    },

    #' @description
    #' Validate JSON input with respect to TicketNewResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `text`
      if (!is.null(input_json$`text`)) {
        if (!(is.character(input_json$`text`) && length(input_json$`text`) == 1)) {
          stop(paste("Error! Invalid data for `text`. Must be a string:", input_json$`text`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TicketNewResponse: the required field `text` is missing."))
      }
      # check the required field `success`
      if (!is.null(input_json$`success`)) {
        if (!(is.logical(input_json$`success`) && length(input_json$`success`) == 1)) {
          stop(paste("Error! Invalid data for `success`. Must be a boolean:", input_json$`success`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TicketNewResponse: the required field `success` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of TicketNewResponse
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `text` is null
      if (is.null(self$`text`)) {
        return(FALSE)
      }

      # check if the required `success` is null
      if (is.null(self$`success`)) {
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
      # check if the required `text` is null
      if (is.null(self$`text`)) {
        invalid_fields["text"] <- "Non-nullable required field `text` cannot be null."
      }

      # check if the required `success` is null
      if (is.null(self$`success`)) {
        invalid_fields["success"] <- "Non-nullable required field `success` cannot be null."
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
# TicketNewResponse$unlock()
#
## Below is an example to define the print function
# TicketNewResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# TicketNewResponse$lock()

