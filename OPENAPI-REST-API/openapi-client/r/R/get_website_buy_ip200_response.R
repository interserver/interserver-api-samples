#' Create a new GetWebsiteBuyIp200Response
#'
#' @description
#' GetWebsiteBuyIp200Response Class
#'
#' @docType class
#' @title GetWebsiteBuyIp200Response
#' @description GetWebsiteBuyIp200Response Class
#' @format An \code{R6Class} generator object
#' @field ips A map of IP addresses to their current reverse DNS hostnames. named list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GetWebsiteBuyIp200Response <- R6::R6Class(
  "GetWebsiteBuyIp200Response",
  public = list(
    `ips` = NULL,

    #' @description
    #' Initialize a new GetWebsiteBuyIp200Response class.
    #'
    #' @param ips A map of IP addresses to their current reverse DNS hostnames.
    #' @param ... Other optional arguments.
    initialize = function(`ips` = NULL, ...) {
      if (!is.null(`ips`)) {
        stopifnot(is.vector(`ips`), length(`ips`) != 0)
        sapply(`ips`, function(x) stopifnot(is.character(x)))
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
    #' @return GetWebsiteBuyIp200Response as a base R list.
    #' @examples
    #' # convert array of GetWebsiteBuyIp200Response (x) to a data frame
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
    #' Convert GetWebsiteBuyIp200Response to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      GetWebsiteBuyIp200ResponseObject <- list()
      if (!is.null(self$`ips`)) {
        GetWebsiteBuyIp200ResponseObject[["ips"]] <-
          self$`ips`
      }
      return(GetWebsiteBuyIp200ResponseObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of GetWebsiteBuyIp200Response
    #'
    #' @param input_json the JSON input
    #' @return the instance of GetWebsiteBuyIp200Response
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`ips`)) {
        self$`ips` <- ApiClient$new()$deserializeObj(this_object$`ips`, "map(character)", loadNamespace("interserverapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return GetWebsiteBuyIp200Response in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of GetWebsiteBuyIp200Response
    #'
    #' @param input_json the JSON input
    #' @return the instance of GetWebsiteBuyIp200Response
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`ips` <- ApiClient$new()$deserializeObj(this_object$`ips`, "map(character)", loadNamespace("interserverapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to GetWebsiteBuyIp200Response and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of GetWebsiteBuyIp200Response
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
# GetWebsiteBuyIp200Response$unlock()
#
## Below is an example to define the print function
# GetWebsiteBuyIp200Response$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GetWebsiteBuyIp200Response$lock()

