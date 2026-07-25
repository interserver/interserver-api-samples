#' Create a new DomainNameserverPutRequest
#'
#' @description
#' Payload for replacing the assigned nameserver list for a domain.
#'
#' @docType class
#' @title DomainNameserverPutRequest
#' @description DomainNameserverPutRequest Class
#' @format An \code{R6Class} generator object
#' @field nameserver  list(character)
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DomainNameserverPutRequest <- R6::R6Class(
  "DomainNameserverPutRequest",
  public = list(
    `nameserver` = NULL,

    #' @description
    #' Initialize a new DomainNameserverPutRequest class.
    #'
    #' @param nameserver nameserver
    #' @param ... Other optional arguments.
    initialize = function(`nameserver`, ...) {
      if (!missing(`nameserver`)) {
        stopifnot(is.vector(`nameserver`), length(`nameserver`) != 0)
        sapply(`nameserver`, function(x) stopifnot(is.character(x)))
        self$`nameserver` <- `nameserver`
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
    #' @return DomainNameserverPutRequest as a base R list.
    #' @examples
    #' # convert array of DomainNameserverPutRequest (x) to a data frame
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
    #' Convert DomainNameserverPutRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      DomainNameserverPutRequestObject <- list()
      if (!is.null(self$`nameserver`)) {
        DomainNameserverPutRequestObject[["nameserver"]] <-
          self$`nameserver`
      }
      return(DomainNameserverPutRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of DomainNameserverPutRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of DomainNameserverPutRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`nameserver`)) {
        self$`nameserver` <- ApiClient$new()$deserializeObj(this_object$`nameserver`, "array[character]", loadNamespace("interserverapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return DomainNameserverPutRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of DomainNameserverPutRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of DomainNameserverPutRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`nameserver` <- ApiClient$new()$deserializeObj(this_object$`nameserver`, "array[character]", loadNamespace("interserverapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to DomainNameserverPutRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `nameserver`
      if (!is.null(input_json$`nameserver`)) {
        stopifnot(is.vector(input_json$`nameserver`), length(input_json$`nameserver`) != 0)
        tmp <- sapply(input_json$`nameserver`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for DomainNameserverPutRequest: the required field `nameserver` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of DomainNameserverPutRequest
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `nameserver` is null
      if (is.null(self$`nameserver`)) {
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
      # check if the required `nameserver` is null
      if (is.null(self$`nameserver`)) {
        invalid_fields["nameserver"] <- "Non-nullable required field `nameserver` cannot be null."
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
# DomainNameserverPutRequest$unlock()
#
## Below is an example to define the print function
# DomainNameserverPutRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# DomainNameserverPutRequest$lock()

