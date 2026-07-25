#' Create a new DomainOrderRequest
#'
#' @description
#' Request body for the domain order flow: putDomains (returns required fields), patchDomains (validates fields), addDomain (places the order). The TLD is resolved from hostname. Per-TLD registrant/contact fields returned by putDomains may be supplied as additional properties on patchDomains/addDomain.
#'
#' @docType class
#' @title DomainOrderRequest
#' @description DomainOrderRequest Class
#' @format An \code{R6Class} generator object
#' @field hostname Fully-qualified domain to register or transfer (e.g. example.com). character
#' @field type Order type. character [optional]
#' @field coupon Coupon code (addDomain only). character [optional]
#' @field whois_privacy Set to \"enable\" to add Whois privacy (addDomain only). character [optional]
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DomainOrderRequest <- R6::R6Class(
  "DomainOrderRequest",
  inherit = AnyType,
  public = list(
    `hostname` = NULL,
    `type` = NULL,
    `coupon` = NULL,
    `whois_privacy` = NULL,
    `_field_list` = c("hostname", "type", "coupon", "whois_privacy"),
    `additional_properties` = list(),

    #' @description
    #' Initialize a new DomainOrderRequest class.
    #'
    #' @param hostname Fully-qualified domain to register or transfer (e.g. example.com).
    #' @param type Order type.. Default to "register".
    #' @param coupon Coupon code (addDomain only).. Default to "".
    #' @param whois_privacy Set to \"enable\" to add Whois privacy (addDomain only).
    #' @param additional_properties additional properties (optional)
    #' @param ... Other optional arguments.
    initialize = function(`hostname`, `type` = "register", `coupon` = "", `whois_privacy` = NULL, additional_properties = NULL, ...) {
      if (!missing(`hostname`)) {
        if (!(is.character(`hostname`) && length(`hostname`) == 1)) {
          stop(paste("Error! Invalid data for `hostname`. Must be a string:", `hostname`))
        }
        self$`hostname` <- `hostname`
      }
      if (!is.null(`type`)) {
        if (!(`type` %in% c("register", "transfer"))) {
          stop(paste("Error! \"", `type`, "\" cannot be assigned to `type`. Must be \"register\", \"transfer\".", sep = ""))
        }
        if (!(is.character(`type`) && length(`type`) == 1)) {
          stop(paste("Error! Invalid data for `type`. Must be a string:", `type`))
        }
        self$`type` <- `type`
      }
      if (!is.null(`coupon`)) {
        if (!(is.character(`coupon`) && length(`coupon`) == 1)) {
          stop(paste("Error! Invalid data for `coupon`. Must be a string:", `coupon`))
        }
        self$`coupon` <- `coupon`
      }
      if (!is.null(`whois_privacy`)) {
        if (!(`whois_privacy` %in% c("enable", "disable"))) {
          stop(paste("Error! \"", `whois_privacy`, "\" cannot be assigned to `whois_privacy`. Must be \"enable\", \"disable\".", sep = ""))
        }
        if (!(is.character(`whois_privacy`) && length(`whois_privacy`) == 1)) {
          stop(paste("Error! Invalid data for `whois_privacy`. Must be a string:", `whois_privacy`))
        }
        self$`whois_privacy` <- `whois_privacy`
      }
      if (!is.null(additional_properties)) {
        for (key in names(additional_properties)) {
          self$additional_properties[[key]] <- additional_properties[[key]]
        }
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
    #' @return DomainOrderRequest as a base R list.
    #' @examples
    #' # convert array of DomainOrderRequest (x) to a data frame
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
    #' Convert DomainOrderRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      DomainOrderRequestObject <- list()
      if (!is.null(self$`hostname`)) {
        DomainOrderRequestObject[["hostname"]] <-
          self$`hostname`
      }
      if (!is.null(self$`type`)) {
        DomainOrderRequestObject[["type"]] <-
          self$`type`
      }
      if (!is.null(self$`coupon`)) {
        DomainOrderRequestObject[["coupon"]] <-
          self$`coupon`
      }
      if (!is.null(self$`whois_privacy`)) {
        DomainOrderRequestObject[["whois_privacy"]] <-
          self$`whois_privacy`
      }
      for (key in names(self$additional_properties)) {
        DomainOrderRequestObject[[key]] <- self$additional_properties[[key]]
      }

      return(DomainOrderRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of DomainOrderRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of DomainOrderRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`hostname`)) {
        self$`hostname` <- this_object$`hostname`
      }
      if (!is.null(this_object$`type`)) {
        if (!is.null(this_object$`type`) && !(this_object$`type` %in% c("register", "transfer"))) {
          stop(paste("Error! \"", this_object$`type`, "\" cannot be assigned to `type`. Must be \"register\", \"transfer\".", sep = ""))
        }
        self$`type` <- this_object$`type`
      }
      if (!is.null(this_object$`coupon`)) {
        self$`coupon` <- this_object$`coupon`
      }
      if (!is.null(this_object$`whois_privacy`)) {
        if (!is.null(this_object$`whois_privacy`) && !(this_object$`whois_privacy` %in% c("enable", "disable"))) {
          stop(paste("Error! \"", this_object$`whois_privacy`, "\" cannot be assigned to `whois_privacy`. Must be \"enable\", \"disable\".", sep = ""))
        }
        self$`whois_privacy` <- this_object$`whois_privacy`
      }
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) { # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return DomainOrderRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      for (key in names(self$additional_properties)) {
        simple[[key]] <- self$additional_properties[[key]]
      }
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of DomainOrderRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of DomainOrderRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`hostname` <- this_object$`hostname`
      if (!is.null(this_object$`type`) && !(this_object$`type` %in% c("register", "transfer"))) {
        stop(paste("Error! \"", this_object$`type`, "\" cannot be assigned to `type`. Must be \"register\", \"transfer\".", sep = ""))
      }
      self$`type` <- this_object$`type`
      self$`coupon` <- this_object$`coupon`
      if (!is.null(this_object$`whois_privacy`) && !(this_object$`whois_privacy` %in% c("enable", "disable"))) {
        stop(paste("Error! \"", this_object$`whois_privacy`, "\" cannot be assigned to `whois_privacy`. Must be \"enable\", \"disable\".", sep = ""))
      }
      self$`whois_privacy` <- this_object$`whois_privacy`
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) { # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },

    #' @description
    #' Validate JSON input with respect to DomainOrderRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `hostname`
      if (!is.null(input_json$`hostname`)) {
        if (!(is.character(input_json$`hostname`) && length(input_json$`hostname`) == 1)) {
          stop(paste("Error! Invalid data for `hostname`. Must be a string:", input_json$`hostname`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for DomainOrderRequest: the required field `hostname` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of DomainOrderRequest
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `hostname` is null
      if (is.null(self$`hostname`)) {
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
      # check if the required `hostname` is null
      if (is.null(self$`hostname`)) {
        invalid_fields["hostname"] <- "Non-nullable required field `hostname` cannot be null."
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
# DomainOrderRequest$unlock()
#
## Below is an example to define the print function
# DomainOrderRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# DomainOrderRequest$lock()

