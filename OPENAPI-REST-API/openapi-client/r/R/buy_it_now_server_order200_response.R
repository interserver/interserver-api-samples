#' Create a new BuyItNowServerOrder200Response
#'
#' @description
#' BuyItNowServerOrder200Response Class
#'
#' @docType class
#' @title BuyItNowServerOrder200Response
#' @description BuyItNowServerOrder200Response Class
#' @format An \code{R6Class} generator object
#' @field bandwidth  list(\link{BuyItNowServerOrder200ResponseBandwidthInner}) [optional]
#' @field ips  list(\link{BuyItNowServerOrder200ResponseIpsInner}) [optional]
#' @field os  list(\link{BuyItNowServerOrder200ResponseOsInner}) [optional]
#' @field cp  list(\link{BuyItNowServerOrder200ResponseCpInner}) [optional]
#' @field raid  list(\link{BuyItNowServerOrder200ResponseRaidInner}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
BuyItNowServerOrder200Response <- R6::R6Class(
  "BuyItNowServerOrder200Response",
  public = list(
    `bandwidth` = NULL,
    `ips` = NULL,
    `os` = NULL,
    `cp` = NULL,
    `raid` = NULL,

    #' @description
    #' Initialize a new BuyItNowServerOrder200Response class.
    #'
    #' @param bandwidth bandwidth
    #' @param ips ips
    #' @param os os
    #' @param cp cp
    #' @param raid raid
    #' @param ... Other optional arguments.
    initialize = function(`bandwidth` = NULL, `ips` = NULL, `os` = NULL, `cp` = NULL, `raid` = NULL, ...) {
      if (!is.null(`bandwidth`)) {
        stopifnot(is.vector(`bandwidth`), length(`bandwidth`) != 0)
        sapply(`bandwidth`, function(x) stopifnot(R6::is.R6(x)))
        self$`bandwidth` <- `bandwidth`
      }
      if (!is.null(`ips`)) {
        stopifnot(is.vector(`ips`), length(`ips`) != 0)
        sapply(`ips`, function(x) stopifnot(R6::is.R6(x)))
        self$`ips` <- `ips`
      }
      if (!is.null(`os`)) {
        stopifnot(is.vector(`os`), length(`os`) != 0)
        sapply(`os`, function(x) stopifnot(R6::is.R6(x)))
        self$`os` <- `os`
      }
      if (!is.null(`cp`)) {
        stopifnot(is.vector(`cp`), length(`cp`) != 0)
        sapply(`cp`, function(x) stopifnot(R6::is.R6(x)))
        self$`cp` <- `cp`
      }
      if (!is.null(`raid`)) {
        stopifnot(is.vector(`raid`), length(`raid`) != 0)
        sapply(`raid`, function(x) stopifnot(R6::is.R6(x)))
        self$`raid` <- `raid`
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
    #' @return BuyItNowServerOrder200Response as a base R list.
    #' @examples
    #' # convert array of BuyItNowServerOrder200Response (x) to a data frame
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
    #' Convert BuyItNowServerOrder200Response to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      BuyItNowServerOrder200ResponseObject <- list()
      if (!is.null(self$`bandwidth`)) {
        BuyItNowServerOrder200ResponseObject[["bandwidth"]] <-
          self$extractSimpleType(self$`bandwidth`)
      }
      if (!is.null(self$`ips`)) {
        BuyItNowServerOrder200ResponseObject[["ips"]] <-
          self$extractSimpleType(self$`ips`)
      }
      if (!is.null(self$`os`)) {
        BuyItNowServerOrder200ResponseObject[["os"]] <-
          self$extractSimpleType(self$`os`)
      }
      if (!is.null(self$`cp`)) {
        BuyItNowServerOrder200ResponseObject[["cp"]] <-
          self$extractSimpleType(self$`cp`)
      }
      if (!is.null(self$`raid`)) {
        BuyItNowServerOrder200ResponseObject[["raid"]] <-
          self$extractSimpleType(self$`raid`)
      }
      return(BuyItNowServerOrder200ResponseObject)
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
    #' Deserialize JSON string into an instance of BuyItNowServerOrder200Response
    #'
    #' @param input_json the JSON input
    #' @return the instance of BuyItNowServerOrder200Response
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`bandwidth`)) {
        self$`bandwidth` <- ApiClient$new()$deserializeObj(this_object$`bandwidth`, "array[BuyItNowServerOrder200ResponseBandwidthInner]", loadNamespace("interserverapi"))
      }
      if (!is.null(this_object$`ips`)) {
        self$`ips` <- ApiClient$new()$deserializeObj(this_object$`ips`, "array[BuyItNowServerOrder200ResponseIpsInner]", loadNamespace("interserverapi"))
      }
      if (!is.null(this_object$`os`)) {
        self$`os` <- ApiClient$new()$deserializeObj(this_object$`os`, "array[BuyItNowServerOrder200ResponseOsInner]", loadNamespace("interserverapi"))
      }
      if (!is.null(this_object$`cp`)) {
        self$`cp` <- ApiClient$new()$deserializeObj(this_object$`cp`, "array[BuyItNowServerOrder200ResponseCpInner]", loadNamespace("interserverapi"))
      }
      if (!is.null(this_object$`raid`)) {
        self$`raid` <- ApiClient$new()$deserializeObj(this_object$`raid`, "array[BuyItNowServerOrder200ResponseRaidInner]", loadNamespace("interserverapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return BuyItNowServerOrder200Response in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of BuyItNowServerOrder200Response
    #'
    #' @param input_json the JSON input
    #' @return the instance of BuyItNowServerOrder200Response
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`bandwidth` <- ApiClient$new()$deserializeObj(this_object$`bandwidth`, "array[BuyItNowServerOrder200ResponseBandwidthInner]", loadNamespace("interserverapi"))
      self$`ips` <- ApiClient$new()$deserializeObj(this_object$`ips`, "array[BuyItNowServerOrder200ResponseIpsInner]", loadNamespace("interserverapi"))
      self$`os` <- ApiClient$new()$deserializeObj(this_object$`os`, "array[BuyItNowServerOrder200ResponseOsInner]", loadNamespace("interserverapi"))
      self$`cp` <- ApiClient$new()$deserializeObj(this_object$`cp`, "array[BuyItNowServerOrder200ResponseCpInner]", loadNamespace("interserverapi"))
      self$`raid` <- ApiClient$new()$deserializeObj(this_object$`raid`, "array[BuyItNowServerOrder200ResponseRaidInner]", loadNamespace("interserverapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to BuyItNowServerOrder200Response and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of BuyItNowServerOrder200Response
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
# BuyItNowServerOrder200Response$unlock()
#
## Below is an example to define the print function
# BuyItNowServerOrder200Response$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# BuyItNowServerOrder200Response$lock()

