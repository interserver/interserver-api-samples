#' Create a new ServerBulkIpmiPowerResponse
#'
#' @description
#' Per-server IPMI power-status results for a bulk lookup.
#'
#' @docType class
#' @title ServerBulkIpmiPowerResponse
#' @description ServerBulkIpmiPowerResponse Class
#' @format An \code{R6Class} generator object
#' @field results  list(\link{ServerBulkIpmiPowerResponseResultsInner})
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ServerBulkIpmiPowerResponse <- R6::R6Class(
  "ServerBulkIpmiPowerResponse",
  public = list(
    `results` = NULL,

    #' @description
    #' Initialize a new ServerBulkIpmiPowerResponse class.
    #'
    #' @param results results
    #' @param ... Other optional arguments.
    initialize = function(`results`, ...) {
      if (!missing(`results`)) {
        stopifnot(is.vector(`results`), length(`results`) != 0)
        sapply(`results`, function(x) stopifnot(R6::is.R6(x)))
        self$`results` <- `results`
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
    #' @return ServerBulkIpmiPowerResponse as a base R list.
    #' @examples
    #' # convert array of ServerBulkIpmiPowerResponse (x) to a data frame
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
    #' Convert ServerBulkIpmiPowerResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ServerBulkIpmiPowerResponseObject <- list()
      if (!is.null(self$`results`)) {
        ServerBulkIpmiPowerResponseObject[["results"]] <-
          self$extractSimpleType(self$`results`)
      }
      return(ServerBulkIpmiPowerResponseObject)
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
    #' Deserialize JSON string into an instance of ServerBulkIpmiPowerResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of ServerBulkIpmiPowerResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`results`)) {
        self$`results` <- ApiClient$new()$deserializeObj(this_object$`results`, "array[ServerBulkIpmiPowerResponseResultsInner]", loadNamespace("interserverapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ServerBulkIpmiPowerResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ServerBulkIpmiPowerResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of ServerBulkIpmiPowerResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`results` <- ApiClient$new()$deserializeObj(this_object$`results`, "array[ServerBulkIpmiPowerResponseResultsInner]", loadNamespace("interserverapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to ServerBulkIpmiPowerResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `results`
      if (!is.null(input_json$`results`)) {
        stopifnot(is.vector(input_json$`results`), length(input_json$`results`) != 0)
        tmp <- sapply(input_json$`results`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ServerBulkIpmiPowerResponse: the required field `results` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ServerBulkIpmiPowerResponse
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `results` is null
      if (is.null(self$`results`)) {
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
      # check if the required `results` is null
      if (is.null(self$`results`)) {
        invalid_fields["results"] <- "Non-nullable required field `results` cannot be null."
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
# ServerBulkIpmiPowerResponse$unlock()
#
## Below is an example to define the print function
# ServerBulkIpmiPowerResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ServerBulkIpmiPowerResponse$lock()

