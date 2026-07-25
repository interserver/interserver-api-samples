#' Create a new ServerSwitchport
#'
#' @description
#' ServerSwitchport Class
#'
#' @docType class
#' @title ServerSwitchport
#' @description ServerSwitchport Class
#' @format An \code{R6Class} generator object
#' @field switchport_id Unique identifier for the switchport. integer
#' @field switch_id Unique identifier for the switch associated with the switchport. character
#' @field switch Name of the switch associated with the switchport. character
#' @field port Port name on the switch. character
#' @field blade Blade name associated with the port. character
#' @field justport Port identifier. character
#' @field graph_id Identifier for the graph associated with the switchport. character
#' @field asset_id Unique identifier of the asset associated with the switchport. integer
#' @field vlans List of VLANs associated with the switchport. list(character) [optional]
#' @field vlans6 List of IPv6 VLANs associated with the switchport. list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ServerSwitchport <- R6::R6Class(
  "ServerSwitchport",
  public = list(
    `switchport_id` = NULL,
    `switch_id` = NULL,
    `switch` = NULL,
    `port` = NULL,
    `blade` = NULL,
    `justport` = NULL,
    `graph_id` = NULL,
    `asset_id` = NULL,
    `vlans` = NULL,
    `vlans6` = NULL,

    #' @description
    #' Initialize a new ServerSwitchport class.
    #'
    #' @param switchport_id Unique identifier for the switchport.
    #' @param switch_id Unique identifier for the switch associated with the switchport.
    #' @param switch Name of the switch associated with the switchport.
    #' @param port Port name on the switch.
    #' @param blade Blade name associated with the port.
    #' @param justport Port identifier.
    #' @param graph_id Identifier for the graph associated with the switchport.
    #' @param asset_id Unique identifier of the asset associated with the switchport.
    #' @param vlans List of VLANs associated with the switchport.
    #' @param vlans6 List of IPv6 VLANs associated with the switchport.
    #' @param ... Other optional arguments.
    initialize = function(`switchport_id`, `switch_id`, `switch`, `port`, `blade`, `justport`, `graph_id`, `asset_id`, `vlans` = NULL, `vlans6` = NULL, ...) {
      if (!missing(`switchport_id`)) {
        if (!(is.numeric(`switchport_id`) && length(`switchport_id`) == 1)) {
          stop(paste("Error! Invalid data for `switchport_id`. Must be an integer:", `switchport_id`))
        }
        self$`switchport_id` <- `switchport_id`
      }
      if (!missing(`switch_id`)) {
        if (!(is.character(`switch_id`) && length(`switch_id`) == 1)) {
          stop(paste("Error! Invalid data for `switch_id`. Must be a string:", `switch_id`))
        }
        self$`switch_id` <- `switch_id`
      }
      if (!missing(`switch`)) {
        if (!(is.character(`switch`) && length(`switch`) == 1)) {
          stop(paste("Error! Invalid data for `switch`. Must be a string:", `switch`))
        }
        self$`switch` <- `switch`
      }
      if (!missing(`port`)) {
        if (!(is.character(`port`) && length(`port`) == 1)) {
          stop(paste("Error! Invalid data for `port`. Must be a string:", `port`))
        }
        self$`port` <- `port`
      }
      if (!missing(`blade`)) {
        if (!(is.character(`blade`) && length(`blade`) == 1)) {
          stop(paste("Error! Invalid data for `blade`. Must be a string:", `blade`))
        }
        self$`blade` <- `blade`
      }
      if (!missing(`justport`)) {
        if (!(is.character(`justport`) && length(`justport`) == 1)) {
          stop(paste("Error! Invalid data for `justport`. Must be a string:", `justport`))
        }
        self$`justport` <- `justport`
      }
      if (!missing(`graph_id`)) {
        if (!(is.character(`graph_id`) && length(`graph_id`) == 1)) {
          stop(paste("Error! Invalid data for `graph_id`. Must be a string:", `graph_id`))
        }
        self$`graph_id` <- `graph_id`
      }
      if (!missing(`asset_id`)) {
        if (!(is.numeric(`asset_id`) && length(`asset_id`) == 1)) {
          stop(paste("Error! Invalid data for `asset_id`. Must be an integer:", `asset_id`))
        }
        self$`asset_id` <- `asset_id`
      }
      if (!is.null(`vlans`)) {
        stopifnot(is.vector(`vlans`), length(`vlans`) != 0)
        sapply(`vlans`, function(x) stopifnot(is.character(x)))
        self$`vlans` <- `vlans`
      }
      if (!is.null(`vlans6`)) {
        stopifnot(is.vector(`vlans6`), length(`vlans6`) != 0)
        sapply(`vlans6`, function(x) stopifnot(is.character(x)))
        self$`vlans6` <- `vlans6`
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
    #' @return ServerSwitchport as a base R list.
    #' @examples
    #' # convert array of ServerSwitchport (x) to a data frame
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
    #' Convert ServerSwitchport to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ServerSwitchportObject <- list()
      if (!is.null(self$`switchport_id`)) {
        ServerSwitchportObject[["switchport_id"]] <-
          self$`switchport_id`
      }
      if (!is.null(self$`switch_id`)) {
        ServerSwitchportObject[["switch_id"]] <-
          self$`switch_id`
      }
      if (!is.null(self$`switch`)) {
        ServerSwitchportObject[["switch"]] <-
          self$`switch`
      }
      if (!is.null(self$`port`)) {
        ServerSwitchportObject[["port"]] <-
          self$`port`
      }
      if (!is.null(self$`blade`)) {
        ServerSwitchportObject[["blade"]] <-
          self$`blade`
      }
      if (!is.null(self$`justport`)) {
        ServerSwitchportObject[["justport"]] <-
          self$`justport`
      }
      if (!is.null(self$`graph_id`)) {
        ServerSwitchportObject[["graph_id"]] <-
          self$`graph_id`
      }
      if (!is.null(self$`asset_id`)) {
        ServerSwitchportObject[["asset_id"]] <-
          self$`asset_id`
      }
      if (!is.null(self$`vlans`)) {
        ServerSwitchportObject[["vlans"]] <-
          self$`vlans`
      }
      if (!is.null(self$`vlans6`)) {
        ServerSwitchportObject[["vlans6"]] <-
          self$`vlans6`
      }
      return(ServerSwitchportObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ServerSwitchport
    #'
    #' @param input_json the JSON input
    #' @return the instance of ServerSwitchport
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`switchport_id`)) {
        self$`switchport_id` <- this_object$`switchport_id`
      }
      if (!is.null(this_object$`switch_id`)) {
        self$`switch_id` <- this_object$`switch_id`
      }
      if (!is.null(this_object$`switch`)) {
        self$`switch` <- this_object$`switch`
      }
      if (!is.null(this_object$`port`)) {
        self$`port` <- this_object$`port`
      }
      if (!is.null(this_object$`blade`)) {
        self$`blade` <- this_object$`blade`
      }
      if (!is.null(this_object$`justport`)) {
        self$`justport` <- this_object$`justport`
      }
      if (!is.null(this_object$`graph_id`)) {
        self$`graph_id` <- this_object$`graph_id`
      }
      if (!is.null(this_object$`asset_id`)) {
        self$`asset_id` <- this_object$`asset_id`
      }
      if (!is.null(this_object$`vlans`)) {
        self$`vlans` <- ApiClient$new()$deserializeObj(this_object$`vlans`, "array[character]", loadNamespace("interserverapi"))
      }
      if (!is.null(this_object$`vlans6`)) {
        self$`vlans6` <- ApiClient$new()$deserializeObj(this_object$`vlans6`, "array[character]", loadNamespace("interserverapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ServerSwitchport in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ServerSwitchport
    #'
    #' @param input_json the JSON input
    #' @return the instance of ServerSwitchport
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`switchport_id` <- this_object$`switchport_id`
      self$`switch_id` <- this_object$`switch_id`
      self$`switch` <- this_object$`switch`
      self$`port` <- this_object$`port`
      self$`blade` <- this_object$`blade`
      self$`justport` <- this_object$`justport`
      self$`graph_id` <- this_object$`graph_id`
      self$`asset_id` <- this_object$`asset_id`
      self$`vlans` <- ApiClient$new()$deserializeObj(this_object$`vlans`, "array[character]", loadNamespace("interserverapi"))
      self$`vlans6` <- ApiClient$new()$deserializeObj(this_object$`vlans6`, "array[character]", loadNamespace("interserverapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to ServerSwitchport and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `switchport_id`
      if (!is.null(input_json$`switchport_id`)) {
        if (!(is.numeric(input_json$`switchport_id`) && length(input_json$`switchport_id`) == 1)) {
          stop(paste("Error! Invalid data for `switchport_id`. Must be an integer:", input_json$`switchport_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ServerSwitchport: the required field `switchport_id` is missing."))
      }
      # check the required field `switch_id`
      if (!is.null(input_json$`switch_id`)) {
        if (!(is.character(input_json$`switch_id`) && length(input_json$`switch_id`) == 1)) {
          stop(paste("Error! Invalid data for `switch_id`. Must be a string:", input_json$`switch_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ServerSwitchport: the required field `switch_id` is missing."))
      }
      # check the required field `switch`
      if (!is.null(input_json$`switch`)) {
        if (!(is.character(input_json$`switch`) && length(input_json$`switch`) == 1)) {
          stop(paste("Error! Invalid data for `switch`. Must be a string:", input_json$`switch`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ServerSwitchport: the required field `switch` is missing."))
      }
      # check the required field `port`
      if (!is.null(input_json$`port`)) {
        if (!(is.character(input_json$`port`) && length(input_json$`port`) == 1)) {
          stop(paste("Error! Invalid data for `port`. Must be a string:", input_json$`port`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ServerSwitchport: the required field `port` is missing."))
      }
      # check the required field `blade`
      if (!is.null(input_json$`blade`)) {
        if (!(is.character(input_json$`blade`) && length(input_json$`blade`) == 1)) {
          stop(paste("Error! Invalid data for `blade`. Must be a string:", input_json$`blade`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ServerSwitchport: the required field `blade` is missing."))
      }
      # check the required field `justport`
      if (!is.null(input_json$`justport`)) {
        if (!(is.character(input_json$`justport`) && length(input_json$`justport`) == 1)) {
          stop(paste("Error! Invalid data for `justport`. Must be a string:", input_json$`justport`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ServerSwitchport: the required field `justport` is missing."))
      }
      # check the required field `graph_id`
      if (!is.null(input_json$`graph_id`)) {
        if (!(is.character(input_json$`graph_id`) && length(input_json$`graph_id`) == 1)) {
          stop(paste("Error! Invalid data for `graph_id`. Must be a string:", input_json$`graph_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ServerSwitchport: the required field `graph_id` is missing."))
      }
      # check the required field `asset_id`
      if (!is.null(input_json$`asset_id`)) {
        if (!(is.numeric(input_json$`asset_id`) && length(input_json$`asset_id`) == 1)) {
          stop(paste("Error! Invalid data for `asset_id`. Must be an integer:", input_json$`asset_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ServerSwitchport: the required field `asset_id` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ServerSwitchport
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `switchport_id` is null
      if (is.null(self$`switchport_id`)) {
        return(FALSE)
      }

      # check if the required `switch_id` is null
      if (is.null(self$`switch_id`)) {
        return(FALSE)
      }

      # check if the required `switch` is null
      if (is.null(self$`switch`)) {
        return(FALSE)
      }

      # check if the required `port` is null
      if (is.null(self$`port`)) {
        return(FALSE)
      }

      # check if the required `blade` is null
      if (is.null(self$`blade`)) {
        return(FALSE)
      }

      # check if the required `justport` is null
      if (is.null(self$`justport`)) {
        return(FALSE)
      }

      # check if the required `graph_id` is null
      if (is.null(self$`graph_id`)) {
        return(FALSE)
      }

      # check if the required `asset_id` is null
      if (is.null(self$`asset_id`)) {
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
      # check if the required `switchport_id` is null
      if (is.null(self$`switchport_id`)) {
        invalid_fields["switchport_id"] <- "Non-nullable required field `switchport_id` cannot be null."
      }

      # check if the required `switch_id` is null
      if (is.null(self$`switch_id`)) {
        invalid_fields["switch_id"] <- "Non-nullable required field `switch_id` cannot be null."
      }

      # check if the required `switch` is null
      if (is.null(self$`switch`)) {
        invalid_fields["switch"] <- "Non-nullable required field `switch` cannot be null."
      }

      # check if the required `port` is null
      if (is.null(self$`port`)) {
        invalid_fields["port"] <- "Non-nullable required field `port` cannot be null."
      }

      # check if the required `blade` is null
      if (is.null(self$`blade`)) {
        invalid_fields["blade"] <- "Non-nullable required field `blade` cannot be null."
      }

      # check if the required `justport` is null
      if (is.null(self$`justport`)) {
        invalid_fields["justport"] <- "Non-nullable required field `justport` cannot be null."
      }

      # check if the required `graph_id` is null
      if (is.null(self$`graph_id`)) {
        invalid_fields["graph_id"] <- "Non-nullable required field `graph_id` cannot be null."
      }

      # check if the required `asset_id` is null
      if (is.null(self$`asset_id`)) {
        invalid_fields["asset_id"] <- "Non-nullable required field `asset_id` cannot be null."
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
# ServerSwitchport$unlock()
#
## Below is an example to define the print function
# ServerSwitchport$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ServerSwitchport$lock()

