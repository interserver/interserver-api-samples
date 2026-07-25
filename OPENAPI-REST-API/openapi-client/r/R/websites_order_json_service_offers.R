#' Create a new WebsitesOrderJsonServiceOffers
#'
#' @description
#' Schema for the jsonServiceOffers field in WebsitesOrder
#'
#' @docType class
#' @title WebsitesOrderJsonServiceOffers
#' @description WebsitesOrderJsonServiceOffers Class
#' @format An \code{R6Class} generator object
#' @field 1026 Array of service offers list(\link{WebsitesOrderJsonServiceOffersItem})
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
WebsitesOrderJsonServiceOffers <- R6::R6Class(
  "WebsitesOrderJsonServiceOffers",
  public = list(
    `1026` = NULL,

    #' @description
    #' Initialize a new WebsitesOrderJsonServiceOffers class.
    #'
    #' @param 1026 Array of service offers
    #' @param ... Other optional arguments.
    initialize = function(`1026`, ...) {
      if (!missing(`1026`)) {
        stopifnot(is.vector(`1026`), length(`1026`) != 0)
        sapply(`1026`, function(x) stopifnot(R6::is.R6(x)))
        self$`1026` <- `1026`
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
    #' @return WebsitesOrderJsonServiceOffers as a base R list.
    #' @examples
    #' # convert array of WebsitesOrderJsonServiceOffers (x) to a data frame
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
    #' Convert WebsitesOrderJsonServiceOffers to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      WebsitesOrderJsonServiceOffersObject <- list()
      if (!is.null(self$`1026`)) {
        WebsitesOrderJsonServiceOffersObject[["1026"]] <-
          self$extractSimpleType(self$`1026`)
      }
      return(WebsitesOrderJsonServiceOffersObject)
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
    #' Deserialize JSON string into an instance of WebsitesOrderJsonServiceOffers
    #'
    #' @param input_json the JSON input
    #' @return the instance of WebsitesOrderJsonServiceOffers
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`1026`)) {
        self$`1026` <- ApiClient$new()$deserializeObj(this_object$`1026`, "array[WebsitesOrderJsonServiceOffersItem]", loadNamespace("interserverapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return WebsitesOrderJsonServiceOffers in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of WebsitesOrderJsonServiceOffers
    #'
    #' @param input_json the JSON input
    #' @return the instance of WebsitesOrderJsonServiceOffers
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`1026` <- ApiClient$new()$deserializeObj(this_object$`1026`, "array[WebsitesOrderJsonServiceOffersItem]", loadNamespace("interserverapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to WebsitesOrderJsonServiceOffers and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `1026`
      if (!is.null(input_json$`1026`)) {
        stopifnot(is.vector(input_json$`1026`), length(input_json$`1026`) != 0)
        tmp <- sapply(input_json$`1026`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for WebsitesOrderJsonServiceOffers: the required field `1026` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of WebsitesOrderJsonServiceOffers
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `1026` is null
      if (is.null(self$`1026`)) {
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
      # check if the required `1026` is null
      if (is.null(self$`1026`)) {
        invalid_fields["1026"] <- "Non-nullable required field `1026` cannot be null."
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
# WebsitesOrderJsonServiceOffers$unlock()
#
## Below is an example to define the print function
# WebsitesOrderJsonServiceOffers$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# WebsitesOrderJsonServiceOffers$lock()

