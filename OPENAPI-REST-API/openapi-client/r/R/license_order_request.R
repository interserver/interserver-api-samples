#' Create a new LicenseOrderRequest
#'
#' @description
#' Request body to validate (putLicenses) or place (addLicense) a license order. Package ids come from getNewLicense.serviceTypes.
#'
#' @docType class
#' @title LicenseOrderRequest
#' @description LicenseOrderRequest Class
#' @format An \code{R6Class} generator object
#' @field package License service type id from getNewLicense.serviceTypes (must be buyable). integer
#' @field ip IP address the license is bound to. character
#' @field tos Terms-of-service acceptance. Must be true to place the order. character
#' @field frequency Billing frequency in months. integer [optional]
#' @field coupon Coupon code. character [optional]
#' @field comment Free-form note saved on the service row. character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
LicenseOrderRequest <- R6::R6Class(
  "LicenseOrderRequest",
  public = list(
    `package` = NULL,
    `ip` = NULL,
    `tos` = NULL,
    `frequency` = NULL,
    `coupon` = NULL,
    `comment` = NULL,

    #' @description
    #' Initialize a new LicenseOrderRequest class.
    #'
    #' @param package License service type id from getNewLicense.serviceTypes (must be buyable).
    #' @param ip IP address the license is bound to.
    #' @param tos Terms-of-service acceptance. Must be true to place the order.
    #' @param frequency Billing frequency in months.. Default to 1.
    #' @param coupon Coupon code.. Default to "".
    #' @param comment Free-form note saved on the service row.. Default to "".
    #' @param ... Other optional arguments.
    initialize = function(`package`, `ip`, `tos`, `frequency` = 1, `coupon` = "", `comment` = "", ...) {
      if (!missing(`package`)) {
        if (!(is.numeric(`package`) && length(`package`) == 1)) {
          stop(paste("Error! Invalid data for `package`. Must be an integer:", `package`))
        }
        self$`package` <- `package`
      }
      if (!missing(`ip`)) {
        if (!(is.character(`ip`) && length(`ip`) == 1)) {
          stop(paste("Error! Invalid data for `ip`. Must be a string:", `ip`))
        }
        self$`ip` <- `ip`
      }
      if (!missing(`tos`)) {
        if (!(is.logical(`tos`) && length(`tos`) == 1)) {
          stop(paste("Error! Invalid data for `tos`. Must be a boolean:", `tos`))
        }
        self$`tos` <- `tos`
      }
      if (!is.null(`frequency`)) {
        if (!(is.numeric(`frequency`) && length(`frequency`) == 1)) {
          stop(paste("Error! Invalid data for `frequency`. Must be an integer:", `frequency`))
        }
        self$`frequency` <- `frequency`
      }
      if (!is.null(`coupon`)) {
        if (!(is.character(`coupon`) && length(`coupon`) == 1)) {
          stop(paste("Error! Invalid data for `coupon`. Must be a string:", `coupon`))
        }
        self$`coupon` <- `coupon`
      }
      if (!is.null(`comment`)) {
        if (!(is.character(`comment`) && length(`comment`) == 1)) {
          stop(paste("Error! Invalid data for `comment`. Must be a string:", `comment`))
        }
        self$`comment` <- `comment`
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
    #' @return LicenseOrderRequest as a base R list.
    #' @examples
    #' # convert array of LicenseOrderRequest (x) to a data frame
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
    #' Convert LicenseOrderRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      LicenseOrderRequestObject <- list()
      if (!is.null(self$`package`)) {
        LicenseOrderRequestObject[["package"]] <-
          self$`package`
      }
      if (!is.null(self$`ip`)) {
        LicenseOrderRequestObject[["ip"]] <-
          self$`ip`
      }
      if (!is.null(self$`tos`)) {
        LicenseOrderRequestObject[["tos"]] <-
          self$`tos`
      }
      if (!is.null(self$`frequency`)) {
        LicenseOrderRequestObject[["frequency"]] <-
          self$`frequency`
      }
      if (!is.null(self$`coupon`)) {
        LicenseOrderRequestObject[["coupon"]] <-
          self$`coupon`
      }
      if (!is.null(self$`comment`)) {
        LicenseOrderRequestObject[["comment"]] <-
          self$`comment`
      }
      return(LicenseOrderRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of LicenseOrderRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of LicenseOrderRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`package`)) {
        self$`package` <- this_object$`package`
      }
      if (!is.null(this_object$`ip`)) {
        self$`ip` <- this_object$`ip`
      }
      if (!is.null(this_object$`tos`)) {
        self$`tos` <- this_object$`tos`
      }
      if (!is.null(this_object$`frequency`)) {
        self$`frequency` <- this_object$`frequency`
      }
      if (!is.null(this_object$`coupon`)) {
        self$`coupon` <- this_object$`coupon`
      }
      if (!is.null(this_object$`comment`)) {
        self$`comment` <- this_object$`comment`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return LicenseOrderRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of LicenseOrderRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of LicenseOrderRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`package` <- this_object$`package`
      self$`ip` <- this_object$`ip`
      self$`tos` <- this_object$`tos`
      self$`frequency` <- this_object$`frequency`
      self$`coupon` <- this_object$`coupon`
      self$`comment` <- this_object$`comment`
      self
    },

    #' @description
    #' Validate JSON input with respect to LicenseOrderRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `package`
      if (!is.null(input_json$`package`)) {
        if (!(is.numeric(input_json$`package`) && length(input_json$`package`) == 1)) {
          stop(paste("Error! Invalid data for `package`. Must be an integer:", input_json$`package`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for LicenseOrderRequest: the required field `package` is missing."))
      }
      # check the required field `ip`
      if (!is.null(input_json$`ip`)) {
        if (!(is.character(input_json$`ip`) && length(input_json$`ip`) == 1)) {
          stop(paste("Error! Invalid data for `ip`. Must be a string:", input_json$`ip`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for LicenseOrderRequest: the required field `ip` is missing."))
      }
      # check the required field `tos`
      if (!is.null(input_json$`tos`)) {
        if (!(is.logical(input_json$`tos`) && length(input_json$`tos`) == 1)) {
          stop(paste("Error! Invalid data for `tos`. Must be a boolean:", input_json$`tos`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for LicenseOrderRequest: the required field `tos` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of LicenseOrderRequest
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `package` is null
      if (is.null(self$`package`)) {
        return(FALSE)
      }

      # check if the required `ip` is null
      if (is.null(self$`ip`)) {
        return(FALSE)
      }

      # check if the required `tos` is null
      if (is.null(self$`tos`)) {
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
      # check if the required `package` is null
      if (is.null(self$`package`)) {
        invalid_fields["package"] <- "Non-nullable required field `package` cannot be null."
      }

      # check if the required `ip` is null
      if (is.null(self$`ip`)) {
        invalid_fields["ip"] <- "Non-nullable required field `ip` cannot be null."
      }

      # check if the required `tos` is null
      if (is.null(self$`tos`)) {
        invalid_fields["tos"] <- "Non-nullable required field `tos` cannot be null."
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
# LicenseOrderRequest$unlock()
#
## Below is an example to define the print function
# LicenseOrderRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# LicenseOrderRequest$lock()

