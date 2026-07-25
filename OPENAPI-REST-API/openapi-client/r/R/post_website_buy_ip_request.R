#' Create a new PostWebsiteBuyIpRequest
#'
#' @description
#' PostWebsiteBuyIpRequest Class
#'
#' @docType class
#' @title PostWebsiteBuyIpRequest
#' @description PostWebsiteBuyIpRequest Class
#' @format An \code{R6Class} generator object
#' @field ips A map of IP addresses to their desired reverse DNS hostnames. named list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PostWebsiteBuyIpRequest <- R6::R6Class(
  "PostWebsiteBuyIpRequest",
  public = list(
    `ips` = NULL,

    #' @description
    #' Initialize a new PostWebsiteBuyIpRequest class.
    #'
    #' @param ips A map of IP addresses to their desired reverse DNS hostnames.
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
    #' @return PostWebsiteBuyIpRequest as a base R list.
    #' @examples
    #' # convert array of PostWebsiteBuyIpRequest (x) to a data frame
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
    #' Convert PostWebsiteBuyIpRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PostWebsiteBuyIpRequestObject <- list()
      if (!is.null(self$`ips`)) {
        PostWebsiteBuyIpRequestObject[["ips"]] <-
          self$`ips`
      }
      return(PostWebsiteBuyIpRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of PostWebsiteBuyIpRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of PostWebsiteBuyIpRequest
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
    #' @return PostWebsiteBuyIpRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PostWebsiteBuyIpRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of PostWebsiteBuyIpRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`ips` <- ApiClient$new()$deserializeObj(this_object$`ips`, "map(character)", loadNamespace("interserverapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to PostWebsiteBuyIpRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PostWebsiteBuyIpRequest
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
# PostWebsiteBuyIpRequest$unlock()
#
## Below is an example to define the print function
# PostWebsiteBuyIpRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PostWebsiteBuyIpRequest$lock()

