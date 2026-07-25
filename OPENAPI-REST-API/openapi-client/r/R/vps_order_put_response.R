#' Create a new VpsOrderPutResponse
#'
#' @description
#' Response from VPS order validation request
#'
#' @docType class
#' @title VpsOrderPutResponse
#' @description VpsOrderPutResponse Class
#' @format An \code{R6Class} generator object
#' @field continue  character [optional]
#' @field errors  list(\link{AnyType}) [optional]
#' @field coupon_code  integer [optional]
#' @field service_cost  integer [optional]
#' @field slice_cost  integer [optional]
#' @field service_type  integer [optional]
#' @field repeat_slice_cost  integer [optional]
#' @field original_slice_cost  integer [optional]
#' @field original_cost  integer [optional]
#' @field repeat_service_cost  integer [optional]
#' @field monthly_service_cost  integer [optional]
#' @field custid  character [optional]
#' @field os  character [optional]
#' @field slices  character [optional]
#' @field platform  character [optional]
#' @field controlpanel  character [optional]
#' @field period  integer [optional]
#' @field location  integer [optional]
#' @field version  character [optional]
#' @field hostname  character [optional]
#' @field coupon  character [optional]
#' @field rootpass  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
VpsOrderPutResponse <- R6::R6Class(
  "VpsOrderPutResponse",
  public = list(
    `continue` = NULL,
    `errors` = NULL,
    `coupon_code` = NULL,
    `service_cost` = NULL,
    `slice_cost` = NULL,
    `service_type` = NULL,
    `repeat_slice_cost` = NULL,
    `original_slice_cost` = NULL,
    `original_cost` = NULL,
    `repeat_service_cost` = NULL,
    `monthly_service_cost` = NULL,
    `custid` = NULL,
    `os` = NULL,
    `slices` = NULL,
    `platform` = NULL,
    `controlpanel` = NULL,
    `period` = NULL,
    `location` = NULL,
    `version` = NULL,
    `hostname` = NULL,
    `coupon` = NULL,
    `rootpass` = NULL,

    #' @description
    #' Initialize a new VpsOrderPutResponse class.
    #'
    #' @param continue continue
    #' @param errors errors
    #' @param coupon_code coupon_code
    #' @param service_cost service_cost
    #' @param slice_cost slice_cost
    #' @param service_type service_type
    #' @param repeat_slice_cost repeat_slice_cost
    #' @param original_slice_cost original_slice_cost
    #' @param original_cost original_cost
    #' @param repeat_service_cost repeat_service_cost
    #' @param monthly_service_cost monthly_service_cost
    #' @param custid custid
    #' @param os os
    #' @param slices slices
    #' @param platform platform
    #' @param controlpanel controlpanel
    #' @param period period
    #' @param location location
    #' @param version version
    #' @param hostname hostname
    #' @param coupon coupon
    #' @param rootpass rootpass
    #' @param ... Other optional arguments.
    initialize = function(`continue` = NULL, `errors` = NULL, `coupon_code` = NULL, `service_cost` = NULL, `slice_cost` = NULL, `service_type` = NULL, `repeat_slice_cost` = NULL, `original_slice_cost` = NULL, `original_cost` = NULL, `repeat_service_cost` = NULL, `monthly_service_cost` = NULL, `custid` = NULL, `os` = NULL, `slices` = NULL, `platform` = NULL, `controlpanel` = NULL, `period` = NULL, `location` = NULL, `version` = NULL, `hostname` = NULL, `coupon` = NULL, `rootpass` = NULL, ...) {
      if (!is.null(`continue`)) {
        if (!(is.logical(`continue`) && length(`continue`) == 1)) {
          stop(paste("Error! Invalid data for `continue`. Must be a boolean:", `continue`))
        }
        self$`continue` <- `continue`
      }
      if (!is.null(`errors`)) {
        stopifnot(is.vector(`errors`), length(`errors`) != 0)
        sapply(`errors`, function(x) stopifnot(R6::is.R6(x)))
        self$`errors` <- `errors`
      }
      if (!is.null(`coupon_code`)) {
        if (!(is.numeric(`coupon_code`) && length(`coupon_code`) == 1)) {
          stop(paste("Error! Invalid data for `coupon_code`. Must be an integer:", `coupon_code`))
        }
        self$`coupon_code` <- `coupon_code`
      }
      if (!is.null(`service_cost`)) {
        if (!(is.numeric(`service_cost`) && length(`service_cost`) == 1)) {
          stop(paste("Error! Invalid data for `service_cost`. Must be an integer:", `service_cost`))
        }
        self$`service_cost` <- `service_cost`
      }
      if (!is.null(`slice_cost`)) {
        if (!(is.numeric(`slice_cost`) && length(`slice_cost`) == 1)) {
          stop(paste("Error! Invalid data for `slice_cost`. Must be an integer:", `slice_cost`))
        }
        self$`slice_cost` <- `slice_cost`
      }
      if (!is.null(`service_type`)) {
        if (!(is.numeric(`service_type`) && length(`service_type`) == 1)) {
          stop(paste("Error! Invalid data for `service_type`. Must be an integer:", `service_type`))
        }
        self$`service_type` <- `service_type`
      }
      if (!is.null(`repeat_slice_cost`)) {
        if (!(is.numeric(`repeat_slice_cost`) && length(`repeat_slice_cost`) == 1)) {
          stop(paste("Error! Invalid data for `repeat_slice_cost`. Must be an integer:", `repeat_slice_cost`))
        }
        self$`repeat_slice_cost` <- `repeat_slice_cost`
      }
      if (!is.null(`original_slice_cost`)) {
        if (!(is.numeric(`original_slice_cost`) && length(`original_slice_cost`) == 1)) {
          stop(paste("Error! Invalid data for `original_slice_cost`. Must be an integer:", `original_slice_cost`))
        }
        self$`original_slice_cost` <- `original_slice_cost`
      }
      if (!is.null(`original_cost`)) {
        if (!(is.numeric(`original_cost`) && length(`original_cost`) == 1)) {
          stop(paste("Error! Invalid data for `original_cost`. Must be an integer:", `original_cost`))
        }
        self$`original_cost` <- `original_cost`
      }
      if (!is.null(`repeat_service_cost`)) {
        if (!(is.numeric(`repeat_service_cost`) && length(`repeat_service_cost`) == 1)) {
          stop(paste("Error! Invalid data for `repeat_service_cost`. Must be an integer:", `repeat_service_cost`))
        }
        self$`repeat_service_cost` <- `repeat_service_cost`
      }
      if (!is.null(`monthly_service_cost`)) {
        if (!(is.numeric(`monthly_service_cost`) && length(`monthly_service_cost`) == 1)) {
          stop(paste("Error! Invalid data for `monthly_service_cost`. Must be an integer:", `monthly_service_cost`))
        }
        self$`monthly_service_cost` <- `monthly_service_cost`
      }
      if (!is.null(`custid`)) {
        if (!(is.character(`custid`) && length(`custid`) == 1)) {
          stop(paste("Error! Invalid data for `custid`. Must be a string:", `custid`))
        }
        self$`custid` <- `custid`
      }
      if (!is.null(`os`)) {
        if (!(is.character(`os`) && length(`os`) == 1)) {
          stop(paste("Error! Invalid data for `os`. Must be a string:", `os`))
        }
        self$`os` <- `os`
      }
      if (!is.null(`slices`)) {
        if (!(is.character(`slices`) && length(`slices`) == 1)) {
          stop(paste("Error! Invalid data for `slices`. Must be a string:", `slices`))
        }
        self$`slices` <- `slices`
      }
      if (!is.null(`platform`)) {
        if (!(is.character(`platform`) && length(`platform`) == 1)) {
          stop(paste("Error! Invalid data for `platform`. Must be a string:", `platform`))
        }
        self$`platform` <- `platform`
      }
      if (!is.null(`controlpanel`)) {
        if (!(is.character(`controlpanel`) && length(`controlpanel`) == 1)) {
          stop(paste("Error! Invalid data for `controlpanel`. Must be a string:", `controlpanel`))
        }
        self$`controlpanel` <- `controlpanel`
      }
      if (!is.null(`period`)) {
        if (!(is.numeric(`period`) && length(`period`) == 1)) {
          stop(paste("Error! Invalid data for `period`. Must be an integer:", `period`))
        }
        self$`period` <- `period`
      }
      if (!is.null(`location`)) {
        if (!(is.numeric(`location`) && length(`location`) == 1)) {
          stop(paste("Error! Invalid data for `location`. Must be an integer:", `location`))
        }
        self$`location` <- `location`
      }
      if (!is.null(`version`)) {
        if (!(is.character(`version`) && length(`version`) == 1)) {
          stop(paste("Error! Invalid data for `version`. Must be a string:", `version`))
        }
        self$`version` <- `version`
      }
      if (!is.null(`hostname`)) {
        if (!(is.character(`hostname`) && length(`hostname`) == 1)) {
          stop(paste("Error! Invalid data for `hostname`. Must be a string:", `hostname`))
        }
        self$`hostname` <- `hostname`
      }
      if (!is.null(`coupon`)) {
        if (!(is.character(`coupon`) && length(`coupon`) == 1)) {
          stop(paste("Error! Invalid data for `coupon`. Must be a string:", `coupon`))
        }
        self$`coupon` <- `coupon`
      }
      if (!is.null(`rootpass`)) {
        if (!(is.character(`rootpass`) && length(`rootpass`) == 1)) {
          stop(paste("Error! Invalid data for `rootpass`. Must be a string:", `rootpass`))
        }
        self$`rootpass` <- `rootpass`
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
    #' @return VpsOrderPutResponse as a base R list.
    #' @examples
    #' # convert array of VpsOrderPutResponse (x) to a data frame
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
    #' Convert VpsOrderPutResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      VpsOrderPutResponseObject <- list()
      if (!is.null(self$`continue`)) {
        VpsOrderPutResponseObject[["continue"]] <-
          self$`continue`
      }
      if (!is.null(self$`errors`)) {
        VpsOrderPutResponseObject[["errors"]] <-
          self$extractSimpleType(self$`errors`)
      }
      if (!is.null(self$`coupon_code`)) {
        VpsOrderPutResponseObject[["coupon_code"]] <-
          self$`coupon_code`
      }
      if (!is.null(self$`service_cost`)) {
        VpsOrderPutResponseObject[["service_cost"]] <-
          self$`service_cost`
      }
      if (!is.null(self$`slice_cost`)) {
        VpsOrderPutResponseObject[["slice_cost"]] <-
          self$`slice_cost`
      }
      if (!is.null(self$`service_type`)) {
        VpsOrderPutResponseObject[["service_type"]] <-
          self$`service_type`
      }
      if (!is.null(self$`repeat_slice_cost`)) {
        VpsOrderPutResponseObject[["repeat_slice_cost"]] <-
          self$`repeat_slice_cost`
      }
      if (!is.null(self$`original_slice_cost`)) {
        VpsOrderPutResponseObject[["original_slice_cost"]] <-
          self$`original_slice_cost`
      }
      if (!is.null(self$`original_cost`)) {
        VpsOrderPutResponseObject[["original_cost"]] <-
          self$`original_cost`
      }
      if (!is.null(self$`repeat_service_cost`)) {
        VpsOrderPutResponseObject[["repeat_service_cost"]] <-
          self$`repeat_service_cost`
      }
      if (!is.null(self$`monthly_service_cost`)) {
        VpsOrderPutResponseObject[["monthly_service_cost"]] <-
          self$`monthly_service_cost`
      }
      if (!is.null(self$`custid`)) {
        VpsOrderPutResponseObject[["custid"]] <-
          self$`custid`
      }
      if (!is.null(self$`os`)) {
        VpsOrderPutResponseObject[["os"]] <-
          self$`os`
      }
      if (!is.null(self$`slices`)) {
        VpsOrderPutResponseObject[["slices"]] <-
          self$`slices`
      }
      if (!is.null(self$`platform`)) {
        VpsOrderPutResponseObject[["platform"]] <-
          self$`platform`
      }
      if (!is.null(self$`controlpanel`)) {
        VpsOrderPutResponseObject[["controlpanel"]] <-
          self$`controlpanel`
      }
      if (!is.null(self$`period`)) {
        VpsOrderPutResponseObject[["period"]] <-
          self$`period`
      }
      if (!is.null(self$`location`)) {
        VpsOrderPutResponseObject[["location"]] <-
          self$`location`
      }
      if (!is.null(self$`version`)) {
        VpsOrderPutResponseObject[["version"]] <-
          self$`version`
      }
      if (!is.null(self$`hostname`)) {
        VpsOrderPutResponseObject[["hostname"]] <-
          self$`hostname`
      }
      if (!is.null(self$`coupon`)) {
        VpsOrderPutResponseObject[["coupon"]] <-
          self$`coupon`
      }
      if (!is.null(self$`rootpass`)) {
        VpsOrderPutResponseObject[["rootpass"]] <-
          self$`rootpass`
      }
      return(VpsOrderPutResponseObject)
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
    #' Deserialize JSON string into an instance of VpsOrderPutResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of VpsOrderPutResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`continue`)) {
        self$`continue` <- this_object$`continue`
      }
      if (!is.null(this_object$`errors`)) {
        self$`errors` <- ApiClient$new()$deserializeObj(this_object$`errors`, "array[AnyType]", loadNamespace("interserverapi"))
      }
      if (!is.null(this_object$`coupon_code`)) {
        self$`coupon_code` <- this_object$`coupon_code`
      }
      if (!is.null(this_object$`service_cost`)) {
        self$`service_cost` <- this_object$`service_cost`
      }
      if (!is.null(this_object$`slice_cost`)) {
        self$`slice_cost` <- this_object$`slice_cost`
      }
      if (!is.null(this_object$`service_type`)) {
        self$`service_type` <- this_object$`service_type`
      }
      if (!is.null(this_object$`repeat_slice_cost`)) {
        self$`repeat_slice_cost` <- this_object$`repeat_slice_cost`
      }
      if (!is.null(this_object$`original_slice_cost`)) {
        self$`original_slice_cost` <- this_object$`original_slice_cost`
      }
      if (!is.null(this_object$`original_cost`)) {
        self$`original_cost` <- this_object$`original_cost`
      }
      if (!is.null(this_object$`repeat_service_cost`)) {
        self$`repeat_service_cost` <- this_object$`repeat_service_cost`
      }
      if (!is.null(this_object$`monthly_service_cost`)) {
        self$`monthly_service_cost` <- this_object$`monthly_service_cost`
      }
      if (!is.null(this_object$`custid`)) {
        self$`custid` <- this_object$`custid`
      }
      if (!is.null(this_object$`os`)) {
        self$`os` <- this_object$`os`
      }
      if (!is.null(this_object$`slices`)) {
        self$`slices` <- this_object$`slices`
      }
      if (!is.null(this_object$`platform`)) {
        self$`platform` <- this_object$`platform`
      }
      if (!is.null(this_object$`controlpanel`)) {
        self$`controlpanel` <- this_object$`controlpanel`
      }
      if (!is.null(this_object$`period`)) {
        self$`period` <- this_object$`period`
      }
      if (!is.null(this_object$`location`)) {
        self$`location` <- this_object$`location`
      }
      if (!is.null(this_object$`version`)) {
        self$`version` <- this_object$`version`
      }
      if (!is.null(this_object$`hostname`)) {
        self$`hostname` <- this_object$`hostname`
      }
      if (!is.null(this_object$`coupon`)) {
        self$`coupon` <- this_object$`coupon`
      }
      if (!is.null(this_object$`rootpass`)) {
        self$`rootpass` <- this_object$`rootpass`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return VpsOrderPutResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of VpsOrderPutResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of VpsOrderPutResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`continue` <- this_object$`continue`
      self$`errors` <- ApiClient$new()$deserializeObj(this_object$`errors`, "array[AnyType]", loadNamespace("interserverapi"))
      self$`coupon_code` <- this_object$`coupon_code`
      self$`service_cost` <- this_object$`service_cost`
      self$`slice_cost` <- this_object$`slice_cost`
      self$`service_type` <- this_object$`service_type`
      self$`repeat_slice_cost` <- this_object$`repeat_slice_cost`
      self$`original_slice_cost` <- this_object$`original_slice_cost`
      self$`original_cost` <- this_object$`original_cost`
      self$`repeat_service_cost` <- this_object$`repeat_service_cost`
      self$`monthly_service_cost` <- this_object$`monthly_service_cost`
      self$`custid` <- this_object$`custid`
      self$`os` <- this_object$`os`
      self$`slices` <- this_object$`slices`
      self$`platform` <- this_object$`platform`
      self$`controlpanel` <- this_object$`controlpanel`
      self$`period` <- this_object$`period`
      self$`location` <- this_object$`location`
      self$`version` <- this_object$`version`
      self$`hostname` <- this_object$`hostname`
      self$`coupon` <- this_object$`coupon`
      self$`rootpass` <- this_object$`rootpass`
      self
    },

    #' @description
    #' Validate JSON input with respect to VpsOrderPutResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of VpsOrderPutResponse
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
# VpsOrderPutResponse$unlock()
#
## Below is an example to define the print function
# VpsOrderPutResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# VpsOrderPutResponse$lock()

