#' Create a new TemplateRequest
#'
#' @description
#' VPS OS Template Request
#'
#' @docType class
#' @title TemplateRequest
#' @description TemplateRequest Class
#' @format An \code{R6Class} generator object
#' @field template OS Template Filename character
#' @field localPassword Password for this account. character
#' @field password Password for Root / Administrator Account. character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TemplateRequest <- R6::R6Class(
  "TemplateRequest",
  public = list(
    `template` = NULL,
    `localPassword` = NULL,
    `password` = NULL,

    #' @description
    #' Initialize a new TemplateRequest class.
    #'
    #' @param template OS Template Filename
    #' @param localPassword Password for this account.
    #' @param password Password for Root / Administrator Account.
    #' @param ... Other optional arguments.
    initialize = function(`template`, `localPassword`, `password` = NULL, ...) {
      if (!missing(`template`)) {
        if (!(is.character(`template`) && length(`template`) == 1)) {
          stop(paste("Error! Invalid data for `template`. Must be a string:", `template`))
        }
        self$`template` <- `template`
      }
      if (!missing(`localPassword`)) {
        if (!(is.character(`localPassword`) && length(`localPassword`) == 1)) {
          stop(paste("Error! Invalid data for `localPassword`. Must be a string:", `localPassword`))
        }
        self$`localPassword` <- `localPassword`
      }
      if (!is.null(`password`)) {
        if (!(is.character(`password`) && length(`password`) == 1)) {
          stop(paste("Error! Invalid data for `password`. Must be a string:", `password`))
        }
        self$`password` <- `password`
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
    #' @return TemplateRequest as a base R list.
    #' @examples
    #' # convert array of TemplateRequest (x) to a data frame
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
    #' Convert TemplateRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      TemplateRequestObject <- list()
      if (!is.null(self$`template`)) {
        TemplateRequestObject[["template"]] <-
          self$`template`
      }
      if (!is.null(self$`localPassword`)) {
        TemplateRequestObject[["localPassword"]] <-
          self$`localPassword`
      }
      if (!is.null(self$`password`)) {
        TemplateRequestObject[["password"]] <-
          self$`password`
      }
      return(TemplateRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of TemplateRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of TemplateRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`template`)) {
        self$`template` <- this_object$`template`
      }
      if (!is.null(this_object$`localPassword`)) {
        self$`localPassword` <- this_object$`localPassword`
      }
      if (!is.null(this_object$`password`)) {
        self$`password` <- this_object$`password`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return TemplateRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of TemplateRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of TemplateRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`template` <- this_object$`template`
      self$`localPassword` <- this_object$`localPassword`
      self$`password` <- this_object$`password`
      self
    },

    #' @description
    #' Validate JSON input with respect to TemplateRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `template`
      if (!is.null(input_json$`template`)) {
        if (!(is.character(input_json$`template`) && length(input_json$`template`) == 1)) {
          stop(paste("Error! Invalid data for `template`. Must be a string:", input_json$`template`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TemplateRequest: the required field `template` is missing."))
      }
      # check the required field `localPassword`
      if (!is.null(input_json$`localPassword`)) {
        if (!(is.character(input_json$`localPassword`) && length(input_json$`localPassword`) == 1)) {
          stop(paste("Error! Invalid data for `localPassword`. Must be a string:", input_json$`localPassword`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TemplateRequest: the required field `localPassword` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of TemplateRequest
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `template` is null
      if (is.null(self$`template`)) {
        return(FALSE)
      }

      # check if the required `localPassword` is null
      if (is.null(self$`localPassword`)) {
        return(FALSE)
      }

      if (nchar(self$`password`) < 6) {
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
      # check if the required `template` is null
      if (is.null(self$`template`)) {
        invalid_fields["template"] <- "Non-nullable required field `template` cannot be null."
      }

      # check if the required `localPassword` is null
      if (is.null(self$`localPassword`)) {
        invalid_fields["localPassword"] <- "Non-nullable required field `localPassword` cannot be null."
      }

      if (nchar(self$`password`) < 6) {
        invalid_fields["password"] <- "Invalid length for `password`, must be bigger than or equal to 6."
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
# TemplateRequest$unlock()
#
## Below is an example to define the print function
# TemplateRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# TemplateRequest$lock()

