#' Create a new DeleteMailAlertRequest
#'
#' @description
#' DeleteMailAlertRequest Class
#'
#' @docType class
#' @title DeleteMailAlertRequest
#' @description DeleteMailAlertRequest Class
#' @format An \code{R6Class} generator object
#' @field alert_id The ID of the alert to delete. integer
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DeleteMailAlertRequest <- R6::R6Class(
  "DeleteMailAlertRequest",
  public = list(
    `alert_id` = NULL,

    #' @description
    #' Initialize a new DeleteMailAlertRequest class.
    #'
    #' @param alert_id The ID of the alert to delete.
    #' @param ... Other optional arguments.
    initialize = function(`alert_id`, ...) {
      if (!missing(`alert_id`)) {
        if (!(is.numeric(`alert_id`) && length(`alert_id`) == 1)) {
          stop(paste("Error! Invalid data for `alert_id`. Must be an integer:", `alert_id`))
        }
        self$`alert_id` <- `alert_id`
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
    #' @return DeleteMailAlertRequest as a base R list.
    #' @examples
    #' # convert array of DeleteMailAlertRequest (x) to a data frame
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
    #' Convert DeleteMailAlertRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      DeleteMailAlertRequestObject <- list()
      if (!is.null(self$`alert_id`)) {
        DeleteMailAlertRequestObject[["alert_id"]] <-
          self$`alert_id`
      }
      return(DeleteMailAlertRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of DeleteMailAlertRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of DeleteMailAlertRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`alert_id`)) {
        self$`alert_id` <- this_object$`alert_id`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return DeleteMailAlertRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of DeleteMailAlertRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of DeleteMailAlertRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`alert_id` <- this_object$`alert_id`
      self
    },

    #' @description
    #' Validate JSON input with respect to DeleteMailAlertRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `alert_id`
      if (!is.null(input_json$`alert_id`)) {
        if (!(is.numeric(input_json$`alert_id`) && length(input_json$`alert_id`) == 1)) {
          stop(paste("Error! Invalid data for `alert_id`. Must be an integer:", input_json$`alert_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for DeleteMailAlertRequest: the required field `alert_id` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of DeleteMailAlertRequest
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `alert_id` is null
      if (is.null(self$`alert_id`)) {
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
      # check if the required `alert_id` is null
      if (is.null(self$`alert_id`)) {
        invalid_fields["alert_id"] <- "Non-nullable required field `alert_id` cannot be null."
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
# DeleteMailAlertRequest$unlock()
#
## Below is an example to define the print function
# DeleteMailAlertRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# DeleteMailAlertRequest$lock()

