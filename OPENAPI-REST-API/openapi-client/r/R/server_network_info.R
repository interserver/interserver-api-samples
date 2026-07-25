#' Create a new ServerNetworkInfo
#'
#' @description
#' ServerNetworkInfo Class
#'
#' @docType class
#' @title ServerNetworkInfo
#' @description ServerNetworkInfo Class
#' @format An \code{R6Class} generator object
#' @field vlans List of VLANs. list(character)
#' @field vlans6 List of IPv6 VLANs. list(character)
#' @field assets  \link{ServerNetworkInfoAssets}
#' @field switchports  \link{ServerNetworkInfoSwitchports}
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ServerNetworkInfo <- R6::R6Class(
  "ServerNetworkInfo",
  public = list(
    `vlans` = NULL,
    `vlans6` = NULL,
    `assets` = NULL,
    `switchports` = NULL,

    #' @description
    #' Initialize a new ServerNetworkInfo class.
    #'
    #' @param vlans List of VLANs.
    #' @param vlans6 List of IPv6 VLANs.
    #' @param assets assets
    #' @param switchports switchports
    #' @param ... Other optional arguments.
    initialize = function(`vlans`, `vlans6`, `assets`, `switchports`, ...) {
      if (!missing(`vlans`)) {
        stopifnot(is.vector(`vlans`), length(`vlans`) != 0)
        sapply(`vlans`, function(x) stopifnot(is.character(x)))
        self$`vlans` <- `vlans`
      }
      if (!missing(`vlans6`)) {
        stopifnot(is.vector(`vlans6`), length(`vlans6`) != 0)
        sapply(`vlans6`, function(x) stopifnot(is.character(x)))
        self$`vlans6` <- `vlans6`
      }
      if (!missing(`assets`)) {
        stopifnot(R6::is.R6(`assets`))
        self$`assets` <- `assets`
      }
      if (!missing(`switchports`)) {
        stopifnot(R6::is.R6(`switchports`))
        self$`switchports` <- `switchports`
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
    #' @return ServerNetworkInfo as a base R list.
    #' @examples
    #' # convert array of ServerNetworkInfo (x) to a data frame
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
    #' Convert ServerNetworkInfo to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ServerNetworkInfoObject <- list()
      if (!is.null(self$`vlans`)) {
        ServerNetworkInfoObject[["vlans"]] <-
          self$`vlans`
      }
      if (!is.null(self$`vlans6`)) {
        ServerNetworkInfoObject[["vlans6"]] <-
          self$`vlans6`
      }
      if (!is.null(self$`assets`)) {
        ServerNetworkInfoObject[["assets"]] <-
          self$extractSimpleType(self$`assets`)
      }
      if (!is.null(self$`switchports`)) {
        ServerNetworkInfoObject[["switchports"]] <-
          self$extractSimpleType(self$`switchports`)
      }
      return(ServerNetworkInfoObject)
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
    #' Deserialize JSON string into an instance of ServerNetworkInfo
    #'
    #' @param input_json the JSON input
    #' @return the instance of ServerNetworkInfo
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`vlans`)) {
        self$`vlans` <- ApiClient$new()$deserializeObj(this_object$`vlans`, "array[character]", loadNamespace("interserverapi"))
      }
      if (!is.null(this_object$`vlans6`)) {
        self$`vlans6` <- ApiClient$new()$deserializeObj(this_object$`vlans6`, "array[character]", loadNamespace("interserverapi"))
      }
      if (!is.null(this_object$`assets`)) {
        `assets_object` <- ServerNetworkInfoAssets$new()
        `assets_object`$fromJSON(jsonlite::toJSON(this_object$`assets`, auto_unbox = TRUE, digits = NA))
        self$`assets` <- `assets_object`
      }
      if (!is.null(this_object$`switchports`)) {
        `switchports_object` <- ServerNetworkInfoSwitchports$new()
        `switchports_object`$fromJSON(jsonlite::toJSON(this_object$`switchports`, auto_unbox = TRUE, digits = NA))
        self$`switchports` <- `switchports_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ServerNetworkInfo in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ServerNetworkInfo
    #'
    #' @param input_json the JSON input
    #' @return the instance of ServerNetworkInfo
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`vlans` <- ApiClient$new()$deserializeObj(this_object$`vlans`, "array[character]", loadNamespace("interserverapi"))
      self$`vlans6` <- ApiClient$new()$deserializeObj(this_object$`vlans6`, "array[character]", loadNamespace("interserverapi"))
      self$`assets` <- ServerNetworkInfoAssets$new()$fromJSON(jsonlite::toJSON(this_object$`assets`, auto_unbox = TRUE, digits = NA))
      self$`switchports` <- ServerNetworkInfoSwitchports$new()$fromJSON(jsonlite::toJSON(this_object$`switchports`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to ServerNetworkInfo and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `vlans`
      if (!is.null(input_json$`vlans`)) {
        stopifnot(is.vector(input_json$`vlans`), length(input_json$`vlans`) != 0)
        tmp <- sapply(input_json$`vlans`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ServerNetworkInfo: the required field `vlans` is missing."))
      }
      # check the required field `vlans6`
      if (!is.null(input_json$`vlans6`)) {
        stopifnot(is.vector(input_json$`vlans6`), length(input_json$`vlans6`) != 0)
        tmp <- sapply(input_json$`vlans6`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ServerNetworkInfo: the required field `vlans6` is missing."))
      }
      # check the required field `assets`
      if (!is.null(input_json$`assets`)) {
        stopifnot(R6::is.R6(input_json$`assets`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ServerNetworkInfo: the required field `assets` is missing."))
      }
      # check the required field `switchports`
      if (!is.null(input_json$`switchports`)) {
        stopifnot(R6::is.R6(input_json$`switchports`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ServerNetworkInfo: the required field `switchports` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ServerNetworkInfo
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `vlans` is null
      if (is.null(self$`vlans`)) {
        return(FALSE)
      }

      # check if the required `vlans6` is null
      if (is.null(self$`vlans6`)) {
        return(FALSE)
      }

      # check if the required `assets` is null
      if (is.null(self$`assets`)) {
        return(FALSE)
      }

      # check if the required `switchports` is null
      if (is.null(self$`switchports`)) {
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
      # check if the required `vlans` is null
      if (is.null(self$`vlans`)) {
        invalid_fields["vlans"] <- "Non-nullable required field `vlans` cannot be null."
      }

      # check if the required `vlans6` is null
      if (is.null(self$`vlans6`)) {
        invalid_fields["vlans6"] <- "Non-nullable required field `vlans6` cannot be null."
      }

      # check if the required `assets` is null
      if (is.null(self$`assets`)) {
        invalid_fields["assets"] <- "Non-nullable required field `assets` cannot be null."
      }

      # check if the required `switchports` is null
      if (is.null(self$`switchports`)) {
        invalid_fields["switchports"] <- "Non-nullable required field `switchports` cannot be null."
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
# ServerNetworkInfo$unlock()
#
## Below is an example to define the print function
# ServerNetworkInfo$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ServerNetworkInfo$lock()

