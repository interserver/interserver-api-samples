#' Create a new GetScrubIpDetails200ResponseFilterFirewall
#'
#' @description
#' GetScrubIpDetails200ResponseFilterFirewall Class
#'
#' @docType class
#' @title GetScrubIpDetails200ResponseFilterFirewall
#' @description GetScrubIpDetails200ResponseFilterFirewall Class
#' @format An \code{R6Class} generator object
#' @field rules  list(\link{GetScrubIpDetails200ResponseFilterFirewallRulesInner}) [optional]
#' @field filters  list(\link{GetScrubIpDetails200ResponseFilterFirewallFiltersInner}) [optional]
#' @field scrub_enabled  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GetScrubIpDetails200ResponseFilterFirewall <- R6::R6Class(
  "GetScrubIpDetails200ResponseFilterFirewall",
  public = list(
    `rules` = NULL,
    `filters` = NULL,
    `scrub_enabled` = NULL,

    #' @description
    #' Initialize a new GetScrubIpDetails200ResponseFilterFirewall class.
    #'
    #' @param rules rules
    #' @param filters filters
    #' @param scrub_enabled scrub_enabled
    #' @param ... Other optional arguments.
    initialize = function(`rules` = NULL, `filters` = NULL, `scrub_enabled` = NULL, ...) {
      if (!is.null(`rules`)) {
        stopifnot(is.vector(`rules`), length(`rules`) != 0)
        sapply(`rules`, function(x) stopifnot(R6::is.R6(x)))
        self$`rules` <- `rules`
      }
      if (!is.null(`filters`)) {
        stopifnot(is.vector(`filters`), length(`filters`) != 0)
        sapply(`filters`, function(x) stopifnot(R6::is.R6(x)))
        self$`filters` <- `filters`
      }
      if (!is.null(`scrub_enabled`)) {
        if (!(is.numeric(`scrub_enabled`) && length(`scrub_enabled`) == 1)) {
          stop(paste("Error! Invalid data for `scrub_enabled`. Must be an integer:", `scrub_enabled`))
        }
        self$`scrub_enabled` <- `scrub_enabled`
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
    #' @return GetScrubIpDetails200ResponseFilterFirewall as a base R list.
    #' @examples
    #' # convert array of GetScrubIpDetails200ResponseFilterFirewall (x) to a data frame
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
    #' Convert GetScrubIpDetails200ResponseFilterFirewall to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      GetScrubIpDetails200ResponseFilterFirewallObject <- list()
      if (!is.null(self$`rules`)) {
        GetScrubIpDetails200ResponseFilterFirewallObject[["rules"]] <-
          self$extractSimpleType(self$`rules`)
      }
      if (!is.null(self$`filters`)) {
        GetScrubIpDetails200ResponseFilterFirewallObject[["filters"]] <-
          self$extractSimpleType(self$`filters`)
      }
      if (!is.null(self$`scrub_enabled`)) {
        GetScrubIpDetails200ResponseFilterFirewallObject[["scrub_enabled"]] <-
          self$`scrub_enabled`
      }
      return(GetScrubIpDetails200ResponseFilterFirewallObject)
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
    #' Deserialize JSON string into an instance of GetScrubIpDetails200ResponseFilterFirewall
    #'
    #' @param input_json the JSON input
    #' @return the instance of GetScrubIpDetails200ResponseFilterFirewall
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`rules`)) {
        self$`rules` <- ApiClient$new()$deserializeObj(this_object$`rules`, "array[GetScrubIpDetails200ResponseFilterFirewallRulesInner]", loadNamespace("interserverapi"))
      }
      if (!is.null(this_object$`filters`)) {
        self$`filters` <- ApiClient$new()$deserializeObj(this_object$`filters`, "array[GetScrubIpDetails200ResponseFilterFirewallFiltersInner]", loadNamespace("interserverapi"))
      }
      if (!is.null(this_object$`scrub_enabled`)) {
        self$`scrub_enabled` <- this_object$`scrub_enabled`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return GetScrubIpDetails200ResponseFilterFirewall in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of GetScrubIpDetails200ResponseFilterFirewall
    #'
    #' @param input_json the JSON input
    #' @return the instance of GetScrubIpDetails200ResponseFilterFirewall
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`rules` <- ApiClient$new()$deserializeObj(this_object$`rules`, "array[GetScrubIpDetails200ResponseFilterFirewallRulesInner]", loadNamespace("interserverapi"))
      self$`filters` <- ApiClient$new()$deserializeObj(this_object$`filters`, "array[GetScrubIpDetails200ResponseFilterFirewallFiltersInner]", loadNamespace("interserverapi"))
      self$`scrub_enabled` <- this_object$`scrub_enabled`
      self
    },

    #' @description
    #' Validate JSON input with respect to GetScrubIpDetails200ResponseFilterFirewall and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of GetScrubIpDetails200ResponseFilterFirewall
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
# GetScrubIpDetails200ResponseFilterFirewall$unlock()
#
## Below is an example to define the print function
# GetScrubIpDetails200ResponseFilterFirewall$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GetScrubIpDetails200ResponseFilterFirewall$lock()

