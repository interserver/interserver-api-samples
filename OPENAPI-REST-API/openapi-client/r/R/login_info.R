#' Create a new LoginInfo
#'
#' @description
#' Basic information useful for rendering a login page.
#'
#' @docType class
#' @title LoginInfo
#' @description LoginInfo Class
#' @format An \code{R6Class} generator object
#' @field captcha A base64 encoded image to use for rendering the alternateive captcha. character
#' @field counts  \link{LoginServiceCounts}
#' @field logo A logo image url. character [optional]
#' @field language The desired langauge to render the site with. character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
LoginInfo <- R6::R6Class(
  "LoginInfo",
  public = list(
    `captcha` = NULL,
    `counts` = NULL,
    `logo` = NULL,
    `language` = NULL,

    #' @description
    #' Initialize a new LoginInfo class.
    #'
    #' @param captcha A base64 encoded image to use for rendering the alternateive captcha.
    #' @param counts counts
    #' @param logo A logo image url.
    #' @param language The desired langauge to render the site with.
    #' @param ... Other optional arguments.
    initialize = function(`captcha`, `counts`, `logo` = NULL, `language` = NULL, ...) {
      if (!missing(`captcha`)) {
        if (!(is.character(`captcha`) && length(`captcha`) == 1)) {
          stop(paste("Error! Invalid data for `captcha`. Must be a string:", `captcha`))
        }
        self$`captcha` <- `captcha`
      }
      if (!missing(`counts`)) {
        stopifnot(R6::is.R6(`counts`))
        self$`counts` <- `counts`
      }
      if (!is.null(`logo`)) {
        if (!(is.character(`logo`) && length(`logo`) == 1)) {
          stop(paste("Error! Invalid data for `logo`. Must be a string:", `logo`))
        }
        self$`logo` <- `logo`
      }
      if (!is.null(`language`)) {
        if (!(is.character(`language`) && length(`language`) == 1)) {
          stop(paste("Error! Invalid data for `language`. Must be a string:", `language`))
        }
        self$`language` <- `language`
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
    #' @return LoginInfo as a base R list.
    #' @examples
    #' # convert array of LoginInfo (x) to a data frame
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
    #' Convert LoginInfo to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      LoginInfoObject <- list()
      if (!is.null(self$`captcha`)) {
        LoginInfoObject[["captcha"]] <-
          self$`captcha`
      }
      if (!is.null(self$`counts`)) {
        LoginInfoObject[["counts"]] <-
          self$extractSimpleType(self$`counts`)
      }
      if (!is.null(self$`logo`)) {
        LoginInfoObject[["logo"]] <-
          self$`logo`
      }
      if (!is.null(self$`language`)) {
        LoginInfoObject[["language"]] <-
          self$`language`
      }
      return(LoginInfoObject)
    },

    extractSimpleType = function(x) {
      if (R6::is.R6(x)) {
        return(x$toSimpleType())
      } else if (!self$hasNestedR6(x)) {
        return(x)
      }
      lapply(x, self$extractSimpleType)
    },

    hasNestedR6 = function(x) {
      if (R6::is.R6(x)) {
        return(TRUE)
      }
      if (is.list(x)) {
        for (item in x) {
          if (self$hasNestedR6(item)) {
            return(TRUE)
          }
        }
      }
      FALSE
    },

    #' @description
    #' Deserialize JSON string into an instance of LoginInfo
    #'
    #' @param input_json the JSON input
    #' @return the instance of LoginInfo
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`captcha`)) {
        self$`captcha` <- this_object$`captcha`
      }
      if (!is.null(this_object$`counts`)) {
        `counts_object` <- LoginServiceCounts$new()
        `counts_object`$fromJSON(jsonlite::toJSON(this_object$`counts`, auto_unbox = TRUE, digits = NA))
        self$`counts` <- `counts_object`
      }
      if (!is.null(this_object$`logo`)) {
        self$`logo` <- this_object$`logo`
      }
      if (!is.null(this_object$`language`)) {
        self$`language` <- this_object$`language`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return LoginInfo in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of LoginInfo
    #'
    #' @param input_json the JSON input
    #' @return the instance of LoginInfo
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`captcha` <- this_object$`captcha`
      self$`counts` <- LoginServiceCounts$new()$fromJSON(jsonlite::toJSON(this_object$`counts`, auto_unbox = TRUE, digits = NA))
      self$`logo` <- this_object$`logo`
      self$`language` <- this_object$`language`
      self
    },

    #' @description
    #' Validate JSON input with respect to LoginInfo and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `captcha`
      if (!is.null(input_json$`captcha`)) {
        if (!(is.character(input_json$`captcha`) && length(input_json$`captcha`) == 1)) {
          stop(paste("Error! Invalid data for `captcha`. Must be a string:", input_json$`captcha`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for LoginInfo: the required field `captcha` is missing."))
      }
      # check the required field `counts`
      if (!is.null(input_json$`counts`)) {
        stopifnot(R6::is.R6(input_json$`counts`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for LoginInfo: the required field `counts` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of LoginInfo
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `captcha` is null
      if (is.null(self$`captcha`)) {
        return(FALSE)
      }

      # check if the required `counts` is null
      if (is.null(self$`counts`)) {
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
      # check if the required `captcha` is null
      if (is.null(self$`captcha`)) {
        invalid_fields["captcha"] <- "Non-nullable required field `captcha` cannot be null."
      }

      # check if the required `counts` is null
      if (is.null(self$`counts`)) {
        invalid_fields["counts"] <- "Non-nullable required field `counts` cannot be null."
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
# LoginInfo$unlock()
#
## Below is an example to define the print function
# LoginInfo$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# LoginInfo$lock()

