#' Create a new HomeServicesBackups
#'
#' @description
#' HomeServicesBackups Class
#'
#' @docType class
#' @title HomeServicesBackups
#' @description HomeServicesBackups Class
#' @format An \code{R6Class} generator object
#' @field links List of backup links. list(character) [optional]
#' @field count Number of backups. integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
HomeServicesBackups <- R6::R6Class(
  "HomeServicesBackups",
  public = list(
    `links` = NULL,
    `count` = NULL,

    #' @description
    #' Initialize a new HomeServicesBackups class.
    #'
    #' @param links List of backup links.
    #' @param count Number of backups.
    #' @param ... Other optional arguments.
    initialize = function(`links` = NULL, `count` = NULL, ...) {
      if (!is.null(`links`)) {
        stopifnot(is.vector(`links`), length(`links`) != 0)
        sapply(`links`, function(x) stopifnot(is.character(x)))
        self$`links` <- `links`
      }
      if (!is.null(`count`)) {
        if (!(is.numeric(`count`) && length(`count`) == 1)) {
          stop(paste("Error! Invalid data for `count`. Must be an integer:", `count`))
        }
        self$`count` <- `count`
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
    #' @return HomeServicesBackups as a base R list.
    #' @examples
    #' # convert array of HomeServicesBackups (x) to a data frame
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
    #' Convert HomeServicesBackups to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      HomeServicesBackupsObject <- list()
      if (!is.null(self$`links`)) {
        HomeServicesBackupsObject[["links"]] <-
          self$`links`
      }
      if (!is.null(self$`count`)) {
        HomeServicesBackupsObject[["count"]] <-
          self$`count`
      }
      return(HomeServicesBackupsObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of HomeServicesBackups
    #'
    #' @param input_json the JSON input
    #' @return the instance of HomeServicesBackups
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`links`)) {
        self$`links` <- ApiClient$new()$deserializeObj(this_object$`links`, "array[character]", loadNamespace("interserverapi"))
      }
      if (!is.null(this_object$`count`)) {
        self$`count` <- this_object$`count`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return HomeServicesBackups in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of HomeServicesBackups
    #'
    #' @param input_json the JSON input
    #' @return the instance of HomeServicesBackups
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`links` <- ApiClient$new()$deserializeObj(this_object$`links`, "array[character]", loadNamespace("interserverapi"))
      self$`count` <- this_object$`count`
      self
    },

    #' @description
    #' Validate JSON input with respect to HomeServicesBackups and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of HomeServicesBackups
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
# HomeServicesBackups$unlock()
#
## Below is an example to define the print function
# HomeServicesBackups$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# HomeServicesBackups$lock()

