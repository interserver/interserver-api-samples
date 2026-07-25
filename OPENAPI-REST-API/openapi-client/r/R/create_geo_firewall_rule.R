#' Create a new CreateGeoFirewallRule
#'
#' @description
#' Create firewall rule for your ip
#'
#' @docType class
#' @title CreateGeoFirewallRule
#' @description CreateGeoFirewallRule Class
#' @format An \code{R6Class} generator object
#' @field xdp_action 1 = Block,  0 = Whitelist integer
#' @field destination_port  integer [optional]
#' @field country_code To get country code refer our countries api - https://my.interserver.net/apiv2/account/countries?fetch_by=numcode integer [optional]
#' @field asn ASN number integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CreateGeoFirewallRule <- R6::R6Class(
  "CreateGeoFirewallRule",
  public = list(
    `xdp_action` = NULL,
    `destination_port` = NULL,
    `country_code` = NULL,
    `asn` = NULL,

    #' @description
    #' Initialize a new CreateGeoFirewallRule class.
    #'
    #' @param xdp_action 1 = Block,  0 = Whitelist
    #' @param destination_port destination_port. Default to 80.
    #' @param country_code To get country code refer our countries api - https://my.interserver.net/apiv2/account/countries?fetch_by=numcode
    #' @param asn ASN number
    #' @param ... Other optional arguments.
    initialize = function(`xdp_action`, `destination_port` = 80, `country_code` = NULL, `asn` = NULL, ...) {
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
      if (!is.null(`country_code`)) {
        if (!(is.numeric(`country_code`) && length(`country_code`) == 1)) {
          stop(paste("Error! Invalid data for `country_code`. Must be an integer:", `country_code`))
        }
        self$`country_code` <- `country_code`
      }
      if (!is.null(`asn`)) {
        if (!(is.numeric(`asn`) && length(`asn`) == 1)) {
          stop(paste("Error! Invalid data for `asn`. Must be an integer:", `asn`))
        }
        self$`asn` <- `asn`
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
    #' @return CreateGeoFirewallRule as a base R list.
    #' @examples
    #' # convert array of CreateGeoFirewallRule (x) to a data frame
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
    #' Convert CreateGeoFirewallRule to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CreateGeoFirewallRuleObject <- list()
      if (!is.null(self$`xdp_action`)) {
        CreateGeoFirewallRuleObject[["xdp_action"]] <-
          self$`xdp_action`
      }
      if (!is.null(self$`destination_port`)) {
        CreateGeoFirewallRuleObject[["destination_port"]] <-
          self$`destination_port`
      }
      if (!is.null(self$`country_code`)) {
        CreateGeoFirewallRuleObject[["country_code"]] <-
          self$`country_code`
      }
      if (!is.null(self$`asn`)) {
        CreateGeoFirewallRuleObject[["asn"]] <-
          self$`asn`
      }
      return(CreateGeoFirewallRuleObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of CreateGeoFirewallRule
    #'
    #' @param input_json the JSON input
    #' @return the instance of CreateGeoFirewallRule
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`xdp_action`)) {
        if (!is.null(this_object$`xdp_action`) && !(this_object$`xdp_action` %in% c("0", "1"))) {
          stop(paste("Error! \"", this_object$`xdp_action`, "\" cannot be assigned to `xdp_action`. Must be \"0\", \"1\".", sep = ""))
        }
        self$`xdp_action` <- this_object$`xdp_action`
      }
      if (!is.null(this_object$`destination_port`)) {
        self$`destination_port` <- this_object$`destination_port`
      }
      if (!is.null(this_object$`country_code`)) {
        self$`country_code` <- this_object$`country_code`
      }
      if (!is.null(this_object$`asn`)) {
        self$`asn` <- this_object$`asn`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return CreateGeoFirewallRule in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CreateGeoFirewallRule
    #'
    #' @param input_json the JSON input
    #' @return the instance of CreateGeoFirewallRule
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`xdp_action`) && !(this_object$`xdp_action` %in% c("0", "1"))) {
        stop(paste("Error! \"", this_object$`xdp_action`, "\" cannot be assigned to `xdp_action`. Must be \"0\", \"1\".", sep = ""))
      }
      self$`xdp_action` <- this_object$`xdp_action`
      self$`destination_port` <- this_object$`destination_port`
      self$`country_code` <- this_object$`country_code`
      self$`asn` <- this_object$`asn`
      self
    },

    #' @description
    #' Validate JSON input with respect to CreateGeoFirewallRule and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `xdp_action`
      if (!is.null(input_json$`xdp_action`)) {
        if (!(is.numeric(input_json$`xdp_action`) && length(input_json$`xdp_action`) == 1)) {
          stop(paste("Error! Invalid data for `xdp_action`. Must be an integer:", input_json$`xdp_action`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CreateGeoFirewallRule: the required field `xdp_action` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CreateGeoFirewallRule
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
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
# CreateGeoFirewallRule$unlock()
#
## Below is an example to define the print function
# CreateGeoFirewallRule$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CreateGeoFirewallRule$lock()

