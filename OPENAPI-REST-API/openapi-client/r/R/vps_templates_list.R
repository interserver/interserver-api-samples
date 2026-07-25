#' Create a new VpsTemplatesList
#'
#' @description
#' A listing of the OS Templates available for use.
#'
#' @docType class
#' @title VpsTemplatesList
#' @description VpsTemplatesList Class
#' @format An \code{R6Class} generator object
#' @field templates A listing of the templates. list(\link{VpsTemplateRow})
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
VpsTemplatesList <- R6::R6Class(
  "VpsTemplatesList",
  public = list(
    `templates` = NULL,

    #' @description
    #' Initialize a new VpsTemplatesList class.
    #'
    #' @param templates A listing of the templates.
    #' @param ... Other optional arguments.
    initialize = function(`templates`, ...) {
      if (!missing(`templates`)) {
        stopifnot(is.vector(`templates`), length(`templates`) != 0)
        sapply(`templates`, function(x) stopifnot(R6::is.R6(x)))
        self$`templates` <- `templates`
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
    #' @return VpsTemplatesList as a base R list.
    #' @examples
    #' # convert array of VpsTemplatesList (x) to a data frame
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
    #' Convert VpsTemplatesList to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      VpsTemplatesListObject <- list()
      if (!is.null(self$`templates`)) {
        VpsTemplatesListObject[["templates"]] <-
          self$extractSimpleType(self$`templates`)
      }
      return(VpsTemplatesListObject)
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
    #' Deserialize JSON string into an instance of VpsTemplatesList
    #'
    #' @param input_json the JSON input
    #' @return the instance of VpsTemplatesList
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`templates`)) {
        self$`templates` <- ApiClient$new()$deserializeObj(this_object$`templates`, "array[VpsTemplateRow]", loadNamespace("interserverapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return VpsTemplatesList in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of VpsTemplatesList
    #'
    #' @param input_json the JSON input
    #' @return the instance of VpsTemplatesList
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`templates` <- ApiClient$new()$deserializeObj(this_object$`templates`, "array[VpsTemplateRow]", loadNamespace("interserverapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to VpsTemplatesList and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `templates`
      if (!is.null(input_json$`templates`)) {
        stopifnot(is.vector(input_json$`templates`), length(input_json$`templates`) != 0)
        tmp <- sapply(input_json$`templates`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for VpsTemplatesList: the required field `templates` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of VpsTemplatesList
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `templates` is null
      if (is.null(self$`templates`)) {
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
      # check if the required `templates` is null
      if (is.null(self$`templates`)) {
        invalid_fields["templates"] <- "Non-nullable required field `templates` cannot be null."
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
# VpsTemplatesList$unlock()
#
## Below is an example to define the print function
# VpsTemplatesList$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# VpsTemplatesList$lock()

