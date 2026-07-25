#' Create a new WebsitesOrderPackagesInfo
#'
#' @description
#' WebsitesOrderPackagesInfo Class
#'
#' @docType class
#' @title WebsitesOrderPackagesInfo
#' @description WebsitesOrderPackagesInfo Class
#' @format An \code{R6Class} generator object
#' @field services_id The ID of the package. character
#' @field services_name The name of the package. character
#' @field services_cost The cost of the package. character
#' @field services_category The category of the package. character
#' @field services_buyable Indicates if the package is buyable (1 for yes, 0 for no). character
#' @field services_type The type of the package. character
#' @field services_module The module of the package. character
#' @field services_description Description of the package. character
#' @field services_field1 Additional field 1 for the package. character [optional]
#' @field services_field2 Additional field 2 for the package. character [optional]
#' @field services_html HTML content for the package. character [optional]
#' @field services_moreinfo_url URL for more information about the package. character [optional]
#' @field services_hidden Indicates if the package is hidden (1 for yes, 0 for no). character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
WebsitesOrderPackagesInfo <- R6::R6Class(
  "WebsitesOrderPackagesInfo",
  public = list(
    `services_id` = NULL,
    `services_name` = NULL,
    `services_cost` = NULL,
    `services_category` = NULL,
    `services_buyable` = NULL,
    `services_type` = NULL,
    `services_module` = NULL,
    `services_description` = NULL,
    `services_field1` = NULL,
    `services_field2` = NULL,
    `services_html` = NULL,
    `services_moreinfo_url` = NULL,
    `services_hidden` = NULL,

    #' @description
    #' Initialize a new WebsitesOrderPackagesInfo class.
    #'
    #' @param services_id The ID of the package.
    #' @param services_name The name of the package.
    #' @param services_cost The cost of the package.
    #' @param services_category The category of the package.
    #' @param services_buyable Indicates if the package is buyable (1 for yes, 0 for no).
    #' @param services_type The type of the package.
    #' @param services_module The module of the package.
    #' @param services_description Description of the package.
    #' @param services_field1 Additional field 1 for the package.
    #' @param services_field2 Additional field 2 for the package.
    #' @param services_html HTML content for the package.
    #' @param services_moreinfo_url URL for more information about the package.
    #' @param services_hidden Indicates if the package is hidden (1 for yes, 0 for no).
    #' @param ... Other optional arguments.
    initialize = function(`services_id`, `services_name`, `services_cost`, `services_category`, `services_buyable`, `services_type`, `services_module`, `services_description`, `services_field1` = NULL, `services_field2` = NULL, `services_html` = NULL, `services_moreinfo_url` = NULL, `services_hidden` = NULL, ...) {
      if (!missing(`services_id`)) {
        if (!(is.character(`services_id`) && length(`services_id`) == 1)) {
          stop(paste("Error! Invalid data for `services_id`. Must be a string:", `services_id`))
        }
        self$`services_id` <- `services_id`
      }
      if (!missing(`services_name`)) {
        if (!(is.character(`services_name`) && length(`services_name`) == 1)) {
          stop(paste("Error! Invalid data for `services_name`. Must be a string:", `services_name`))
        }
        self$`services_name` <- `services_name`
      }
      if (!missing(`services_cost`)) {
        if (!(is.character(`services_cost`) && length(`services_cost`) == 1)) {
          stop(paste("Error! Invalid data for `services_cost`. Must be a string:", `services_cost`))
        }
        self$`services_cost` <- `services_cost`
      }
      if (!missing(`services_category`)) {
        if (!(is.character(`services_category`) && length(`services_category`) == 1)) {
          stop(paste("Error! Invalid data for `services_category`. Must be a string:", `services_category`))
        }
        self$`services_category` <- `services_category`
      }
      if (!missing(`services_buyable`)) {
        if (!(is.character(`services_buyable`) && length(`services_buyable`) == 1)) {
          stop(paste("Error! Invalid data for `services_buyable`. Must be a string:", `services_buyable`))
        }
        self$`services_buyable` <- `services_buyable`
      }
      if (!missing(`services_type`)) {
        if (!(is.character(`services_type`) && length(`services_type`) == 1)) {
          stop(paste("Error! Invalid data for `services_type`. Must be a string:", `services_type`))
        }
        self$`services_type` <- `services_type`
      }
      if (!missing(`services_module`)) {
        if (!(is.character(`services_module`) && length(`services_module`) == 1)) {
          stop(paste("Error! Invalid data for `services_module`. Must be a string:", `services_module`))
        }
        self$`services_module` <- `services_module`
      }
      if (!missing(`services_description`)) {
        if (!(is.character(`services_description`) && length(`services_description`) == 1)) {
          stop(paste("Error! Invalid data for `services_description`. Must be a string:", `services_description`))
        }
        self$`services_description` <- `services_description`
      }
      if (!is.null(`services_field1`)) {
        if (!(is.character(`services_field1`) && length(`services_field1`) == 1)) {
          stop(paste("Error! Invalid data for `services_field1`. Must be a string:", `services_field1`))
        }
        self$`services_field1` <- `services_field1`
      }
      if (!is.null(`services_field2`)) {
        if (!(is.character(`services_field2`) && length(`services_field2`) == 1)) {
          stop(paste("Error! Invalid data for `services_field2`. Must be a string:", `services_field2`))
        }
        self$`services_field2` <- `services_field2`
      }
      if (!is.null(`services_html`)) {
        if (!(is.character(`services_html`) && length(`services_html`) == 1)) {
          stop(paste("Error! Invalid data for `services_html`. Must be a string:", `services_html`))
        }
        self$`services_html` <- `services_html`
      }
      if (!is.null(`services_moreinfo_url`)) {
        if (!(is.character(`services_moreinfo_url`) && length(`services_moreinfo_url`) == 1)) {
          stop(paste("Error! Invalid data for `services_moreinfo_url`. Must be a string:", `services_moreinfo_url`))
        }
        self$`services_moreinfo_url` <- `services_moreinfo_url`
      }
      if (!is.null(`services_hidden`)) {
        if (!(is.character(`services_hidden`) && length(`services_hidden`) == 1)) {
          stop(paste("Error! Invalid data for `services_hidden`. Must be a string:", `services_hidden`))
        }
        self$`services_hidden` <- `services_hidden`
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
    #' @return WebsitesOrderPackagesInfo as a base R list.
    #' @examples
    #' # convert array of WebsitesOrderPackagesInfo (x) to a data frame
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
    #' Convert WebsitesOrderPackagesInfo to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      WebsitesOrderPackagesInfoObject <- list()
      if (!is.null(self$`services_id`)) {
        WebsitesOrderPackagesInfoObject[["services_id"]] <-
          self$`services_id`
      }
      if (!is.null(self$`services_name`)) {
        WebsitesOrderPackagesInfoObject[["services_name"]] <-
          self$`services_name`
      }
      if (!is.null(self$`services_cost`)) {
        WebsitesOrderPackagesInfoObject[["services_cost"]] <-
          self$`services_cost`
      }
      if (!is.null(self$`services_category`)) {
        WebsitesOrderPackagesInfoObject[["services_category"]] <-
          self$`services_category`
      }
      if (!is.null(self$`services_buyable`)) {
        WebsitesOrderPackagesInfoObject[["services_buyable"]] <-
          self$`services_buyable`
      }
      if (!is.null(self$`services_type`)) {
        WebsitesOrderPackagesInfoObject[["services_type"]] <-
          self$`services_type`
      }
      if (!is.null(self$`services_module`)) {
        WebsitesOrderPackagesInfoObject[["services_module"]] <-
          self$`services_module`
      }
      if (!is.null(self$`services_description`)) {
        WebsitesOrderPackagesInfoObject[["services_description"]] <-
          self$`services_description`
      }
      if (!is.null(self$`services_field1`)) {
        WebsitesOrderPackagesInfoObject[["services_field1"]] <-
          self$`services_field1`
      }
      if (!is.null(self$`services_field2`)) {
        WebsitesOrderPackagesInfoObject[["services_field2"]] <-
          self$`services_field2`
      }
      if (!is.null(self$`services_html`)) {
        WebsitesOrderPackagesInfoObject[["services_html"]] <-
          self$`services_html`
      }
      if (!is.null(self$`services_moreinfo_url`)) {
        WebsitesOrderPackagesInfoObject[["services_moreinfo_url"]] <-
          self$`services_moreinfo_url`
      }
      if (!is.null(self$`services_hidden`)) {
        WebsitesOrderPackagesInfoObject[["services_hidden"]] <-
          self$`services_hidden`
      }
      return(WebsitesOrderPackagesInfoObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of WebsitesOrderPackagesInfo
    #'
    #' @param input_json the JSON input
    #' @return the instance of WebsitesOrderPackagesInfo
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`services_id`)) {
        self$`services_id` <- this_object$`services_id`
      }
      if (!is.null(this_object$`services_name`)) {
        self$`services_name` <- this_object$`services_name`
      }
      if (!is.null(this_object$`services_cost`)) {
        self$`services_cost` <- this_object$`services_cost`
      }
      if (!is.null(this_object$`services_category`)) {
        self$`services_category` <- this_object$`services_category`
      }
      if (!is.null(this_object$`services_buyable`)) {
        self$`services_buyable` <- this_object$`services_buyable`
      }
      if (!is.null(this_object$`services_type`)) {
        self$`services_type` <- this_object$`services_type`
      }
      if (!is.null(this_object$`services_module`)) {
        self$`services_module` <- this_object$`services_module`
      }
      if (!is.null(this_object$`services_description`)) {
        self$`services_description` <- this_object$`services_description`
      }
      if (!is.null(this_object$`services_field1`)) {
        self$`services_field1` <- this_object$`services_field1`
      }
      if (!is.null(this_object$`services_field2`)) {
        self$`services_field2` <- this_object$`services_field2`
      }
      if (!is.null(this_object$`services_html`)) {
        self$`services_html` <- this_object$`services_html`
      }
      if (!is.null(this_object$`services_moreinfo_url`)) {
        self$`services_moreinfo_url` <- this_object$`services_moreinfo_url`
      }
      if (!is.null(this_object$`services_hidden`)) {
        self$`services_hidden` <- this_object$`services_hidden`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return WebsitesOrderPackagesInfo in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of WebsitesOrderPackagesInfo
    #'
    #' @param input_json the JSON input
    #' @return the instance of WebsitesOrderPackagesInfo
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`services_id` <- this_object$`services_id`
      self$`services_name` <- this_object$`services_name`
      self$`services_cost` <- this_object$`services_cost`
      self$`services_category` <- this_object$`services_category`
      self$`services_buyable` <- this_object$`services_buyable`
      self$`services_type` <- this_object$`services_type`
      self$`services_module` <- this_object$`services_module`
      self$`services_description` <- this_object$`services_description`
      self$`services_field1` <- this_object$`services_field1`
      self$`services_field2` <- this_object$`services_field2`
      self$`services_html` <- this_object$`services_html`
      self$`services_moreinfo_url` <- this_object$`services_moreinfo_url`
      self$`services_hidden` <- this_object$`services_hidden`
      self
    },

    #' @description
    #' Validate JSON input with respect to WebsitesOrderPackagesInfo and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `services_id`
      if (!is.null(input_json$`services_id`)) {
        if (!(is.character(input_json$`services_id`) && length(input_json$`services_id`) == 1)) {
          stop(paste("Error! Invalid data for `services_id`. Must be a string:", input_json$`services_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for WebsitesOrderPackagesInfo: the required field `services_id` is missing."))
      }
      # check the required field `services_name`
      if (!is.null(input_json$`services_name`)) {
        if (!(is.character(input_json$`services_name`) && length(input_json$`services_name`) == 1)) {
          stop(paste("Error! Invalid data for `services_name`. Must be a string:", input_json$`services_name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for WebsitesOrderPackagesInfo: the required field `services_name` is missing."))
      }
      # check the required field `services_cost`
      if (!is.null(input_json$`services_cost`)) {
        if (!(is.character(input_json$`services_cost`) && length(input_json$`services_cost`) == 1)) {
          stop(paste("Error! Invalid data for `services_cost`. Must be a string:", input_json$`services_cost`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for WebsitesOrderPackagesInfo: the required field `services_cost` is missing."))
      }
      # check the required field `services_category`
      if (!is.null(input_json$`services_category`)) {
        if (!(is.character(input_json$`services_category`) && length(input_json$`services_category`) == 1)) {
          stop(paste("Error! Invalid data for `services_category`. Must be a string:", input_json$`services_category`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for WebsitesOrderPackagesInfo: the required field `services_category` is missing."))
      }
      # check the required field `services_buyable`
      if (!is.null(input_json$`services_buyable`)) {
        if (!(is.character(input_json$`services_buyable`) && length(input_json$`services_buyable`) == 1)) {
          stop(paste("Error! Invalid data for `services_buyable`. Must be a string:", input_json$`services_buyable`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for WebsitesOrderPackagesInfo: the required field `services_buyable` is missing."))
      }
      # check the required field `services_type`
      if (!is.null(input_json$`services_type`)) {
        if (!(is.character(input_json$`services_type`) && length(input_json$`services_type`) == 1)) {
          stop(paste("Error! Invalid data for `services_type`. Must be a string:", input_json$`services_type`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for WebsitesOrderPackagesInfo: the required field `services_type` is missing."))
      }
      # check the required field `services_module`
      if (!is.null(input_json$`services_module`)) {
        if (!(is.character(input_json$`services_module`) && length(input_json$`services_module`) == 1)) {
          stop(paste("Error! Invalid data for `services_module`. Must be a string:", input_json$`services_module`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for WebsitesOrderPackagesInfo: the required field `services_module` is missing."))
      }
      # check the required field `services_description`
      if (!is.null(input_json$`services_description`)) {
        if (!(is.character(input_json$`services_description`) && length(input_json$`services_description`) == 1)) {
          stop(paste("Error! Invalid data for `services_description`. Must be a string:", input_json$`services_description`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for WebsitesOrderPackagesInfo: the required field `services_description` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of WebsitesOrderPackagesInfo
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `services_id` is null
      if (is.null(self$`services_id`)) {
        return(FALSE)
      }

      # check if the required `services_name` is null
      if (is.null(self$`services_name`)) {
        return(FALSE)
      }

      # check if the required `services_cost` is null
      if (is.null(self$`services_cost`)) {
        return(FALSE)
      }

      # check if the required `services_category` is null
      if (is.null(self$`services_category`)) {
        return(FALSE)
      }

      # check if the required `services_buyable` is null
      if (is.null(self$`services_buyable`)) {
        return(FALSE)
      }

      # check if the required `services_type` is null
      if (is.null(self$`services_type`)) {
        return(FALSE)
      }

      # check if the required `services_module` is null
      if (is.null(self$`services_module`)) {
        return(FALSE)
      }

      # check if the required `services_description` is null
      if (is.null(self$`services_description`)) {
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
      # check if the required `services_id` is null
      if (is.null(self$`services_id`)) {
        invalid_fields["services_id"] <- "Non-nullable required field `services_id` cannot be null."
      }

      # check if the required `services_name` is null
      if (is.null(self$`services_name`)) {
        invalid_fields["services_name"] <- "Non-nullable required field `services_name` cannot be null."
      }

      # check if the required `services_cost` is null
      if (is.null(self$`services_cost`)) {
        invalid_fields["services_cost"] <- "Non-nullable required field `services_cost` cannot be null."
      }

      # check if the required `services_category` is null
      if (is.null(self$`services_category`)) {
        invalid_fields["services_category"] <- "Non-nullable required field `services_category` cannot be null."
      }

      # check if the required `services_buyable` is null
      if (is.null(self$`services_buyable`)) {
        invalid_fields["services_buyable"] <- "Non-nullable required field `services_buyable` cannot be null."
      }

      # check if the required `services_type` is null
      if (is.null(self$`services_type`)) {
        invalid_fields["services_type"] <- "Non-nullable required field `services_type` cannot be null."
      }

      # check if the required `services_module` is null
      if (is.null(self$`services_module`)) {
        invalid_fields["services_module"] <- "Non-nullable required field `services_module` cannot be null."
      }

      # check if the required `services_description` is null
      if (is.null(self$`services_description`)) {
        invalid_fields["services_description"] <- "Non-nullable required field `services_description` cannot be null."
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
# WebsitesOrderPackagesInfo$unlock()
#
## Below is an example to define the print function
# WebsitesOrderPackagesInfo$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# WebsitesOrderPackagesInfo$lock()

