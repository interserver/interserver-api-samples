#' Create a new MailBlocks
#'
#' @description
#' The listing of blocked emails.
#'
#' @docType class
#' @title MailBlocks
#' @description MailBlocks Class
#' @format An \code{R6Class} generator object
#' @field local  list(\link{MailBlockClickHouse})
#' @field mbtrap  list(\link{MailBlockClickHouse})
#' @field subject  list(\link{MailBlockRspamd})
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
MailBlocks <- R6::R6Class(
  "MailBlocks",
  public = list(
    `local` = NULL,
    `mbtrap` = NULL,
    `subject` = NULL,

    #' @description
    #' Initialize a new MailBlocks class.
    #'
    #' @param local local
    #' @param mbtrap mbtrap
    #' @param subject subject
    #' @param ... Other optional arguments.
    initialize = function(`local`, `mbtrap`, `subject`, ...) {
      if (!missing(`local`)) {
        stopifnot(is.vector(`local`), length(`local`) != 0)
        sapply(`local`, function(x) stopifnot(R6::is.R6(x)))
        self$`local` <- `local`
      }
      if (!missing(`mbtrap`)) {
        stopifnot(is.vector(`mbtrap`), length(`mbtrap`) != 0)
        sapply(`mbtrap`, function(x) stopifnot(R6::is.R6(x)))
        self$`mbtrap` <- `mbtrap`
      }
      if (!missing(`subject`)) {
        stopifnot(is.vector(`subject`), length(`subject`) != 0)
        sapply(`subject`, function(x) stopifnot(R6::is.R6(x)))
        self$`subject` <- `subject`
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
    #' @return MailBlocks as a base R list.
    #' @examples
    #' # convert array of MailBlocks (x) to a data frame
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
    #' Convert MailBlocks to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      MailBlocksObject <- list()
      if (!is.null(self$`local`)) {
        MailBlocksObject[["local"]] <-
          self$extractSimpleType(self$`local`)
      }
      if (!is.null(self$`mbtrap`)) {
        MailBlocksObject[["mbtrap"]] <-
          self$extractSimpleType(self$`mbtrap`)
      }
      if (!is.null(self$`subject`)) {
        MailBlocksObject[["subject"]] <-
          self$extractSimpleType(self$`subject`)
      }
      return(MailBlocksObject)
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
    #' Deserialize JSON string into an instance of MailBlocks
    #'
    #' @param input_json the JSON input
    #' @return the instance of MailBlocks
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`local`)) {
        self$`local` <- ApiClient$new()$deserializeObj(this_object$`local`, "array[MailBlockClickHouse]", loadNamespace("interserverapi"))
      }
      if (!is.null(this_object$`mbtrap`)) {
        self$`mbtrap` <- ApiClient$new()$deserializeObj(this_object$`mbtrap`, "array[MailBlockClickHouse]", loadNamespace("interserverapi"))
      }
      if (!is.null(this_object$`subject`)) {
        self$`subject` <- ApiClient$new()$deserializeObj(this_object$`subject`, "array[MailBlockRspamd]", loadNamespace("interserverapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return MailBlocks in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of MailBlocks
    #'
    #' @param input_json the JSON input
    #' @return the instance of MailBlocks
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`local` <- ApiClient$new()$deserializeObj(this_object$`local`, "array[MailBlockClickHouse]", loadNamespace("interserverapi"))
      self$`mbtrap` <- ApiClient$new()$deserializeObj(this_object$`mbtrap`, "array[MailBlockClickHouse]", loadNamespace("interserverapi"))
      self$`subject` <- ApiClient$new()$deserializeObj(this_object$`subject`, "array[MailBlockRspamd]", loadNamespace("interserverapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to MailBlocks and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `local`
      if (!is.null(input_json$`local`)) {
        stopifnot(is.vector(input_json$`local`), length(input_json$`local`) != 0)
        tmp <- sapply(input_json$`local`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for MailBlocks: the required field `local` is missing."))
      }
      # check the required field `mbtrap`
      if (!is.null(input_json$`mbtrap`)) {
        stopifnot(is.vector(input_json$`mbtrap`), length(input_json$`mbtrap`) != 0)
        tmp <- sapply(input_json$`mbtrap`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for MailBlocks: the required field `mbtrap` is missing."))
      }
      # check the required field `subject`
      if (!is.null(input_json$`subject`)) {
        stopifnot(is.vector(input_json$`subject`), length(input_json$`subject`) != 0)
        tmp <- sapply(input_json$`subject`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for MailBlocks: the required field `subject` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of MailBlocks
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `local` is null
      if (is.null(self$`local`)) {
        return(FALSE)
      }

      # check if the required `mbtrap` is null
      if (is.null(self$`mbtrap`)) {
        return(FALSE)
      }

      # check if the required `subject` is null
      if (is.null(self$`subject`)) {
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
      # check if the required `local` is null
      if (is.null(self$`local`)) {
        invalid_fields["local"] <- "Non-nullable required field `local` cannot be null."
      }

      # check if the required `mbtrap` is null
      if (is.null(self$`mbtrap`)) {
        invalid_fields["mbtrap"] <- "Non-nullable required field `mbtrap` cannot be null."
      }

      # check if the required `subject` is null
      if (is.null(self$`subject`)) {
        invalid_fields["subject"] <- "Non-nullable required field `subject` cannot be null."
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
# MailBlocks$unlock()
#
## Below is an example to define the print function
# MailBlocks$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# MailBlocks$lock()

