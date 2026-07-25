#' Create a new MailTutorialsTable
#'
#' @description
#' A table of tutorial links displayed for a mail service.
#'
#' @docType class
#' @title MailTutorialsTable
#' @description MailTutorialsTable Class
#' @format An \code{R6Class} generator object
#' @field title The title of the tutorials table. character [optional]
#' @field rows The rows of the tutorials table. list(\link{MailTutorialsTableRow}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
MailTutorialsTable <- R6::R6Class(
  "MailTutorialsTable",
  public = list(
    `title` = NULL,
    `rows` = NULL,

    #' @description
    #' Initialize a new MailTutorialsTable class.
    #'
    #' @param title The title of the tutorials table.
    #' @param rows The rows of the tutorials table.
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
    #' @return MailTutorialsTable as a base R list.
    #' @examples
    #' # convert array of MailTutorialsTable (x) to a data frame
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
    #' Convert MailTutorialsTable to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      MailTutorialsTableObject <- list()
      if (!is.null(self$`title`)) {
        MailTutorialsTableObject[["title"]] <-
          self$`title`
      }
      if (!is.null(self$`rows`)) {
        MailTutorialsTableObject[["rows"]] <-
          self$extractSimpleType(self$`rows`)
      }
      return(MailTutorialsTableObject)
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
    #' Deserialize JSON string into an instance of MailTutorialsTable
    #'
    #' @param input_json the JSON input
    #' @return the instance of MailTutorialsTable
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`title`)) {
        self$`title` <- this_object$`title`
      }
      if (!is.null(this_object$`rows`)) {
        self$`rows` <- ApiClient$new()$deserializeObj(this_object$`rows`, "array[MailTutorialsTableRow]", loadNamespace("interserverapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return MailTutorialsTable in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of MailTutorialsTable
    #'
    #' @param input_json the JSON input
    #' @return the instance of MailTutorialsTable
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`title` <- this_object$`title`
      self$`rows` <- ApiClient$new()$deserializeObj(this_object$`rows`, "array[MailTutorialsTableRow]", loadNamespace("interserverapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to MailTutorialsTable and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of MailTutorialsTable
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
# MailTutorialsTable$unlock()
#
## Below is an example to define the print function
# MailTutorialsTable$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# MailTutorialsTable$lock()

