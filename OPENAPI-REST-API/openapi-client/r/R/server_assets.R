#' Create a new ServerAssets
#'
#' @description
#' ServerAssets Class
#'
#' @docType class
#' @title ServerAssets
#' @description ServerAssets Class
#' @format An \code{R6Class} generator object
#' @field title The title of the assets. character [optional]
#' @field size The size of the assets. integer [optional]
#' @field type The type of the assets. character [optional]
#' @field header The header of the assets table. list(character) [optional]
#' @field rows The rows of the assets table. list(list(character)) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ServerAssets <- R6::R6Class(
  "ServerAssets",
  public = list(
    `title` = NULL,
    `size` = NULL,
    `type` = NULL,
    `header` = NULL,
    `rows` = NULL,

    #' @description
    #' Initialize a new ServerAssets class.
    #'
    #' @param title The title of the assets.
    #' @param size The size of the assets.
    #' @param type The type of the assets.
    #' @param header The header of the assets table.
    #' @param rows The rows of the assets table.
    #' @param ... Other optional arguments.
    initialize = function(`title` = NULL, `size` = NULL, `type` = NULL, `header` = NULL, `rows` = NULL, ...) {
      if (!is.null(`title`)) {
        if (!(is.character(`title`) && length(`title`) == 1)) {
          stop(paste("Error! Invalid data for `title`. Must be a string:", `title`))
        }
        self$`title` <- `title`
      }
      if (!is.null(`size`)) {
        if (!(is.numeric(`size`) && length(`size`) == 1)) {
          stop(paste("Error! Invalid data for `size`. Must be an integer:", `size`))
        }
        self$`size` <- `size`
      }
      if (!is.null(`type`)) {
        if (!(is.character(`type`) && length(`type`) == 1)) {
          stop(paste("Error! Invalid data for `type`. Must be a string:", `type`))
        }
        self$`type` <- `type`
      }
      if (!is.null(`header`)) {
        stopifnot(is.vector(`header`), length(`header`) != 0)
        sapply(`header`, function(x) stopifnot(is.character(x)))
        self$`header` <- `header`
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
    #' @return ServerAssets as a base R list.
    #' @examples
    #' # convert array of ServerAssets (x) to a data frame
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
    #' Convert ServerAssets to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ServerAssetsObject <- list()
      if (!is.null(self$`title`)) {
        ServerAssetsObject[["title"]] <-
          self$`title`
      }
      if (!is.null(self$`size`)) {
        ServerAssetsObject[["size"]] <-
          self$`size`
      }
      if (!is.null(self$`type`)) {
        ServerAssetsObject[["type"]] <-
          self$`type`
      }
      if (!is.null(self$`header`)) {
        ServerAssetsObject[["header"]] <-
          self$`header`
      }
      if (!is.null(self$`rows`)) {
        ServerAssetsObject[["rows"]] <-
          self$extractSimpleType(self$`rows`)
      }
      return(ServerAssetsObject)
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
    #' Deserialize JSON string into an instance of ServerAssets
    #'
    #' @param input_json the JSON input
    #' @return the instance of ServerAssets
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`title`)) {
        self$`title` <- this_object$`title`
      }
      if (!is.null(this_object$`size`)) {
        self$`size` <- this_object$`size`
      }
      if (!is.null(this_object$`type`)) {
        self$`type` <- this_object$`type`
      }
      if (!is.null(this_object$`header`)) {
        self$`header` <- ApiClient$new()$deserializeObj(this_object$`header`, "array[character]", loadNamespace("interserverapi"))
      }
      if (!is.null(this_object$`rows`)) {
        self$`rows` <- ApiClient$new()$deserializeObj(this_object$`rows`, "array[array[character]]", loadNamespace("interserverapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ServerAssets in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ServerAssets
    #'
    #' @param input_json the JSON input
    #' @return the instance of ServerAssets
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`title` <- this_object$`title`
      self$`size` <- this_object$`size`
      self$`type` <- this_object$`type`
      self$`header` <- ApiClient$new()$deserializeObj(this_object$`header`, "array[character]", loadNamespace("interserverapi"))
      self$`rows` <- ApiClient$new()$deserializeObj(this_object$`rows`, "array[array[character]]", loadNamespace("interserverapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to ServerAssets and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ServerAssets
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
# ServerAssets$unlock()
#
## Below is an example to define the print function
# ServerAssets$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ServerAssets$lock()

