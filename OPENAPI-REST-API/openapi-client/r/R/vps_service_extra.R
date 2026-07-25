#' Create a new VpsServiceExtra
#'
#' @description
#' VpsServiceExtra Class
#'
#' @docType class
#' @title VpsServiceExtra
#' @description VpsServiceExtra Class
#' @format An \code{R6Class} generator object
#' @field spice Spice integer [optional]
#' @field snapshots  list(\link{VpsSnapshot}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
VpsServiceExtra <- R6::R6Class(
  "VpsServiceExtra",
  public = list(
    `spice` = NULL,
    `snapshots` = NULL,

    #' @description
    #' Initialize a new VpsServiceExtra class.
    #'
    #' @param spice Spice
    #' @param snapshots snapshots
    #' @param ... Other optional arguments.
    initialize = function(`spice` = NULL, `snapshots` = NULL, ...) {
      if (!is.null(`spice`)) {
        if (!(is.numeric(`spice`) && length(`spice`) == 1)) {
          stop(paste("Error! Invalid data for `spice`. Must be an integer:", `spice`))
        }
        self$`spice` <- `spice`
      }
      if (!is.null(`snapshots`)) {
        stopifnot(is.vector(`snapshots`), length(`snapshots`) != 0)
        sapply(`snapshots`, function(x) stopifnot(R6::is.R6(x)))
        self$`snapshots` <- `snapshots`
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
    #' @return VpsServiceExtra as a base R list.
    #' @examples
    #' # convert array of VpsServiceExtra (x) to a data frame
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
    #' Convert VpsServiceExtra to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      VpsServiceExtraObject <- list()
      if (!is.null(self$`spice`)) {
        VpsServiceExtraObject[["spice"]] <-
          self$`spice`
      }
      if (!is.null(self$`snapshots`)) {
        VpsServiceExtraObject[["snapshots"]] <-
          self$extractSimpleType(self$`snapshots`)
      }
      return(VpsServiceExtraObject)
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
    #' Deserialize JSON string into an instance of VpsServiceExtra
    #'
    #' @param input_json the JSON input
    #' @return the instance of VpsServiceExtra
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`spice`)) {
        self$`spice` <- this_object$`spice`
      }
      if (!is.null(this_object$`snapshots`)) {
        self$`snapshots` <- ApiClient$new()$deserializeObj(this_object$`snapshots`, "array[VpsSnapshot]", loadNamespace("interserverapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return VpsServiceExtra in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of VpsServiceExtra
    #'
    #' @param input_json the JSON input
    #' @return the instance of VpsServiceExtra
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`spice` <- this_object$`spice`
      self$`snapshots` <- ApiClient$new()$deserializeObj(this_object$`snapshots`, "array[VpsSnapshot]", loadNamespace("interserverapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to VpsServiceExtra and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of VpsServiceExtra
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
# VpsServiceExtra$unlock()
#
## Below is an example to define the print function
# VpsServiceExtra$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# VpsServiceExtra$lock()

