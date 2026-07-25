#' Create a new VpsTrafficHistorySectionResponse
#'
#' @description
#' VPS Traffic History Hour and Day Sections
#'
#' @docType class
#' @title VpsTrafficHistorySectionResponse
#' @description VpsTrafficHistorySectionResponse Class
#' @format An \code{R6Class} generator object
#' @field data  list(\link{VpsTrafficHistorySectionDataResponse})
#' @field times  list(character)
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
VpsTrafficHistorySectionResponse <- R6::R6Class(
  "VpsTrafficHistorySectionResponse",
  public = list(
    `data` = NULL,
    `times` = NULL,

    #' @description
    #' Initialize a new VpsTrafficHistorySectionResponse class.
    #'
    #' @param data data
    #' @param times times
    #' @param ... Other optional arguments.
    initialize = function(`data`, `times`, ...) {
      if (!missing(`data`)) {
        stopifnot(is.vector(`data`), length(`data`) != 0)
        sapply(`data`, function(x) stopifnot(R6::is.R6(x)))
        self$`data` <- `data`
      }
      if (!missing(`times`)) {
        stopifnot(is.vector(`times`), length(`times`) != 0)
        sapply(`times`, function(x) stopifnot(is.character(x)))
        self$`times` <- `times`
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
    #' @return VpsTrafficHistorySectionResponse as a base R list.
    #' @examples
    #' # convert array of VpsTrafficHistorySectionResponse (x) to a data frame
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
    #' Convert VpsTrafficHistorySectionResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      VpsTrafficHistorySectionResponseObject <- list()
      if (!is.null(self$`data`)) {
        VpsTrafficHistorySectionResponseObject[["data"]] <-
          self$extractSimpleType(self$`data`)
      }
      if (!is.null(self$`times`)) {
        VpsTrafficHistorySectionResponseObject[["times"]] <-
          self$`times`
      }
      return(VpsTrafficHistorySectionResponseObject)
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
    #' Deserialize JSON string into an instance of VpsTrafficHistorySectionResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of VpsTrafficHistorySectionResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`data`)) {
        self$`data` <- ApiClient$new()$deserializeObj(this_object$`data`, "array[VpsTrafficHistorySectionDataResponse]", loadNamespace("interserverapi"))
      }
      if (!is.null(this_object$`times`)) {
        self$`times` <- ApiClient$new()$deserializeObj(this_object$`times`, "array[character]", loadNamespace("interserverapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return VpsTrafficHistorySectionResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of VpsTrafficHistorySectionResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of VpsTrafficHistorySectionResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`data` <- ApiClient$new()$deserializeObj(this_object$`data`, "array[VpsTrafficHistorySectionDataResponse]", loadNamespace("interserverapi"))
      self$`times` <- ApiClient$new()$deserializeObj(this_object$`times`, "array[character]", loadNamespace("interserverapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to VpsTrafficHistorySectionResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `data`
      if (!is.null(input_json$`data`)) {
        stopifnot(is.vector(input_json$`data`), length(input_json$`data`) != 0)
        tmp <- sapply(input_json$`data`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for VpsTrafficHistorySectionResponse: the required field `data` is missing."))
      }
      # check the required field `times`
      if (!is.null(input_json$`times`)) {
        stopifnot(is.vector(input_json$`times`), length(input_json$`times`) != 0)
        tmp <- sapply(input_json$`times`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for VpsTrafficHistorySectionResponse: the required field `times` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of VpsTrafficHistorySectionResponse
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `data` is null
      if (is.null(self$`data`)) {
        return(FALSE)
      }

      # check if the required `times` is null
      if (is.null(self$`times`)) {
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
      # check if the required `data` is null
      if (is.null(self$`data`)) {
        invalid_fields["data"] <- "Non-nullable required field `data` cannot be null."
      }

      # check if the required `times` is null
      if (is.null(self$`times`)) {
        invalid_fields["times"] <- "Non-nullable required field `times` cannot be null."
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
# VpsTrafficHistorySectionResponse$unlock()
#
## Below is an example to define the print function
# VpsTrafficHistorySectionResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# VpsTrafficHistorySectionResponse$lock()

