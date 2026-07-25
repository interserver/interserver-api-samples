#' Create a new BackupOrderPostResponse
#'
#' @description
#' Backup Order Placement Response
#'
#' @docType class
#' @title BackupOrderPostResponse
#' @description BackupOrderPostResponse Class
#' @format An \code{R6Class} generator object
#' @field continue  character [optional]
#' @field errors  list(character) [optional]
#' @field total_cost  character [optional]
#' @field iid  character [optional]
#' @field iids  list(character) [optional]
#' @field real_iids  list(character) [optional]
#' @field serviceId  integer [optional]
#' @field invoice_description  character [optional]
#' @field cj_params  \link{BackupOrderPostResponseCjParams} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
BackupOrderPostResponse <- R6::R6Class(
  "BackupOrderPostResponse",
  public = list(
    `continue` = NULL,
    `errors` = NULL,
    `total_cost` = NULL,
    `iid` = NULL,
    `iids` = NULL,
    `real_iids` = NULL,
    `serviceId` = NULL,
    `invoice_description` = NULL,
    `cj_params` = NULL,

    #' @description
    #' Initialize a new BackupOrderPostResponse class.
    #'
    #' @param continue continue
    #' @param errors errors
    #' @param total_cost total_cost
    #' @param iid iid
    #' @param iids iids
    #' @param real_iids real_iids
    #' @param serviceId serviceId
    #' @param invoice_description invoice_description
    #' @param cj_params cj_params
    #' @param ... Other optional arguments.
    initialize = function(`continue` = NULL, `errors` = NULL, `total_cost` = NULL, `iid` = NULL, `iids` = NULL, `real_iids` = NULL, `serviceId` = NULL, `invoice_description` = NULL, `cj_params` = NULL, ...) {
      if (!is.null(`continue`)) {
        if (!(is.logical(`continue`) && length(`continue`) == 1)) {
          stop(paste("Error! Invalid data for `continue`. Must be a boolean:", `continue`))
        }
        self$`continue` <- `continue`
      }
      if (!is.null(`errors`)) {
        stopifnot(is.vector(`errors`), length(`errors`) != 0)
        sapply(`errors`, function(x) stopifnot(is.character(x)))
        self$`errors` <- `errors`
      }
      if (!is.null(`total_cost`)) {
        if (!(is.character(`total_cost`) && length(`total_cost`) == 1)) {
          stop(paste("Error! Invalid data for `total_cost`. Must be a string:", `total_cost`))
        }
        self$`total_cost` <- `total_cost`
      }
      if (!is.null(`iid`)) {
        if (!(is.character(`iid`) && length(`iid`) == 1)) {
          stop(paste("Error! Invalid data for `iid`. Must be a string:", `iid`))
        }
        self$`iid` <- `iid`
      }
      if (!is.null(`iids`)) {
        stopifnot(is.vector(`iids`), length(`iids`) != 0)
        sapply(`iids`, function(x) stopifnot(is.character(x)))
        self$`iids` <- `iids`
      }
      if (!is.null(`real_iids`)) {
        stopifnot(is.vector(`real_iids`), length(`real_iids`) != 0)
        sapply(`real_iids`, function(x) stopifnot(is.character(x)))
        self$`real_iids` <- `real_iids`
      }
      if (!is.null(`serviceId`)) {
        if (!(is.numeric(`serviceId`) && length(`serviceId`) == 1)) {
          stop(paste("Error! Invalid data for `serviceId`. Must be an integer:", `serviceId`))
        }
        self$`serviceId` <- `serviceId`
      }
      if (!is.null(`invoice_description`)) {
        if (!(is.character(`invoice_description`) && length(`invoice_description`) == 1)) {
          stop(paste("Error! Invalid data for `invoice_description`. Must be a string:", `invoice_description`))
        }
        self$`invoice_description` <- `invoice_description`
      }
      if (!is.null(`cj_params`)) {
        stopifnot(R6::is.R6(`cj_params`))
        self$`cj_params` <- `cj_params`
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
    #' @return BackupOrderPostResponse as a base R list.
    #' @examples
    #' # convert array of BackupOrderPostResponse (x) to a data frame
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
    #' Convert BackupOrderPostResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      BackupOrderPostResponseObject <- list()
      if (!is.null(self$`continue`)) {
        BackupOrderPostResponseObject[["continue"]] <-
          self$`continue`
      }
      if (!is.null(self$`errors`)) {
        BackupOrderPostResponseObject[["errors"]] <-
          self$`errors`
      }
      if (!is.null(self$`total_cost`)) {
        BackupOrderPostResponseObject[["total_cost"]] <-
          self$`total_cost`
      }
      if (!is.null(self$`iid`)) {
        BackupOrderPostResponseObject[["iid"]] <-
          self$`iid`
      }
      if (!is.null(self$`iids`)) {
        BackupOrderPostResponseObject[["iids"]] <-
          self$`iids`
      }
      if (!is.null(self$`real_iids`)) {
        BackupOrderPostResponseObject[["real_iids"]] <-
          self$`real_iids`
      }
      if (!is.null(self$`serviceId`)) {
        BackupOrderPostResponseObject[["serviceId"]] <-
          self$`serviceId`
      }
      if (!is.null(self$`invoice_description`)) {
        BackupOrderPostResponseObject[["invoice_description"]] <-
          self$`invoice_description`
      }
      if (!is.null(self$`cj_params`)) {
        BackupOrderPostResponseObject[["cj_params"]] <-
          self$extractSimpleType(self$`cj_params`)
      }
      return(BackupOrderPostResponseObject)
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
    #' Deserialize JSON string into an instance of BackupOrderPostResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of BackupOrderPostResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`continue`)) {
        self$`continue` <- this_object$`continue`
      }
      if (!is.null(this_object$`errors`)) {
        self$`errors` <- ApiClient$new()$deserializeObj(this_object$`errors`, "array[character]", loadNamespace("interserverapi"))
      }
      if (!is.null(this_object$`total_cost`)) {
        self$`total_cost` <- this_object$`total_cost`
      }
      if (!is.null(this_object$`iid`)) {
        self$`iid` <- this_object$`iid`
      }
      if (!is.null(this_object$`iids`)) {
        self$`iids` <- ApiClient$new()$deserializeObj(this_object$`iids`, "array[character]", loadNamespace("interserverapi"))
      }
      if (!is.null(this_object$`real_iids`)) {
        self$`real_iids` <- ApiClient$new()$deserializeObj(this_object$`real_iids`, "array[character]", loadNamespace("interserverapi"))
      }
      if (!is.null(this_object$`serviceId`)) {
        self$`serviceId` <- this_object$`serviceId`
      }
      if (!is.null(this_object$`invoice_description`)) {
        self$`invoice_description` <- this_object$`invoice_description`
      }
      if (!is.null(this_object$`cj_params`)) {
        `cj_params_object` <- BackupOrderPostResponseCjParams$new()
        `cj_params_object`$fromJSON(jsonlite::toJSON(this_object$`cj_params`, auto_unbox = TRUE, digits = NA))
        self$`cj_params` <- `cj_params_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return BackupOrderPostResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of BackupOrderPostResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of BackupOrderPostResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`continue` <- this_object$`continue`
      self$`errors` <- ApiClient$new()$deserializeObj(this_object$`errors`, "array[character]", loadNamespace("interserverapi"))
      self$`total_cost` <- this_object$`total_cost`
      self$`iid` <- this_object$`iid`
      self$`iids` <- ApiClient$new()$deserializeObj(this_object$`iids`, "array[character]", loadNamespace("interserverapi"))
      self$`real_iids` <- ApiClient$new()$deserializeObj(this_object$`real_iids`, "array[character]", loadNamespace("interserverapi"))
      self$`serviceId` <- this_object$`serviceId`
      self$`invoice_description` <- this_object$`invoice_description`
      self$`cj_params` <- BackupOrderPostResponseCjParams$new()$fromJSON(jsonlite::toJSON(this_object$`cj_params`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to BackupOrderPostResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of BackupOrderPostResponse
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
# BackupOrderPostResponse$unlock()
#
## Below is an example to define the print function
# BackupOrderPostResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# BackupOrderPostResponse$lock()

