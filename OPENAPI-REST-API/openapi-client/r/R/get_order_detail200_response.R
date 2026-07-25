#' Create a new GetOrderDetail200Response
#'
#' @description
#' GetOrderDetail200Response Class
#'
#' @docType class
#' @title GetOrderDetail200Response
#' @description GetOrderDetail200Response Class
#' @format An \code{R6Class} generator object
#' @field packageCosts  \link{GetOrderDetail200ResponsePackageCosts} [optional]
#' @field serviceTypes  list(\link{GetOrderDetail200ResponseServiceTypesInner}) [optional]
#' @field ips  list(\link{GetOrderDetail200ResponseIpsInner}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GetOrderDetail200Response <- R6::R6Class(
  "GetOrderDetail200Response",
  public = list(
    `packageCosts` = NULL,
    `serviceTypes` = NULL,
    `ips` = NULL,

    #' @description
    #' Initialize a new GetOrderDetail200Response class.
    #'
    #' @param packageCosts packageCosts
    #' @param serviceTypes serviceTypes
    #' @param ips ips
    #' @param ... Other optional arguments.
    initialize = function(`packageCosts` = NULL, `serviceTypes` = NULL, `ips` = NULL, ...) {
      if (!is.null(`packageCosts`)) {
        stopifnot(R6::is.R6(`packageCosts`))
        self$`packageCosts` <- `packageCosts`
      }
      if (!is.null(`serviceTypes`)) {
        stopifnot(is.vector(`serviceTypes`), length(`serviceTypes`) != 0)
        sapply(`serviceTypes`, function(x) stopifnot(R6::is.R6(x)))
        self$`serviceTypes` <- `serviceTypes`
      }
      if (!is.null(`ips`)) {
        stopifnot(is.vector(`ips`), length(`ips`) != 0)
        sapply(`ips`, function(x) stopifnot(R6::is.R6(x)))
        self$`ips` <- `ips`
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
    #' @return GetOrderDetail200Response as a base R list.
    #' @examples
    #' # convert array of GetOrderDetail200Response (x) to a data frame
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
    #' Convert GetOrderDetail200Response to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      GetOrderDetail200ResponseObject <- list()
      if (!is.null(self$`packageCosts`)) {
        GetOrderDetail200ResponseObject[["packageCosts"]] <-
          self$extractSimpleType(self$`packageCosts`)
      }
      if (!is.null(self$`serviceTypes`)) {
        GetOrderDetail200ResponseObject[["serviceTypes"]] <-
          self$extractSimpleType(self$`serviceTypes`)
      }
      if (!is.null(self$`ips`)) {
        GetOrderDetail200ResponseObject[["ips"]] <-
          self$extractSimpleType(self$`ips`)
      }
      return(GetOrderDetail200ResponseObject)
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
    #' Deserialize JSON string into an instance of GetOrderDetail200Response
    #'
    #' @param input_json the JSON input
    #' @return the instance of GetOrderDetail200Response
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`packageCosts`)) {
        `packagecosts_object` <- GetOrderDetail200ResponsePackageCosts$new()
        `packagecosts_object`$fromJSON(jsonlite::toJSON(this_object$`packageCosts`, auto_unbox = TRUE, digits = NA))
        self$`packageCosts` <- `packagecosts_object`
      }
      if (!is.null(this_object$`serviceTypes`)) {
        self$`serviceTypes` <- ApiClient$new()$deserializeObj(this_object$`serviceTypes`, "array[GetOrderDetail200ResponseServiceTypesInner]", loadNamespace("interserverapi"))
      }
      if (!is.null(this_object$`ips`)) {
        self$`ips` <- ApiClient$new()$deserializeObj(this_object$`ips`, "array[GetOrderDetail200ResponseIpsInner]", loadNamespace("interserverapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return GetOrderDetail200Response in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of GetOrderDetail200Response
    #'
    #' @param input_json the JSON input
    #' @return the instance of GetOrderDetail200Response
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`packageCosts` <- GetOrderDetail200ResponsePackageCosts$new()$fromJSON(jsonlite::toJSON(this_object$`packageCosts`, auto_unbox = TRUE, digits = NA))
      self$`serviceTypes` <- ApiClient$new()$deserializeObj(this_object$`serviceTypes`, "array[GetOrderDetail200ResponseServiceTypesInner]", loadNamespace("interserverapi"))
      self$`ips` <- ApiClient$new()$deserializeObj(this_object$`ips`, "array[GetOrderDetail200ResponseIpsInner]", loadNamespace("interserverapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to GetOrderDetail200Response and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of GetOrderDetail200Response
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
# GetOrderDetail200Response$unlock()
#
## Below is an example to define the print function
# GetOrderDetail200Response$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GetOrderDetail200Response$lock()

