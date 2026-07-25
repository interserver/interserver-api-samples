#' Create a new FloatingIpOrderRequest
#'
#' @description
#' Request body to validate (putFloating_ips) or place (addFloatingIp) a floating IP order. Service type ids come from getNewFloatingIp.serviceTypes.
#'
#' @docType class
#' @title FloatingIpOrderRequest
#' @description FloatingIpOrderRequest Class
#' @format An \code{R6Class} generator object
#' @field serviceType Floating IP plan service type id from getNewFloatingIp.serviceTypes (must be buyable). integer
#' @field coupon Coupon code. character [optional]
#' @field comment Free-form note saved on the service row (used on addFloatingIp). character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
FloatingIpOrderRequest <- R6::R6Class(
  "FloatingIpOrderRequest",
  public = list(
    `serviceType` = NULL,
    `coupon` = NULL,
    `comment` = NULL,

    #' @description
    #' Initialize a new FloatingIpOrderRequest class.
    #'
    #' @param serviceType Floating IP plan service type id from getNewFloatingIp.serviceTypes (must be buyable).
    #' @param coupon Coupon code.. Default to "".
    #' @param comment Free-form note saved on the service row (used on addFloatingIp).. Default to "".
    #' @param ... Other optional arguments.
    initialize = function(`serviceType`, `coupon` = "", `comment` = "", ...) {
      if (!missing(`serviceType`)) {
        if (!(is.numeric(`serviceType`) && length(`serviceType`) == 1)) {
          stop(paste("Error! Invalid data for `serviceType`. Must be an integer:", `serviceType`))
        }
        self$`serviceType` <- `serviceType`
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
    #' @return FloatingIpOrderRequest as a base R list.
    #' @examples
    #' # convert array of FloatingIpOrderRequest (x) to a data frame
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
    #' Convert FloatingIpOrderRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      FloatingIpOrderRequestObject <- list()
      if (!is.null(self$`serviceType`)) {
        FloatingIpOrderRequestObject[["serviceType"]] <-
          self$`serviceType`
      }
      if (!is.null(self$`coupon`)) {
        FloatingIpOrderRequestObject[["coupon"]] <-
          self$`coupon`
      }
      if (!is.null(self$`comment`)) {
        FloatingIpOrderRequestObject[["comment"]] <-
          self$`comment`
      }
      return(FloatingIpOrderRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of FloatingIpOrderRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of FloatingIpOrderRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`serviceType`)) {
        self$`serviceType` <- this_object$`serviceType`
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
    #' @return FloatingIpOrderRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of FloatingIpOrderRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of FloatingIpOrderRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`serviceType` <- this_object$`serviceType`
      self$`coupon` <- this_object$`coupon`
      self$`comment` <- this_object$`comment`
      self
    },

    #' @description
    #' Validate JSON input with respect to FloatingIpOrderRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `serviceType`
      if (!is.null(input_json$`serviceType`)) {
        if (!(is.numeric(input_json$`serviceType`) && length(input_json$`serviceType`) == 1)) {
          stop(paste("Error! Invalid data for `serviceType`. Must be an integer:", input_json$`serviceType`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for FloatingIpOrderRequest: the required field `serviceType` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of FloatingIpOrderRequest
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `serviceType` is null
      if (is.null(self$`serviceType`)) {
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
      # check if the required `serviceType` is null
      if (is.null(self$`serviceType`)) {
        invalid_fields["serviceType"] <- "Non-nullable required field `serviceType` cannot be null."
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
# FloatingIpOrderRequest$unlock()
#
## Below is an example to define the print function
# FloatingIpOrderRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# FloatingIpOrderRequest$lock()

