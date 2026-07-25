#' Create a new MailDelistResponse
#'
#' @description
#' Blocklist status information for a mail service.
#'
#' @docType class
#' @title MailDelistResponse
#' @description MailDelistResponse Class
#' @format An \code{R6Class} generator object
#' @field id Mail service ID. integer [optional]
#' @field local Local blocklist entries. list(object) [optional]
#' @field mbtrap MailBaby trap block entries. list(object) [optional]
#' @field subject Subject-based block entries. list(object) [optional]
#' @field manual Manually blocked entries. list(object) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
MailDelistResponse <- R6::R6Class(
  "MailDelistResponse",
  public = list(
    `id` = NULL,
    `local` = NULL,
    `mbtrap` = NULL,
    `subject` = NULL,
    `manual` = NULL,

    #' @description
    #' Initialize a new MailDelistResponse class.
    #'
    #' @param id Mail service ID.
    #' @param local Local blocklist entries.
    #' @param mbtrap MailBaby trap block entries.
    #' @param subject Subject-based block entries.
    #' @param manual Manually blocked entries.
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `local` = NULL, `mbtrap` = NULL, `subject` = NULL, `manual` = NULL, ...) {
      if (!is.null(`id`)) {
        if (!(is.numeric(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", `id`))
        }
        self$`id` <- `id`
      }
      if (!is.null(`local`)) {
        stopifnot(is.vector(`local`), length(`local`) != 0)
        sapply(`local`, function(x) stopifnot(is.character(x)))
        self$`local` <- `local`
      }
      if (!is.null(`mbtrap`)) {
        stopifnot(is.vector(`mbtrap`), length(`mbtrap`) != 0)
        sapply(`mbtrap`, function(x) stopifnot(is.character(x)))
        self$`mbtrap` <- `mbtrap`
      }
      if (!is.null(`subject`)) {
        stopifnot(is.vector(`subject`), length(`subject`) != 0)
        sapply(`subject`, function(x) stopifnot(is.character(x)))
        self$`subject` <- `subject`
      }
      if (!is.null(`manual`)) {
        stopifnot(is.vector(`manual`), length(`manual`) != 0)
        sapply(`manual`, function(x) stopifnot(is.character(x)))
        self$`manual` <- `manual`
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
    #' @return MailDelistResponse as a base R list.
    #' @examples
    #' # convert array of MailDelistResponse (x) to a data frame
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
    #' Convert MailDelistResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      MailDelistResponseObject <- list()
      if (!is.null(self$`id`)) {
        MailDelistResponseObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`local`)) {
        MailDelistResponseObject[["local"]] <-
          self$`local`
      }
      if (!is.null(self$`mbtrap`)) {
        MailDelistResponseObject[["mbtrap"]] <-
          self$`mbtrap`
      }
      if (!is.null(self$`subject`)) {
        MailDelistResponseObject[["subject"]] <-
          self$`subject`
      }
      if (!is.null(self$`manual`)) {
        MailDelistResponseObject[["manual"]] <-
          self$`manual`
      }
      return(MailDelistResponseObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of MailDelistResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of MailDelistResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`local`)) {
        self$`local` <- ApiClient$new()$deserializeObj(this_object$`local`, "array[object]", loadNamespace("interserverapi"))
      }
      if (!is.null(this_object$`mbtrap`)) {
        self$`mbtrap` <- ApiClient$new()$deserializeObj(this_object$`mbtrap`, "array[object]", loadNamespace("interserverapi"))
      }
      if (!is.null(this_object$`subject`)) {
        self$`subject` <- ApiClient$new()$deserializeObj(this_object$`subject`, "array[object]", loadNamespace("interserverapi"))
      }
      if (!is.null(this_object$`manual`)) {
        self$`manual` <- ApiClient$new()$deserializeObj(this_object$`manual`, "array[object]", loadNamespace("interserverapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return MailDelistResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of MailDelistResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of MailDelistResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`local` <- ApiClient$new()$deserializeObj(this_object$`local`, "array[object]", loadNamespace("interserverapi"))
      self$`mbtrap` <- ApiClient$new()$deserializeObj(this_object$`mbtrap`, "array[object]", loadNamespace("interserverapi"))
      self$`subject` <- ApiClient$new()$deserializeObj(this_object$`subject`, "array[object]", loadNamespace("interserverapi"))
      self$`manual` <- ApiClient$new()$deserializeObj(this_object$`manual`, "array[object]", loadNamespace("interserverapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to MailDelistResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of MailDelistResponse
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
# MailDelistResponse$unlock()
#
## Below is an example to define the print function
# MailDelistResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# MailDelistResponse$lock()

