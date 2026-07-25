#' Create a new VpsOrderPutRequest
#'
#' @description
#' request to validate a vps order
#'
#' @docType class
#' @title VpsOrderPutRequest
#' @description VpsOrderPutRequest Class
#' @format An \code{R6Class} generator object
#' @field osDistro OS Distribution character
#' @field slices Number of slices integer
#' @field vpsPlatform VPS Platform character
#' @field period Billing Period or Frequency integer
#' @field location Location integer
#' @field osVersion OS Version character
#' @field hostname The hostname to assign to the VPS character
#' @field rootpass Root password to assign to the VVPS character
#' @field controlpanel Control Panel character [optional]
#' @field coupon Coupon character [optional]
#' @field comment Order comments or notes character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
VpsOrderPutRequest <- R6::R6Class(
  "VpsOrderPutRequest",
  public = list(
    `osDistro` = NULL,
    `slices` = NULL,
    `vpsPlatform` = NULL,
    `period` = NULL,
    `location` = NULL,
    `osVersion` = NULL,
    `hostname` = NULL,
    `rootpass` = NULL,
    `controlpanel` = NULL,
    `coupon` = NULL,
    `comment` = NULL,

    #' @description
    #' Initialize a new VpsOrderPutRequest class.
    #'
    #' @param osDistro OS Distribution
    #' @param slices Number of slices
    #' @param vpsPlatform VPS Platform
    #' @param period Billing Period or Frequency
    #' @param location Location
    #' @param osVersion OS Version
    #' @param hostname The hostname to assign to the VPS
    #' @param rootpass Root password to assign to the VVPS
    #' @param controlpanel Control Panel
    #' @param coupon Coupon. Default to "".
    #' @param comment Order comments or notes. Default to "".
    #' @param ... Other optional arguments.
    initialize = function(`osDistro`, `slices`, `vpsPlatform`, `period`, `location`, `osVersion`, `hostname`, `rootpass`, `controlpanel` = NULL, `coupon` = "", `comment` = "", ...) {
      if (!missing(`osDistro`)) {
        if (!(is.character(`osDistro`) && length(`osDistro`) == 1)) {
          stop(paste("Error! Invalid data for `osDistro`. Must be a string:", `osDistro`))
        }
        self$`osDistro` <- `osDistro`
      }
      if (!missing(`slices`)) {
        if (!(is.numeric(`slices`) && length(`slices`) == 1)) {
          stop(paste("Error! Invalid data for `slices`. Must be an integer:", `slices`))
        }
        self$`slices` <- `slices`
      }
      if (!missing(`vpsPlatform`)) {
        if (!(`vpsPlatform` %in% c("kvm", "hyperv", "kvmstorage"))) {
          stop(paste("Error! \"", `vpsPlatform`, "\" cannot be assigned to `vpsPlatform`. Must be \"kvm\", \"hyperv\", \"kvmstorage\".", sep = ""))
        }
        if (!(is.character(`vpsPlatform`) && length(`vpsPlatform`) == 1)) {
          stop(paste("Error! Invalid data for `vpsPlatform`. Must be a string:", `vpsPlatform`))
        }
        self$`vpsPlatform` <- `vpsPlatform`
      }
      if (!missing(`period`)) {
        if (!(is.numeric(`period`) && length(`period`) == 1)) {
          stop(paste("Error! Invalid data for `period`. Must be an integer:", `period`))
        }
        self$`period` <- `period`
      }
      if (!missing(`location`)) {
        if (!(is.numeric(`location`) && length(`location`) == 1)) {
          stop(paste("Error! Invalid data for `location`. Must be an integer:", `location`))
        }
        self$`location` <- `location`
      }
      if (!missing(`osVersion`)) {
        if (!(is.character(`osVersion`) && length(`osVersion`) == 1)) {
          stop(paste("Error! Invalid data for `osVersion`. Must be a string:", `osVersion`))
        }
        self$`osVersion` <- `osVersion`
      }
      if (!missing(`hostname`)) {
        if (!(is.character(`hostname`) && length(`hostname`) == 1)) {
          stop(paste("Error! Invalid data for `hostname`. Must be a string:", `hostname`))
        }
        self$`hostname` <- `hostname`
      }
      if (!missing(`rootpass`)) {
        if (!(is.character(`rootpass`) && length(`rootpass`) == 1)) {
          stop(paste("Error! Invalid data for `rootpass`. Must be a string:", `rootpass`))
        }
        self$`rootpass` <- `rootpass`
      }
      if (!is.null(`controlpanel`)) {
        if (!(`controlpanel` %in% c("none", "cpanel", "da"))) {
          stop(paste("Error! \"", `controlpanel`, "\" cannot be assigned to `controlpanel`. Must be \"none\", \"cpanel\", \"da\".", sep = ""))
        }
        if (!(is.character(`controlpanel`) && length(`controlpanel`) == 1)) {
          stop(paste("Error! Invalid data for `controlpanel`. Must be a string:", `controlpanel`))
        }
        self$`controlpanel` <- `controlpanel`
      }
      if (!is.null(`coupon`)) {
        if (!(is.character(`coupon`) && length(`coupon`) == 1)) {
          stop(paste("Error! Invalid data for `coupon`. Must be a string:", `coupon`))
        }
        self$`coupon` <- `coupon`
      }
      if (!is.null(`comment`)) {
        if (!(is.character(`comment`) && length(`comment`) == 1)) {
          stop(paste("Error! Invalid data for `comment`. Must be a string:", `comment`))
        }
        self$`comment` <- `comment`
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
    #' @return VpsOrderPutRequest as a base R list.
    #' @examples
    #' # convert array of VpsOrderPutRequest (x) to a data frame
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
    #' Convert VpsOrderPutRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      VpsOrderPutRequestObject <- list()
      if (!is.null(self$`osDistro`)) {
        VpsOrderPutRequestObject[["osDistro"]] <-
          self$`osDistro`
      }
      if (!is.null(self$`slices`)) {
        VpsOrderPutRequestObject[["slices"]] <-
          self$`slices`
      }
      if (!is.null(self$`vpsPlatform`)) {
        VpsOrderPutRequestObject[["vpsPlatform"]] <-
          self$`vpsPlatform`
      }
      if (!is.null(self$`period`)) {
        VpsOrderPutRequestObject[["period"]] <-
          self$`period`
      }
      if (!is.null(self$`location`)) {
        VpsOrderPutRequestObject[["location"]] <-
          self$`location`
      }
      if (!is.null(self$`osVersion`)) {
        VpsOrderPutRequestObject[["osVersion"]] <-
          self$`osVersion`
      }
      if (!is.null(self$`hostname`)) {
        VpsOrderPutRequestObject[["hostname"]] <-
          self$`hostname`
      }
      if (!is.null(self$`rootpass`)) {
        VpsOrderPutRequestObject[["rootpass"]] <-
          self$`rootpass`
      }
      if (!is.null(self$`controlpanel`)) {
        VpsOrderPutRequestObject[["controlpanel"]] <-
          self$`controlpanel`
      }
      if (!is.null(self$`coupon`)) {
        VpsOrderPutRequestObject[["coupon"]] <-
          self$`coupon`
      }
      if (!is.null(self$`comment`)) {
        VpsOrderPutRequestObject[["comment"]] <-
          self$`comment`
      }
      return(VpsOrderPutRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of VpsOrderPutRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of VpsOrderPutRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`osDistro`)) {
        self$`osDistro` <- this_object$`osDistro`
      }
      if (!is.null(this_object$`slices`)) {
        self$`slices` <- this_object$`slices`
      }
      if (!is.null(this_object$`vpsPlatform`)) {
        if (!is.null(this_object$`vpsPlatform`) && !(this_object$`vpsPlatform` %in% c("kvm", "hyperv", "kvmstorage"))) {
          stop(paste("Error! \"", this_object$`vpsPlatform`, "\" cannot be assigned to `vpsPlatform`. Must be \"kvm\", \"hyperv\", \"kvmstorage\".", sep = ""))
        }
        self$`vpsPlatform` <- this_object$`vpsPlatform`
      }
      if (!is.null(this_object$`period`)) {
        self$`period` <- this_object$`period`
      }
      if (!is.null(this_object$`location`)) {
        self$`location` <- this_object$`location`
      }
      if (!is.null(this_object$`osVersion`)) {
        self$`osVersion` <- this_object$`osVersion`
      }
      if (!is.null(this_object$`hostname`)) {
        self$`hostname` <- this_object$`hostname`
      }
      if (!is.null(this_object$`rootpass`)) {
        self$`rootpass` <- this_object$`rootpass`
      }
      if (!is.null(this_object$`controlpanel`)) {
        if (!is.null(this_object$`controlpanel`) && !(this_object$`controlpanel` %in% c("none", "cpanel", "da"))) {
          stop(paste("Error! \"", this_object$`controlpanel`, "\" cannot be assigned to `controlpanel`. Must be \"none\", \"cpanel\", \"da\".", sep = ""))
        }
        self$`controlpanel` <- this_object$`controlpanel`
      }
      if (!is.null(this_object$`coupon`)) {
        self$`coupon` <- this_object$`coupon`
      }
      if (!is.null(this_object$`comment`)) {
        self$`comment` <- this_object$`comment`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return VpsOrderPutRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of VpsOrderPutRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of VpsOrderPutRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`osDistro` <- this_object$`osDistro`
      self$`slices` <- this_object$`slices`
      if (!is.null(this_object$`vpsPlatform`) && !(this_object$`vpsPlatform` %in% c("kvm", "hyperv", "kvmstorage"))) {
        stop(paste("Error! \"", this_object$`vpsPlatform`, "\" cannot be assigned to `vpsPlatform`. Must be \"kvm\", \"hyperv\", \"kvmstorage\".", sep = ""))
      }
      self$`vpsPlatform` <- this_object$`vpsPlatform`
      self$`period` <- this_object$`period`
      self$`location` <- this_object$`location`
      self$`osVersion` <- this_object$`osVersion`
      self$`hostname` <- this_object$`hostname`
      self$`rootpass` <- this_object$`rootpass`
      if (!is.null(this_object$`controlpanel`) && !(this_object$`controlpanel` %in% c("none", "cpanel", "da"))) {
        stop(paste("Error! \"", this_object$`controlpanel`, "\" cannot be assigned to `controlpanel`. Must be \"none\", \"cpanel\", \"da\".", sep = ""))
      }
      self$`controlpanel` <- this_object$`controlpanel`
      self$`coupon` <- this_object$`coupon`
      self$`comment` <- this_object$`comment`
      self
    },

    #' @description
    #' Validate JSON input with respect to VpsOrderPutRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `osDistro`
      if (!is.null(input_json$`osDistro`)) {
        if (!(is.character(input_json$`osDistro`) && length(input_json$`osDistro`) == 1)) {
          stop(paste("Error! Invalid data for `osDistro`. Must be a string:", input_json$`osDistro`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for VpsOrderPutRequest: the required field `osDistro` is missing."))
      }
      # check the required field `slices`
      if (!is.null(input_json$`slices`)) {
        if (!(is.numeric(input_json$`slices`) && length(input_json$`slices`) == 1)) {
          stop(paste("Error! Invalid data for `slices`. Must be an integer:", input_json$`slices`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for VpsOrderPutRequest: the required field `slices` is missing."))
      }
      # check the required field `vpsPlatform`
      if (!is.null(input_json$`vpsPlatform`)) {
        if (!(is.character(input_json$`vpsPlatform`) && length(input_json$`vpsPlatform`) == 1)) {
          stop(paste("Error! Invalid data for `vpsPlatform`. Must be a string:", input_json$`vpsPlatform`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for VpsOrderPutRequest: the required field `vpsPlatform` is missing."))
      }
      # check the required field `period`
      if (!is.null(input_json$`period`)) {
        if (!(is.numeric(input_json$`period`) && length(input_json$`period`) == 1)) {
          stop(paste("Error! Invalid data for `period`. Must be an integer:", input_json$`period`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for VpsOrderPutRequest: the required field `period` is missing."))
      }
      # check the required field `location`
      if (!is.null(input_json$`location`)) {
        if (!(is.numeric(input_json$`location`) && length(input_json$`location`) == 1)) {
          stop(paste("Error! Invalid data for `location`. Must be an integer:", input_json$`location`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for VpsOrderPutRequest: the required field `location` is missing."))
      }
      # check the required field `osVersion`
      if (!is.null(input_json$`osVersion`)) {
        if (!(is.character(input_json$`osVersion`) && length(input_json$`osVersion`) == 1)) {
          stop(paste("Error! Invalid data for `osVersion`. Must be a string:", input_json$`osVersion`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for VpsOrderPutRequest: the required field `osVersion` is missing."))
      }
      # check the required field `hostname`
      if (!is.null(input_json$`hostname`)) {
        if (!(is.character(input_json$`hostname`) && length(input_json$`hostname`) == 1)) {
          stop(paste("Error! Invalid data for `hostname`. Must be a string:", input_json$`hostname`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for VpsOrderPutRequest: the required field `hostname` is missing."))
      }
      # check the required field `rootpass`
      if (!is.null(input_json$`rootpass`)) {
        if (!(is.character(input_json$`rootpass`) && length(input_json$`rootpass`) == 1)) {
          stop(paste("Error! Invalid data for `rootpass`. Must be a string:", input_json$`rootpass`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for VpsOrderPutRequest: the required field `rootpass` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of VpsOrderPutRequest
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `osDistro` is null
      if (is.null(self$`osDistro`)) {
        return(FALSE)
      }

      # check if the required `slices` is null
      if (is.null(self$`slices`)) {
        return(FALSE)
      }

      if (self$`slices` > 32) {
        return(FALSE)
      }
      if (self$`slices` < 1) {
        return(FALSE)
      }

      # check if the required `vpsPlatform` is null
      if (is.null(self$`vpsPlatform`)) {
        return(FALSE)
      }

      # check if the required `period` is null
      if (is.null(self$`period`)) {
        return(FALSE)
      }

      if (self$`period` > 12) {
        return(FALSE)
      }
      if (self$`period` < 1) {
        return(FALSE)
      }

      # check if the required `location` is null
      if (is.null(self$`location`)) {
        return(FALSE)
      }

      if (self$`location` > 3) {
        return(FALSE)
      }
      if (self$`location` < 1) {
        return(FALSE)
      }

      # check if the required `osVersion` is null
      if (is.null(self$`osVersion`)) {
        return(FALSE)
      }

      # check if the required `hostname` is null
      if (is.null(self$`hostname`)) {
        return(FALSE)
      }

      # check if the required `rootpass` is null
      if (is.null(self$`rootpass`)) {
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
      # check if the required `osDistro` is null
      if (is.null(self$`osDistro`)) {
        invalid_fields["osDistro"] <- "Non-nullable required field `osDistro` cannot be null."
      }

      # check if the required `slices` is null
      if (is.null(self$`slices`)) {
        invalid_fields["slices"] <- "Non-nullable required field `slices` cannot be null."
      }

      if (self$`slices` > 32) {
        invalid_fields["slices"] <- "Invalid value for `slices`, must be smaller than or equal to 32."
      }
      if (self$`slices` < 1) {
        invalid_fields["slices"] <- "Invalid value for `slices`, must be bigger than or equal to 1."
      }

      # check if the required `vpsPlatform` is null
      if (is.null(self$`vpsPlatform`)) {
        invalid_fields["vpsPlatform"] <- "Non-nullable required field `vpsPlatform` cannot be null."
      }

      # check if the required `period` is null
      if (is.null(self$`period`)) {
        invalid_fields["period"] <- "Non-nullable required field `period` cannot be null."
      }

      if (self$`period` > 12) {
        invalid_fields["period"] <- "Invalid value for `period`, must be smaller than or equal to 12."
      }
      if (self$`period` < 1) {
        invalid_fields["period"] <- "Invalid value for `period`, must be bigger than or equal to 1."
      }

      # check if the required `location` is null
      if (is.null(self$`location`)) {
        invalid_fields["location"] <- "Non-nullable required field `location` cannot be null."
      }

      if (self$`location` > 3) {
        invalid_fields["location"] <- "Invalid value for `location`, must be smaller than or equal to 3."
      }
      if (self$`location` < 1) {
        invalid_fields["location"] <- "Invalid value for `location`, must be bigger than or equal to 1."
      }

      # check if the required `osVersion` is null
      if (is.null(self$`osVersion`)) {
        invalid_fields["osVersion"] <- "Non-nullable required field `osVersion` cannot be null."
      }

      # check if the required `hostname` is null
      if (is.null(self$`hostname`)) {
        invalid_fields["hostname"] <- "Non-nullable required field `hostname` cannot be null."
      }

      # check if the required `rootpass` is null
      if (is.null(self$`rootpass`)) {
        invalid_fields["rootpass"] <- "Non-nullable required field `rootpass` cannot be null."
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
# VpsOrderPutRequest$unlock()
#
## Below is an example to define the print function
# VpsOrderPutRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# VpsOrderPutRequest$lock()

