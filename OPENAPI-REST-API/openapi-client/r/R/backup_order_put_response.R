#' Create a new BackupOrderPutResponse
#'
#' @description
#' Backup Order validation response
#'
#' @docType class
#' @title BackupOrderPutResponse
#' @description BackupOrderPutResponse Class
#' @format An \code{R6Class} generator object
#' @field continue  character [optional]
#' @field errors  list(character) [optional]
#' @field serviceType  integer [optional]
#' @field serviceCost  character [optional]
#' @field originalCost  character [optional]
#' @field repeatServiceCost  character [optional]
#' @field hostname  character [optional]
#' @field password  character [optional]
#' @field coupon  character [optional]
#' @field couponCode  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
BackupOrderPutResponse <- R6::R6Class(
  "BackupOrderPutResponse",
  public = list(
    `continue` = NULL,
    `errors` = NULL,
    `serviceType` = NULL,
    `serviceCost` = NULL,
    `originalCost` = NULL,
    `repeatServiceCost` = NULL,
    `hostname` = NULL,
    `password` = NULL,
    `coupon` = NULL,
    `couponCode` = NULL,

    #' @description
    #' Initialize a new BackupOrderPutResponse class.
    #'
    #' @param continue continue
    #' @param errors errors
    #' @param serviceType serviceType
    #' @param serviceCost serviceCost
    #' @param originalCost originalCost
    #' @param repeatServiceCost repeatServiceCost
    #' @param hostname hostname
    #' @param password password
    #' @param coupon coupon
    #' @param couponCode couponCode
    #' @param ... Other optional arguments.
    initialize = function(`continue` = NULL, `errors` = NULL, `serviceType` = NULL, `serviceCost` = NULL, `originalCost` = NULL, `repeatServiceCost` = NULL, `hostname` = NULL, `password` = NULL, `coupon` = NULL, `couponCode` = NULL, ...) {
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
      if (!is.null(`serviceType`)) {
        if (!(is.numeric(`serviceType`) && length(`serviceType`) == 1)) {
          stop(paste("Error! Invalid data for `serviceType`. Must be an integer:", `serviceType`))
        }
        self$`serviceType` <- `serviceType`
      }
      if (!is.null(`serviceCost`)) {
        if (!(is.character(`serviceCost`) && length(`serviceCost`) == 1)) {
          stop(paste("Error! Invalid data for `serviceCost`. Must be a string:", `serviceCost`))
        }
        self$`serviceCost` <- `serviceCost`
      }
      if (!is.null(`originalCost`)) {
        if (!(is.character(`originalCost`) && length(`originalCost`) == 1)) {
          stop(paste("Error! Invalid data for `originalCost`. Must be a string:", `originalCost`))
        }
        self$`originalCost` <- `originalCost`
      }
      if (!is.null(`repeatServiceCost`)) {
        if (!(is.character(`repeatServiceCost`) && length(`repeatServiceCost`) == 1)) {
          stop(paste("Error! Invalid data for `repeatServiceCost`. Must be a string:", `repeatServiceCost`))
        }
        self$`repeatServiceCost` <- `repeatServiceCost`
      }
      if (!is.null(`hostname`)) {
        if (!(is.character(`hostname`) && length(`hostname`) == 1)) {
          stop(paste("Error! Invalid data for `hostname`. Must be a string:", `hostname`))
        }
        self$`hostname` <- `hostname`
      }
      if (!is.null(`password`)) {
        if (!(is.character(`password`) && length(`password`) == 1)) {
          stop(paste("Error! Invalid data for `password`. Must be a string:", `password`))
        }
        self$`password` <- `password`
      }
      if (!is.null(`coupon`)) {
        if (!(is.character(`coupon`) && length(`coupon`) == 1)) {
          stop(paste("Error! Invalid data for `coupon`. Must be a string:", `coupon`))
        }
        self$`coupon` <- `coupon`
      }
      if (!is.null(`couponCode`)) {
        if (!(is.numeric(`couponCode`) && length(`couponCode`) == 1)) {
          stop(paste("Error! Invalid data for `couponCode`. Must be an integer:", `couponCode`))
        }
        self$`couponCode` <- `couponCode`
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
    #' @return BackupOrderPutResponse as a base R list.
    #' @examples
    #' # convert array of BackupOrderPutResponse (x) to a data frame
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
    #' Convert BackupOrderPutResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      BackupOrderPutResponseObject <- list()
      if (!is.null(self$`continue`)) {
        BackupOrderPutResponseObject[["continue"]] <-
          self$`continue`
      }
      if (!is.null(self$`errors`)) {
        BackupOrderPutResponseObject[["errors"]] <-
          self$`errors`
      }
      if (!is.null(self$`serviceType`)) {
        BackupOrderPutResponseObject[["serviceType"]] <-
          self$`serviceType`
      }
      if (!is.null(self$`serviceCost`)) {
        BackupOrderPutResponseObject[["serviceCost"]] <-
          self$`serviceCost`
      }
      if (!is.null(self$`originalCost`)) {
        BackupOrderPutResponseObject[["originalCost"]] <-
          self$`originalCost`
      }
      if (!is.null(self$`repeatServiceCost`)) {
        BackupOrderPutResponseObject[["repeatServiceCost"]] <-
          self$`repeatServiceCost`
      }
      if (!is.null(self$`hostname`)) {
        BackupOrderPutResponseObject[["hostname"]] <-
          self$`hostname`
      }
      if (!is.null(self$`password`)) {
        BackupOrderPutResponseObject[["password"]] <-
          self$`password`
      }
      if (!is.null(self$`coupon`)) {
        BackupOrderPutResponseObject[["coupon"]] <-
          self$`coupon`
      }
      if (!is.null(self$`couponCode`)) {
        BackupOrderPutResponseObject[["couponCode"]] <-
          self$`couponCode`
      }
      return(BackupOrderPutResponseObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of BackupOrderPutResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of BackupOrderPutResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`continue`)) {
        self$`continue` <- this_object$`continue`
      }
      if (!is.null(this_object$`errors`)) {
        self$`errors` <- ApiClient$new()$deserializeObj(this_object$`errors`, "array[character]", loadNamespace("interserverapi"))
      }
      if (!is.null(this_object$`serviceType`)) {
        self$`serviceType` <- this_object$`serviceType`
      }
      if (!is.null(this_object$`serviceCost`)) {
        self$`serviceCost` <- this_object$`serviceCost`
      }
      if (!is.null(this_object$`originalCost`)) {
        self$`originalCost` <- this_object$`originalCost`
      }
      if (!is.null(this_object$`repeatServiceCost`)) {
        self$`repeatServiceCost` <- this_object$`repeatServiceCost`
      }
      if (!is.null(this_object$`hostname`)) {
        self$`hostname` <- this_object$`hostname`
      }
      if (!is.null(this_object$`password`)) {
        self$`password` <- this_object$`password`
      }
      if (!is.null(this_object$`coupon`)) {
        self$`coupon` <- this_object$`coupon`
      }
      if (!is.null(this_object$`couponCode`)) {
        self$`couponCode` <- this_object$`couponCode`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return BackupOrderPutResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of BackupOrderPutResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of BackupOrderPutResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`continue` <- this_object$`continue`
      self$`errors` <- ApiClient$new()$deserializeObj(this_object$`errors`, "array[character]", loadNamespace("interserverapi"))
      self$`serviceType` <- this_object$`serviceType`
      self$`serviceCost` <- this_object$`serviceCost`
      self$`originalCost` <- this_object$`originalCost`
      self$`repeatServiceCost` <- this_object$`repeatServiceCost`
      self$`hostname` <- this_object$`hostname`
      self$`password` <- this_object$`password`
      self$`coupon` <- this_object$`coupon`
      self$`couponCode` <- this_object$`couponCode`
      self
    },

    #' @description
    #' Validate JSON input with respect to BackupOrderPutResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of BackupOrderPutResponse
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
# BackupOrderPutResponse$unlock()
#
## Below is an example to define the print function
# BackupOrderPutResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# BackupOrderPutResponse$lock()

