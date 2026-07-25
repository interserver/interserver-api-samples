#' Create a new ServerLocation1
#'
#' @description
#' ServerLocation1 Class
#'
#' @docType class
#' @title ServerLocation1
#' @description ServerLocation1 Class
#' @format An \code{R6Class} generator object
#' @field location_id  integer
#' @field location_name  character
#' @field location_lat  character
#' @field location_long  character
#' @field location_description  character [optional]
#' @field location_ipmi_group  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ServerLocation1 <- R6::R6Class(
  "ServerLocation1",
  public = list(
    `location_id` = NULL,
    `location_name` = NULL,
    `location_lat` = NULL,
    `location_long` = NULL,
    `location_description` = NULL,
    `location_ipmi_group` = NULL,

    #' @description
    #' Initialize a new ServerLocation1 class.
    #'
    #' @param location_id location_id
    #' @param location_name location_name
    #' @param location_lat location_lat
    #' @param location_long location_long
    #' @param location_description location_description
    #' @param location_ipmi_group location_ipmi_group
    #' @param ... Other optional arguments.
    initialize = function(`location_id`, `location_name`, `location_lat`, `location_long`, `location_description` = NULL, `location_ipmi_group` = NULL, ...) {
      if (!missing(`location_id`)) {
        if (!(is.numeric(`location_id`) && length(`location_id`) == 1)) {
          stop(paste("Error! Invalid data for `location_id`. Must be an integer:", `location_id`))
        }
        self$`location_id` <- `location_id`
      }
      if (!missing(`location_name`)) {
        if (!(is.character(`location_name`) && length(`location_name`) == 1)) {
          stop(paste("Error! Invalid data for `location_name`. Must be a string:", `location_name`))
        }
        self$`location_name` <- `location_name`
      }
      if (!missing(`location_lat`)) {
        if (!(is.character(`location_lat`) && length(`location_lat`) == 1)) {
          stop(paste("Error! Invalid data for `location_lat`. Must be a string:", `location_lat`))
        }
        self$`location_lat` <- `location_lat`
      }
      if (!missing(`location_long`)) {
        if (!(is.character(`location_long`) && length(`location_long`) == 1)) {
          stop(paste("Error! Invalid data for `location_long`. Must be a string:", `location_long`))
        }
        self$`location_long` <- `location_long`
      }
      if (!is.null(`location_description`)) {
        if (!(is.character(`location_description`) && length(`location_description`) == 1)) {
          stop(paste("Error! Invalid data for `location_description`. Must be a string:", `location_description`))
        }
        self$`location_description` <- `location_description`
      }
      if (!is.null(`location_ipmi_group`)) {
        if (!(is.numeric(`location_ipmi_group`) && length(`location_ipmi_group`) == 1)) {
          stop(paste("Error! Invalid data for `location_ipmi_group`. Must be an integer:", `location_ipmi_group`))
        }
        self$`location_ipmi_group` <- `location_ipmi_group`
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
    #' @return ServerLocation1 as a base R list.
    #' @examples
    #' # convert array of ServerLocation1 (x) to a data frame
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
    #' Convert ServerLocation1 to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ServerLocation1Object <- list()
      if (!is.null(self$`location_id`)) {
        ServerLocation1Object[["location_id"]] <-
          self$`location_id`
      }
      if (!is.null(self$`location_name`)) {
        ServerLocation1Object[["location_name"]] <-
          self$`location_name`
      }
      if (!is.null(self$`location_lat`)) {
        ServerLocation1Object[["location_lat"]] <-
          self$`location_lat`
      }
      if (!is.null(self$`location_long`)) {
        ServerLocation1Object[["location_long"]] <-
          self$`location_long`
      }
      if (!is.null(self$`location_description`)) {
        ServerLocation1Object[["location_description"]] <-
          self$`location_description`
      }
      if (!is.null(self$`location_ipmi_group`)) {
        ServerLocation1Object[["location_ipmi_group"]] <-
          self$`location_ipmi_group`
      }
      return(ServerLocation1Object)
    },

    #' @description
    #' Deserialize JSON string into an instance of ServerLocation1
    #'
    #' @param input_json the JSON input
    #' @return the instance of ServerLocation1
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`location_id`)) {
        self$`location_id` <- this_object$`location_id`
      }
      if (!is.null(this_object$`location_name`)) {
        self$`location_name` <- this_object$`location_name`
      }
      if (!is.null(this_object$`location_lat`)) {
        self$`location_lat` <- this_object$`location_lat`
      }
      if (!is.null(this_object$`location_long`)) {
        self$`location_long` <- this_object$`location_long`
      }
      if (!is.null(this_object$`location_description`)) {
        self$`location_description` <- this_object$`location_description`
      }
      if (!is.null(this_object$`location_ipmi_group`)) {
        self$`location_ipmi_group` <- this_object$`location_ipmi_group`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ServerLocation1 in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ServerLocation1
    #'
    #' @param input_json the JSON input
    #' @return the instance of ServerLocation1
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`location_id` <- this_object$`location_id`
      self$`location_name` <- this_object$`location_name`
      self$`location_lat` <- this_object$`location_lat`
      self$`location_long` <- this_object$`location_long`
      self$`location_description` <- this_object$`location_description`
      self$`location_ipmi_group` <- this_object$`location_ipmi_group`
      self
    },

    #' @description
    #' Validate JSON input with respect to ServerLocation1 and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `location_id`
      if (!is.null(input_json$`location_id`)) {
        if (!(is.numeric(input_json$`location_id`) && length(input_json$`location_id`) == 1)) {
          stop(paste("Error! Invalid data for `location_id`. Must be an integer:", input_json$`location_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ServerLocation1: the required field `location_id` is missing."))
      }
      # check the required field `location_name`
      if (!is.null(input_json$`location_name`)) {
        if (!(is.character(input_json$`location_name`) && length(input_json$`location_name`) == 1)) {
          stop(paste("Error! Invalid data for `location_name`. Must be a string:", input_json$`location_name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ServerLocation1: the required field `location_name` is missing."))
      }
      # check the required field `location_lat`
      if (!is.null(input_json$`location_lat`)) {
        if (!(is.character(input_json$`location_lat`) && length(input_json$`location_lat`) == 1)) {
          stop(paste("Error! Invalid data for `location_lat`. Must be a string:", input_json$`location_lat`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ServerLocation1: the required field `location_lat` is missing."))
      }
      # check the required field `location_long`
      if (!is.null(input_json$`location_long`)) {
        if (!(is.character(input_json$`location_long`) && length(input_json$`location_long`) == 1)) {
          stop(paste("Error! Invalid data for `location_long`. Must be a string:", input_json$`location_long`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ServerLocation1: the required field `location_long` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ServerLocation1
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `location_id` is null
      if (is.null(self$`location_id`)) {
        return(FALSE)
      }

      # check if the required `location_name` is null
      if (is.null(self$`location_name`)) {
        return(FALSE)
      }

      # check if the required `location_lat` is null
      if (is.null(self$`location_lat`)) {
        return(FALSE)
      }

      # check if the required `location_long` is null
      if (is.null(self$`location_long`)) {
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
      # check if the required `location_id` is null
      if (is.null(self$`location_id`)) {
        invalid_fields["location_id"] <- "Non-nullable required field `location_id` cannot be null."
      }

      # check if the required `location_name` is null
      if (is.null(self$`location_name`)) {
        invalid_fields["location_name"] <- "Non-nullable required field `location_name` cannot be null."
      }

      # check if the required `location_lat` is null
      if (is.null(self$`location_lat`)) {
        invalid_fields["location_lat"] <- "Non-nullable required field `location_lat` cannot be null."
      }

      # check if the required `location_long` is null
      if (is.null(self$`location_long`)) {
        invalid_fields["location_long"] <- "Non-nullable required field `location_long` cannot be null."
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
# ServerLocation1$unlock()
#
## Below is an example to define the print function
# ServerLocation1$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ServerLocation1$lock()

