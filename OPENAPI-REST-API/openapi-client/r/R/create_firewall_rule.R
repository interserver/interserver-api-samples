#' Create a new CreateFirewallRule
#'
#' @description
#' Create firewall rule for your ip
#'
#' @docType class
#' @title CreateFirewallRule
#' @description CreateFirewallRule Class
#' @format An \code{R6Class} generator object
#' @field protocol_id 1 = TCP, 2 = UDP integer
#' @field xdp_action 1 = Block,  0 = Whitelist integer
#' @field destination_port  integer [optional]
#' @field source_ip Source IP address to match. Use '0.0.0.0' to match any source. character [optional]
#' @field source_port  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CreateFirewallRule <- R6::R6Class(
  "CreateFirewallRule",
  public = list(
    `protocol_id` = NULL,
    `xdp_action` = NULL,
    `destination_port` = NULL,
    `source_ip` = NULL,
    `source_port` = NULL,

    #' @description
    #' Initialize a new CreateFirewallRule class.
    #'
    #' @param protocol_id 1 = TCP, 2 = UDP
    #' @param xdp_action 1 = Block,  0 = Whitelist
    #' @param destination_port destination_port. Default to 80.
    #' @param source_ip Source IP address to match. Use '0.0.0.0' to match any source.. Default to "0.0.0.0".
    #' @param source_port source_port. Default to 0.
    #' @param ... Other optional arguments.
    initialize = function(`protocol_id`, `xdp_action`, `destination_port` = 80, `source_ip` = "0.0.0.0", `source_port` = 0, ...) {
      if (!missing(`protocol_id`)) {
        if (!(`protocol_id` %in% c("1", "2"))) {
          stop(paste("Error! \"", `protocol_id`, "\" cannot be assigned to `protocol_id`. Must be \"1\", \"2\".", sep = ""))
        }
        if (!(is.numeric(`protocol_id`) && length(`protocol_id`) == 1)) {
          stop(paste("Error! Invalid data for `protocol_id`. Must be an integer:", `protocol_id`))
        }
        self$`protocol_id` <- `protocol_id`
      }
      if (!missing(`xdp_action`)) {
        if (!(`xdp_action` %in% c("0", "1"))) {
          stop(paste("Error! \"", `xdp_action`, "\" cannot be assigned to `xdp_action`. Must be \"0\", \"1\".", sep = ""))
        }
        if (!(is.numeric(`xdp_action`) && length(`xdp_action`) == 1)) {
          stop(paste("Error! Invalid data for `xdp_action`. Must be an integer:", `xdp_action`))
        }
        self$`xdp_action` <- `xdp_action`
      }
      if (!is.null(`destination_port`)) {
        if (!(is.numeric(`destination_port`) && length(`destination_port`) == 1)) {
          stop(paste("Error! Invalid data for `destination_port`. Must be an integer:", `destination_port`))
        }
        self$`destination_port` <- `destination_port`
      }
      if (!is.null(`source_ip`)) {
        if (!(is.character(`source_ip`) && length(`source_ip`) == 1)) {
          stop(paste("Error! Invalid data for `source_ip`. Must be a string:", `source_ip`))
        }
        self$`source_ip` <- `source_ip`
      }
      if (!is.null(`source_port`)) {
        if (!(is.numeric(`source_port`) && length(`source_port`) == 1)) {
          stop(paste("Error! Invalid data for `source_port`. Must be an integer:", `source_port`))
        }
        self$`source_port` <- `source_port`
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
    #' @return CreateFirewallRule as a base R list.
    #' @examples
    #' # convert array of CreateFirewallRule (x) to a data frame
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
    #' Convert CreateFirewallRule to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CreateFirewallRuleObject <- list()
      if (!is.null(self$`protocol_id`)) {
        CreateFirewallRuleObject[["protocol_id"]] <-
          self$`protocol_id`
      }
      if (!is.null(self$`xdp_action`)) {
        CreateFirewallRuleObject[["xdp_action"]] <-
          self$`xdp_action`
      }
      if (!is.null(self$`destination_port`)) {
        CreateFirewallRuleObject[["destination_port"]] <-
          self$`destination_port`
      }
      if (!is.null(self$`source_ip`)) {
        CreateFirewallRuleObject[["source_ip"]] <-
          self$`source_ip`
      }
      if (!is.null(self$`source_port`)) {
        CreateFirewallRuleObject[["source_port"]] <-
          self$`source_port`
      }
      return(CreateFirewallRuleObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of CreateFirewallRule
    #'
    #' @param input_json the JSON input
    #' @return the instance of CreateFirewallRule
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`protocol_id`)) {
        if (!is.null(this_object$`protocol_id`) && !(this_object$`protocol_id` %in% c("1", "2"))) {
          stop(paste("Error! \"", this_object$`protocol_id`, "\" cannot be assigned to `protocol_id`. Must be \"1\", \"2\".", sep = ""))
        }
        self$`protocol_id` <- this_object$`protocol_id`
      }
      if (!is.null(this_object$`xdp_action`)) {
        if (!is.null(this_object$`xdp_action`) && !(this_object$`xdp_action` %in% c("0", "1"))) {
          stop(paste("Error! \"", this_object$`xdp_action`, "\" cannot be assigned to `xdp_action`. Must be \"0\", \"1\".", sep = ""))
        }
        self$`xdp_action` <- this_object$`xdp_action`
      }
      if (!is.null(this_object$`destination_port`)) {
        self$`destination_port` <- this_object$`destination_port`
      }
      if (!is.null(this_object$`source_ip`)) {
        self$`source_ip` <- this_object$`source_ip`
      }
      if (!is.null(this_object$`source_port`)) {
        self$`source_port` <- this_object$`source_port`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return CreateFirewallRule in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CreateFirewallRule
    #'
    #' @param input_json the JSON input
    #' @return the instance of CreateFirewallRule
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`protocol_id`) && !(this_object$`protocol_id` %in% c("1", "2"))) {
        stop(paste("Error! \"", this_object$`protocol_id`, "\" cannot be assigned to `protocol_id`. Must be \"1\", \"2\".", sep = ""))
      }
      self$`protocol_id` <- this_object$`protocol_id`
      if (!is.null(this_object$`xdp_action`) && !(this_object$`xdp_action` %in% c("0", "1"))) {
        stop(paste("Error! \"", this_object$`xdp_action`, "\" cannot be assigned to `xdp_action`. Must be \"0\", \"1\".", sep = ""))
      }
      self$`xdp_action` <- this_object$`xdp_action`
      self$`destination_port` <- this_object$`destination_port`
      self$`source_ip` <- this_object$`source_ip`
      self$`source_port` <- this_object$`source_port`
      self
    },

    #' @description
    #' Validate JSON input with respect to CreateFirewallRule and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `protocol_id`
      if (!is.null(input_json$`protocol_id`)) {
        if (!(is.numeric(input_json$`protocol_id`) && length(input_json$`protocol_id`) == 1)) {
          stop(paste("Error! Invalid data for `protocol_id`. Must be an integer:", input_json$`protocol_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CreateFirewallRule: the required field `protocol_id` is missing."))
      }
      # check the required field `xdp_action`
      if (!is.null(input_json$`xdp_action`)) {
        if (!(is.numeric(input_json$`xdp_action`) && length(input_json$`xdp_action`) == 1)) {
          stop(paste("Error! Invalid data for `xdp_action`. Must be an integer:", input_json$`xdp_action`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CreateFirewallRule: the required field `xdp_action` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CreateFirewallRule
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `protocol_id` is null
      if (is.null(self$`protocol_id`)) {
        return(FALSE)
      }

      # check if the required `xdp_action` is null
      if (is.null(self$`xdp_action`)) {
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
      # check if the required `protocol_id` is null
      if (is.null(self$`protocol_id`)) {
        invalid_fields["protocol_id"] <- "Non-nullable required field `protocol_id` cannot be null."
      }

      # check if the required `xdp_action` is null
      if (is.null(self$`xdp_action`)) {
        invalid_fields["xdp_action"] <- "Non-nullable required field `xdp_action` cannot be null."
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
# CreateFirewallRule$unlock()
#
## Below is an example to define the print function
# CreateFirewallRule$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CreateFirewallRule$lock()

