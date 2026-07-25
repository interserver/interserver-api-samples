#' Create a new VpsServiceAddons
#'
#' @description
#' Add-on services and IP address information for a VPS, including control panel licenses and extra IP assignments.
#'
#' @docType class
#' @title VpsServiceAddons
#' @description VpsServiceAddons Class
#' @format An \code{R6Class} generator object
#' @field has_cpanel Whether a cPanel license is active on this VPS. character [optional]
#' @field has_directadmin Whether a DirectAdmin license is active on this VPS. character [optional]
#' @field has_fantastico Whether a Fantastico license is active on this VPS. character [optional]
#' @field has_softaculous Whether a Softaculous license is active on this VPS. character [optional]
#' @field has_hdspace Whether extra disk space has been added to this VPS. character [optional]
#' @field dedicated_ip Whether a dedicated IP address is assigned to this VPS. character [optional]
#' @field extra_ips List of additional IPv4 addresses assigned to this VPS. list(character) [optional]
#' @field extra_ips6 List of additional IPv6 addresses assigned to this VPS. list(character) [optional]
#' @field unpaid_ips List of IP addresses that have unpaid charges. list(character) [optional]
#' @field ips All IPv4 addresses assigned to this VPS. list(character) [optional]
#' @field ips6 All IPv6 addresses assigned to this VPS. list(character) [optional]
#' @field cpanel_id The add-on service ID for the cPanel license. integer [optional]
#' @field cost Total monthly add-on cost in cents. integer [optional]
#' @field ids List of add-on service IDs active on this VPS. list(character) [optional]
#' @field rdata Raw add-on data entries. list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
VpsServiceAddons <- R6::R6Class(
  "VpsServiceAddons",
  public = list(
    `has_cpanel` = NULL,
    `has_directadmin` = NULL,
    `has_fantastico` = NULL,
    `has_softaculous` = NULL,
    `has_hdspace` = NULL,
    `dedicated_ip` = NULL,
    `extra_ips` = NULL,
    `extra_ips6` = NULL,
    `unpaid_ips` = NULL,
    `ips` = NULL,
    `ips6` = NULL,
    `cpanel_id` = NULL,
    `cost` = NULL,
    `ids` = NULL,
    `rdata` = NULL,

    #' @description
    #' Initialize a new VpsServiceAddons class.
    #'
    #' @param has_cpanel Whether a cPanel license is active on this VPS.
    #' @param has_directadmin Whether a DirectAdmin license is active on this VPS.
    #' @param has_fantastico Whether a Fantastico license is active on this VPS.
    #' @param has_softaculous Whether a Softaculous license is active on this VPS.
    #' @param has_hdspace Whether extra disk space has been added to this VPS.
    #' @param dedicated_ip Whether a dedicated IP address is assigned to this VPS.
    #' @param extra_ips List of additional IPv4 addresses assigned to this VPS.
    #' @param extra_ips6 List of additional IPv6 addresses assigned to this VPS.
    #' @param unpaid_ips List of IP addresses that have unpaid charges.
    #' @param ips All IPv4 addresses assigned to this VPS.
    #' @param ips6 All IPv6 addresses assigned to this VPS.
    #' @param cpanel_id The add-on service ID for the cPanel license.
    #' @param cost Total monthly add-on cost in cents.
    #' @param ids List of add-on service IDs active on this VPS.
    #' @param rdata Raw add-on data entries.
    #' @param ... Other optional arguments.
    initialize = function(`has_cpanel` = NULL, `has_directadmin` = NULL, `has_fantastico` = NULL, `has_softaculous` = NULL, `has_hdspace` = NULL, `dedicated_ip` = NULL, `extra_ips` = NULL, `extra_ips6` = NULL, `unpaid_ips` = NULL, `ips` = NULL, `ips6` = NULL, `cpanel_id` = NULL, `cost` = NULL, `ids` = NULL, `rdata` = NULL, ...) {
      if (!is.null(`has_cpanel`)) {
        if (!(is.logical(`has_cpanel`) && length(`has_cpanel`) == 1)) {
          stop(paste("Error! Invalid data for `has_cpanel`. Must be a boolean:", `has_cpanel`))
        }
        self$`has_cpanel` <- `has_cpanel`
      }
      if (!is.null(`has_directadmin`)) {
        if (!(is.logical(`has_directadmin`) && length(`has_directadmin`) == 1)) {
          stop(paste("Error! Invalid data for `has_directadmin`. Must be a boolean:", `has_directadmin`))
        }
        self$`has_directadmin` <- `has_directadmin`
      }
      if (!is.null(`has_fantastico`)) {
        if (!(is.logical(`has_fantastico`) && length(`has_fantastico`) == 1)) {
          stop(paste("Error! Invalid data for `has_fantastico`. Must be a boolean:", `has_fantastico`))
        }
        self$`has_fantastico` <- `has_fantastico`
      }
      if (!is.null(`has_softaculous`)) {
        if (!(is.logical(`has_softaculous`) && length(`has_softaculous`) == 1)) {
          stop(paste("Error! Invalid data for `has_softaculous`. Must be a boolean:", `has_softaculous`))
        }
        self$`has_softaculous` <- `has_softaculous`
      }
      if (!is.null(`has_hdspace`)) {
        if (!(is.logical(`has_hdspace`) && length(`has_hdspace`) == 1)) {
          stop(paste("Error! Invalid data for `has_hdspace`. Must be a boolean:", `has_hdspace`))
        }
        self$`has_hdspace` <- `has_hdspace`
      }
      if (!is.null(`dedicated_ip`)) {
        if (!(is.logical(`dedicated_ip`) && length(`dedicated_ip`) == 1)) {
          stop(paste("Error! Invalid data for `dedicated_ip`. Must be a boolean:", `dedicated_ip`))
        }
        self$`dedicated_ip` <- `dedicated_ip`
      }
      if (!is.null(`extra_ips`)) {
        stopifnot(is.vector(`extra_ips`), length(`extra_ips`) != 0)
        sapply(`extra_ips`, function(x) stopifnot(is.character(x)))
        self$`extra_ips` <- `extra_ips`
      }
      if (!is.null(`extra_ips6`)) {
        stopifnot(is.vector(`extra_ips6`), length(`extra_ips6`) != 0)
        sapply(`extra_ips6`, function(x) stopifnot(is.character(x)))
        self$`extra_ips6` <- `extra_ips6`
      }
      if (!is.null(`unpaid_ips`)) {
        stopifnot(is.vector(`unpaid_ips`), length(`unpaid_ips`) != 0)
        sapply(`unpaid_ips`, function(x) stopifnot(is.character(x)))
        self$`unpaid_ips` <- `unpaid_ips`
      }
      if (!is.null(`ips`)) {
        stopifnot(is.vector(`ips`), length(`ips`) != 0)
        sapply(`ips`, function(x) stopifnot(is.character(x)))
        self$`ips` <- `ips`
      }
      if (!is.null(`ips6`)) {
        stopifnot(is.vector(`ips6`), length(`ips6`) != 0)
        sapply(`ips6`, function(x) stopifnot(is.character(x)))
        self$`ips6` <- `ips6`
      }
      if (!is.null(`cpanel_id`)) {
        if (!(is.numeric(`cpanel_id`) && length(`cpanel_id`) == 1)) {
          stop(paste("Error! Invalid data for `cpanel_id`. Must be an integer:", `cpanel_id`))
        }
        self$`cpanel_id` <- `cpanel_id`
      }
      if (!is.null(`cost`)) {
        if (!(is.numeric(`cost`) && length(`cost`) == 1)) {
          stop(paste("Error! Invalid data for `cost`. Must be an integer:", `cost`))
        }
        self$`cost` <- `cost`
      }
      if (!is.null(`ids`)) {
        stopifnot(is.vector(`ids`), length(`ids`) != 0)
        sapply(`ids`, function(x) stopifnot(is.character(x)))
        self$`ids` <- `ids`
      }
      if (!is.null(`rdata`)) {
        stopifnot(is.vector(`rdata`), length(`rdata`) != 0)
        sapply(`rdata`, function(x) stopifnot(is.character(x)))
        self$`rdata` <- `rdata`
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
    #' @return VpsServiceAddons as a base R list.
    #' @examples
    #' # convert array of VpsServiceAddons (x) to a data frame
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
    #' Convert VpsServiceAddons to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      VpsServiceAddonsObject <- list()
      if (!is.null(self$`has_cpanel`)) {
        VpsServiceAddonsObject[["has_cpanel"]] <-
          self$`has_cpanel`
      }
      if (!is.null(self$`has_directadmin`)) {
        VpsServiceAddonsObject[["has_directadmin"]] <-
          self$`has_directadmin`
      }
      if (!is.null(self$`has_fantastico`)) {
        VpsServiceAddonsObject[["has_fantastico"]] <-
          self$`has_fantastico`
      }
      if (!is.null(self$`has_softaculous`)) {
        VpsServiceAddonsObject[["has_softaculous"]] <-
          self$`has_softaculous`
      }
      if (!is.null(self$`has_hdspace`)) {
        VpsServiceAddonsObject[["has_hdspace"]] <-
          self$`has_hdspace`
      }
      if (!is.null(self$`dedicated_ip`)) {
        VpsServiceAddonsObject[["dedicated_ip"]] <-
          self$`dedicated_ip`
      }
      if (!is.null(self$`extra_ips`)) {
        VpsServiceAddonsObject[["extra_ips"]] <-
          self$`extra_ips`
      }
      if (!is.null(self$`extra_ips6`)) {
        VpsServiceAddonsObject[["extra_ips6"]] <-
          self$`extra_ips6`
      }
      if (!is.null(self$`unpaid_ips`)) {
        VpsServiceAddonsObject[["unpaid_ips"]] <-
          self$`unpaid_ips`
      }
      if (!is.null(self$`ips`)) {
        VpsServiceAddonsObject[["ips"]] <-
          self$`ips`
      }
      if (!is.null(self$`ips6`)) {
        VpsServiceAddonsObject[["ips6"]] <-
          self$`ips6`
      }
      if (!is.null(self$`cpanel_id`)) {
        VpsServiceAddonsObject[["cpanel_id"]] <-
          self$`cpanel_id`
      }
      if (!is.null(self$`cost`)) {
        VpsServiceAddonsObject[["cost"]] <-
          self$`cost`
      }
      if (!is.null(self$`ids`)) {
        VpsServiceAddonsObject[["ids"]] <-
          self$`ids`
      }
      if (!is.null(self$`rdata`)) {
        VpsServiceAddonsObject[["rdata"]] <-
          self$`rdata`
      }
      return(VpsServiceAddonsObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of VpsServiceAddons
    #'
    #' @param input_json the JSON input
    #' @return the instance of VpsServiceAddons
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`has_cpanel`)) {
        self$`has_cpanel` <- this_object$`has_cpanel`
      }
      if (!is.null(this_object$`has_directadmin`)) {
        self$`has_directadmin` <- this_object$`has_directadmin`
      }
      if (!is.null(this_object$`has_fantastico`)) {
        self$`has_fantastico` <- this_object$`has_fantastico`
      }
      if (!is.null(this_object$`has_softaculous`)) {
        self$`has_softaculous` <- this_object$`has_softaculous`
      }
      if (!is.null(this_object$`has_hdspace`)) {
        self$`has_hdspace` <- this_object$`has_hdspace`
      }
      if (!is.null(this_object$`dedicated_ip`)) {
        self$`dedicated_ip` <- this_object$`dedicated_ip`
      }
      if (!is.null(this_object$`extra_ips`)) {
        self$`extra_ips` <- ApiClient$new()$deserializeObj(this_object$`extra_ips`, "array[character]", loadNamespace("interserverapi"))
      }
      if (!is.null(this_object$`extra_ips6`)) {
        self$`extra_ips6` <- ApiClient$new()$deserializeObj(this_object$`extra_ips6`, "array[character]", loadNamespace("interserverapi"))
      }
      if (!is.null(this_object$`unpaid_ips`)) {
        self$`unpaid_ips` <- ApiClient$new()$deserializeObj(this_object$`unpaid_ips`, "array[character]", loadNamespace("interserverapi"))
      }
      if (!is.null(this_object$`ips`)) {
        self$`ips` <- ApiClient$new()$deserializeObj(this_object$`ips`, "array[character]", loadNamespace("interserverapi"))
      }
      if (!is.null(this_object$`ips6`)) {
        self$`ips6` <- ApiClient$new()$deserializeObj(this_object$`ips6`, "array[character]", loadNamespace("interserverapi"))
      }
      if (!is.null(this_object$`cpanel_id`)) {
        self$`cpanel_id` <- this_object$`cpanel_id`
      }
      if (!is.null(this_object$`cost`)) {
        self$`cost` <- this_object$`cost`
      }
      if (!is.null(this_object$`ids`)) {
        self$`ids` <- ApiClient$new()$deserializeObj(this_object$`ids`, "array[character]", loadNamespace("interserverapi"))
      }
      if (!is.null(this_object$`rdata`)) {
        self$`rdata` <- ApiClient$new()$deserializeObj(this_object$`rdata`, "array[character]", loadNamespace("interserverapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return VpsServiceAddons in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of VpsServiceAddons
    #'
    #' @param input_json the JSON input
    #' @return the instance of VpsServiceAddons
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`has_cpanel` <- this_object$`has_cpanel`
      self$`has_directadmin` <- this_object$`has_directadmin`
      self$`has_fantastico` <- this_object$`has_fantastico`
      self$`has_softaculous` <- this_object$`has_softaculous`
      self$`has_hdspace` <- this_object$`has_hdspace`
      self$`dedicated_ip` <- this_object$`dedicated_ip`
      self$`extra_ips` <- ApiClient$new()$deserializeObj(this_object$`extra_ips`, "array[character]", loadNamespace("interserverapi"))
      self$`extra_ips6` <- ApiClient$new()$deserializeObj(this_object$`extra_ips6`, "array[character]", loadNamespace("interserverapi"))
      self$`unpaid_ips` <- ApiClient$new()$deserializeObj(this_object$`unpaid_ips`, "array[character]", loadNamespace("interserverapi"))
      self$`ips` <- ApiClient$new()$deserializeObj(this_object$`ips`, "array[character]", loadNamespace("interserverapi"))
      self$`ips6` <- ApiClient$new()$deserializeObj(this_object$`ips6`, "array[character]", loadNamespace("interserverapi"))
      self$`cpanel_id` <- this_object$`cpanel_id`
      self$`cost` <- this_object$`cost`
      self$`ids` <- ApiClient$new()$deserializeObj(this_object$`ids`, "array[character]", loadNamespace("interserverapi"))
      self$`rdata` <- ApiClient$new()$deserializeObj(this_object$`rdata`, "array[character]", loadNamespace("interserverapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to VpsServiceAddons and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of VpsServiceAddons
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      TRUE
    },

    #' @description
    #' Return a list of invalid fields (if any).
    #'
    #' @return A list of invalid fields (if any).
    getInvalidFields = function() {
      invalid_fields <- list()
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
# VpsServiceAddons$unlock()
#
## Below is an example to define the print function
# VpsServiceAddons$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# VpsServiceAddons$lock()

