#' Create a new GetScrubIpDetails200ResponseExtraInfoTablesScrubIps
#'
#' @description
#' GetScrubIpDetails200ResponseExtraInfoTablesScrubIps Class
#'
#' @docType class
#' @title GetScrubIpDetails200ResponseExtraInfoTablesScrubIps
#' @description GetScrubIpDetails200ResponseExtraInfoTablesScrubIps Class
#' @format An \code{R6Class} generator object
#' @field title  character [optional]
#' @field rows  list(\link{GetScrubIpDetails200ResponseExtraInfoTablesScrubIpsRowsInner}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GetScrubIpDetails200ResponseExtraInfoTablesScrubIps <- R6::R6Class(
  "GetScrubIpDetails200ResponseExtraInfoTablesScrubIps",
  public = list(
    `title` = NULL,
    `rows` = NULL,

    #' @description
    #' Initialize a new GetScrubIpDetails200ResponseExtraInfoTablesScrubIps class.
    #'
    #' @param title title
    #' @param rows rows
    #' @param ... Other optional arguments.
    initialize = function(`title` = NULL, `rows` = NULL, ...) {
      if (!is.null(`title`)) {
        if (!(is.character(`title`) && length(`title`) == 1)) {
          stop(paste("Error! Invalid data for `title`. Must be a string:", `title`))
        }
        self$`title` <- `title`
      }
      if (!is.null(`rows`)) {
        stopifnot(is.vector(`rows`), length(`rows`) != 0)
        sapply(`rows`, function(x) stopifnot(R6::is.R6(x)))
        self$`rows` <- `rows`
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
    #' @return GetScrubIpDetails200ResponseExtraInfoTablesScrubIps as a base R list.
    #' @examples
    #' # convert array of GetScrubIpDetails200ResponseExtraInfoTablesScrubIps (x) to a data frame
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
    #' Convert GetScrubIpDetails200ResponseExtraInfoTablesScrubIps to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      GetScrubIpDetails200ResponseExtraInfoTablesScrubIpsObject <- list()
      if (!is.null(self$`title`)) {
        GetScrubIpDetails200ResponseExtraInfoTablesScrubIpsObject[["title"]] <-
          self$`title`
      }
      if (!is.null(self$`rows`)) {
        GetScrubIpDetails200ResponseExtraInfoTablesScrubIpsObject[["rows"]] <-
          self$extractSimpleType(self$`rows`)
      }
      return(GetScrubIpDetails200ResponseExtraInfoTablesScrubIpsObject)
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
    #' Deserialize JSON string into an instance of GetScrubIpDetails200ResponseExtraInfoTablesScrubIps
    #'
    #' @param input_json the JSON input
    #' @return the instance of GetScrubIpDetails200ResponseExtraInfoTablesScrubIps
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`title`)) {
        self$`title` <- this_object$`title`
      }
      if (!is.null(this_object$`rows`)) {
        self$`rows` <- ApiClient$new()$deserializeObj(this_object$`rows`, "array[GetScrubIpDetails200ResponseExtraInfoTablesScrubIpsRowsInner]", loadNamespace("interserverapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return GetScrubIpDetails200ResponseExtraInfoTablesScrubIps in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of GetScrubIpDetails200ResponseExtraInfoTablesScrubIps
    #'
    #' @param input_json the JSON input
    #' @return the instance of GetScrubIpDetails200ResponseExtraInfoTablesScrubIps
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`title` <- this_object$`title`
      self$`rows` <- ApiClient$new()$deserializeObj(this_object$`rows`, "array[GetScrubIpDetails200ResponseExtraInfoTablesScrubIpsRowsInner]", loadNamespace("interserverapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to GetScrubIpDetails200ResponseExtraInfoTablesScrubIps and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of GetScrubIpDetails200ResponseExtraInfoTablesScrubIps
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
# GetScrubIpDetails200ResponseExtraInfoTablesScrubIps$unlock()
#
## Below is an example to define the print function
# GetScrubIpDetails200ResponseExtraInfoTablesScrubIps$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GetScrubIpDetails200ResponseExtraInfoTablesScrubIps$lock()

