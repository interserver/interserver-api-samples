#' Create a new LicenseClientLink
#'
#' @description
#' LicenseClientLink Class
#'
#' @docType class
#' @title LicenseClientLink
#' @description LicenseClientLink Class
#' @format An \code{R6Class} generator object
#' @field label Link label character
#' @field link Link URL character
#' @field icon Link icon character
#' @field help_text Help text character
#' @field icon_text Icon text character [optional]
#' @field other_attr Other attributes character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
LicenseClientLink <- R6::R6Class(
  "LicenseClientLink",
  public = list(
    `label` = NULL,
    `link` = NULL,
    `icon` = NULL,
    `help_text` = NULL,
    `icon_text` = NULL,
    `other_attr` = NULL,

    #' @description
    #' Initialize a new LicenseClientLink class.
    #'
    #' @param label Link label
    #' @param link Link URL
    #' @param icon Link icon
    #' @param help_text Help text
    #' @param icon_text Icon text
    #' @param other_attr Other attributes
    #' @param ... Other optional arguments.
    initialize = function(`label`, `link`, `icon`, `help_text`, `icon_text` = NULL, `other_attr` = NULL, ...) {
      if (!missing(`label`)) {
        if (!(is.character(`label`) && length(`label`) == 1)) {
          stop(paste("Error! Invalid data for `label`. Must be a string:", `label`))
        }
        self$`label` <- `label`
      }
      if (!missing(`link`)) {
        if (!(is.character(`link`) && length(`link`) == 1)) {
          stop(paste("Error! Invalid data for `link`. Must be a string:", `link`))
        }
        self$`link` <- `link`
      }
      if (!missing(`icon`)) {
        if (!(is.character(`icon`) && length(`icon`) == 1)) {
          stop(paste("Error! Invalid data for `icon`. Must be a string:", `icon`))
        }
        self$`icon` <- `icon`
      }
      if (!missing(`help_text`)) {
        if (!(is.character(`help_text`) && length(`help_text`) == 1)) {
          stop(paste("Error! Invalid data for `help_text`. Must be a string:", `help_text`))
        }
        self$`help_text` <- `help_text`
      }
      if (!is.null(`icon_text`)) {
        if (!(is.character(`icon_text`) && length(`icon_text`) == 1)) {
          stop(paste("Error! Invalid data for `icon_text`. Must be a string:", `icon_text`))
        }
        self$`icon_text` <- `icon_text`
      }
      if (!is.null(`other_attr`)) {
        if (!(is.character(`other_attr`) && length(`other_attr`) == 1)) {
          stop(paste("Error! Invalid data for `other_attr`. Must be a string:", `other_attr`))
        }
        self$`other_attr` <- `other_attr`
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
    #' @return LicenseClientLink as a base R list.
    #' @examples
    #' # convert array of LicenseClientLink (x) to a data frame
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
    #' Convert LicenseClientLink to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      LicenseClientLinkObject <- list()
      if (!is.null(self$`label`)) {
        LicenseClientLinkObject[["label"]] <-
          self$`label`
      }
      if (!is.null(self$`link`)) {
        LicenseClientLinkObject[["link"]] <-
          self$`link`
      }
      if (!is.null(self$`icon`)) {
        LicenseClientLinkObject[["icon"]] <-
          self$`icon`
      }
      if (!is.null(self$`help_text`)) {
        LicenseClientLinkObject[["help_text"]] <-
          self$`help_text`
      }
      if (!is.null(self$`icon_text`)) {
        LicenseClientLinkObject[["icon_text"]] <-
          self$`icon_text`
      }
      if (!is.null(self$`other_attr`)) {
        LicenseClientLinkObject[["other_attr"]] <-
          self$`other_attr`
      }
      return(LicenseClientLinkObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of LicenseClientLink
    #'
    #' @param input_json the JSON input
    #' @return the instance of LicenseClientLink
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`label`)) {
        self$`label` <- this_object$`label`
      }
      if (!is.null(this_object$`link`)) {
        self$`link` <- this_object$`link`
      }
      if (!is.null(this_object$`icon`)) {
        self$`icon` <- this_object$`icon`
      }
      if (!is.null(this_object$`help_text`)) {
        self$`help_text` <- this_object$`help_text`
      }
      if (!is.null(this_object$`icon_text`)) {
        self$`icon_text` <- this_object$`icon_text`
      }
      if (!is.null(this_object$`other_attr`)) {
        self$`other_attr` <- this_object$`other_attr`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return LicenseClientLink in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of LicenseClientLink
    #'
    #' @param input_json the JSON input
    #' @return the instance of LicenseClientLink
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`label` <- this_object$`label`
      self$`link` <- this_object$`link`
      self$`icon` <- this_object$`icon`
      self$`help_text` <- this_object$`help_text`
      self$`icon_text` <- this_object$`icon_text`
      self$`other_attr` <- this_object$`other_attr`
      self
    },

    #' @description
    #' Validate JSON input with respect to LicenseClientLink and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `label`
      if (!is.null(input_json$`label`)) {
        if (!(is.character(input_json$`label`) && length(input_json$`label`) == 1)) {
          stop(paste("Error! Invalid data for `label`. Must be a string:", input_json$`label`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for LicenseClientLink: the required field `label` is missing."))
      }
      # check the required field `link`
      if (!is.null(input_json$`link`)) {
        if (!(is.character(input_json$`link`) && length(input_json$`link`) == 1)) {
          stop(paste("Error! Invalid data for `link`. Must be a string:", input_json$`link`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for LicenseClientLink: the required field `link` is missing."))
      }
      # check the required field `icon`
      if (!is.null(input_json$`icon`)) {
        if (!(is.character(input_json$`icon`) && length(input_json$`icon`) == 1)) {
          stop(paste("Error! Invalid data for `icon`. Must be a string:", input_json$`icon`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for LicenseClientLink: the required field `icon` is missing."))
      }
      # check the required field `help_text`
      if (!is.null(input_json$`help_text`)) {
        if (!(is.character(input_json$`help_text`) && length(input_json$`help_text`) == 1)) {
          stop(paste("Error! Invalid data for `help_text`. Must be a string:", input_json$`help_text`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for LicenseClientLink: the required field `help_text` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of LicenseClientLink
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `label` is null
      if (is.null(self$`label`)) {
        return(FALSE)
      }

      # check if the required `link` is null
      if (is.null(self$`link`)) {
        return(FALSE)
      }

      # check if the required `icon` is null
      if (is.null(self$`icon`)) {
        return(FALSE)
      }

      # check if the required `help_text` is null
      if (is.null(self$`help_text`)) {
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
      # check if the required `label` is null
      if (is.null(self$`label`)) {
        invalid_fields["label"] <- "Non-nullable required field `label` cannot be null."
      }

      # check if the required `link` is null
      if (is.null(self$`link`)) {
        invalid_fields["link"] <- "Non-nullable required field `link` cannot be null."
      }

      # check if the required `icon` is null
      if (is.null(self$`icon`)) {
        invalid_fields["icon"] <- "Non-nullable required field `icon` cannot be null."
      }

      # check if the required `help_text` is null
      if (is.null(self$`help_text`)) {
        invalid_fields["help_text"] <- "Non-nullable required field `help_text` cannot be null."
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
# LicenseClientLink$unlock()
#
## Below is an example to define the print function
# LicenseClientLink$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# LicenseClientLink$lock()

