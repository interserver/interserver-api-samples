#' Create a new LicenseServiceInfo
#'
#' @description
#' LicenseServiceInfo Class
#'
#' @docType class
#' @title LicenseServiceInfo
#' @description LicenseServiceInfo Class
#' @format An \code{R6Class} generator object
#' @field license_id License ID character
#' @field license_type License type character
#' @field license_currency License currency character
#' @field license_order_date License order date character
#' @field license_custid Customer ID character
#' @field license_ip License IP character
#' @field license_status License status character
#' @field license_invoice License invoice character
#' @field license_coupon License coupon character
#' @field license_hostname License hostname character [optional]
#' @field license_key License key character [optional]
#' @field license_extra Additional license information character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
LicenseServiceInfo <- R6::R6Class(
  "LicenseServiceInfo",
  public = list(
    `license_id` = NULL,
    `license_type` = NULL,
    `license_currency` = NULL,
    `license_order_date` = NULL,
    `license_custid` = NULL,
    `license_ip` = NULL,
    `license_status` = NULL,
    `license_invoice` = NULL,
    `license_coupon` = NULL,
    `license_hostname` = NULL,
    `license_key` = NULL,
    `license_extra` = NULL,

    #' @description
    #' Initialize a new LicenseServiceInfo class.
    #'
    #' @param license_id License ID
    #' @param license_type License type
    #' @param license_currency License currency
    #' @param license_order_date License order date
    #' @param license_custid Customer ID
    #' @param license_ip License IP
    #' @param license_status License status
    #' @param license_invoice License invoice
    #' @param license_coupon License coupon
    #' @param license_hostname License hostname
    #' @param license_key License key
    #' @param license_extra Additional license information
    #' @param ... Other optional arguments.
    initialize = function(`license_id`, `license_type`, `license_currency`, `license_order_date`, `license_custid`, `license_ip`, `license_status`, `license_invoice`, `license_coupon`, `license_hostname` = NULL, `license_key` = NULL, `license_extra` = NULL, ...) {
      if (!missing(`license_id`)) {
        if (!(is.character(`license_id`) && length(`license_id`) == 1)) {
          stop(paste("Error! Invalid data for `license_id`. Must be a string:", `license_id`))
        }
        self$`license_id` <- `license_id`
      }
      if (!missing(`license_type`)) {
        if (!(is.character(`license_type`) && length(`license_type`) == 1)) {
          stop(paste("Error! Invalid data for `license_type`. Must be a string:", `license_type`))
        }
        self$`license_type` <- `license_type`
      }
      if (!missing(`license_currency`)) {
        if (!(is.character(`license_currency`) && length(`license_currency`) == 1)) {
          stop(paste("Error! Invalid data for `license_currency`. Must be a string:", `license_currency`))
        }
        self$`license_currency` <- `license_currency`
      }
      if (!missing(`license_order_date`)) {
        if (!(is.character(`license_order_date`) && length(`license_order_date`) == 1)) {
          stop(paste("Error! Invalid data for `license_order_date`. Must be a string:", `license_order_date`))
        }
        self$`license_order_date` <- `license_order_date`
      }
      if (!missing(`license_custid`)) {
        if (!(is.character(`license_custid`) && length(`license_custid`) == 1)) {
          stop(paste("Error! Invalid data for `license_custid`. Must be a string:", `license_custid`))
        }
        self$`license_custid` <- `license_custid`
      }
      if (!missing(`license_ip`)) {
        if (!(is.character(`license_ip`) && length(`license_ip`) == 1)) {
          stop(paste("Error! Invalid data for `license_ip`. Must be a string:", `license_ip`))
        }
        self$`license_ip` <- `license_ip`
      }
      if (!missing(`license_status`)) {
        if (!(is.character(`license_status`) && length(`license_status`) == 1)) {
          stop(paste("Error! Invalid data for `license_status`. Must be a string:", `license_status`))
        }
        self$`license_status` <- `license_status`
      }
      if (!missing(`license_invoice`)) {
        if (!(is.character(`license_invoice`) && length(`license_invoice`) == 1)) {
          stop(paste("Error! Invalid data for `license_invoice`. Must be a string:", `license_invoice`))
        }
        self$`license_invoice` <- `license_invoice`
      }
      if (!missing(`license_coupon`)) {
        if (!(is.character(`license_coupon`) && length(`license_coupon`) == 1)) {
          stop(paste("Error! Invalid data for `license_coupon`. Must be a string:", `license_coupon`))
        }
        self$`license_coupon` <- `license_coupon`
      }
      if (!is.null(`license_hostname`)) {
        if (!(is.character(`license_hostname`) && length(`license_hostname`) == 1)) {
          stop(paste("Error! Invalid data for `license_hostname`. Must be a string:", `license_hostname`))
        }
        self$`license_hostname` <- `license_hostname`
      }
      if (!is.null(`license_key`)) {
        if (!(is.character(`license_key`) && length(`license_key`) == 1)) {
          stop(paste("Error! Invalid data for `license_key`. Must be a string:", `license_key`))
        }
        self$`license_key` <- `license_key`
      }
      if (!is.null(`license_extra`)) {
        if (!(is.character(`license_extra`) && length(`license_extra`) == 1)) {
          stop(paste("Error! Invalid data for `license_extra`. Must be a string:", `license_extra`))
        }
        self$`license_extra` <- `license_extra`
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
    #' @return LicenseServiceInfo as a base R list.
    #' @examples
    #' # convert array of LicenseServiceInfo (x) to a data frame
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
    #' Convert LicenseServiceInfo to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      LicenseServiceInfoObject <- list()
      if (!is.null(self$`license_id`)) {
        LicenseServiceInfoObject[["license_id"]] <-
          self$`license_id`
      }
      if (!is.null(self$`license_type`)) {
        LicenseServiceInfoObject[["license_type"]] <-
          self$`license_type`
      }
      if (!is.null(self$`license_currency`)) {
        LicenseServiceInfoObject[["license_currency"]] <-
          self$`license_currency`
      }
      if (!is.null(self$`license_order_date`)) {
        LicenseServiceInfoObject[["license_order_date"]] <-
          self$`license_order_date`
      }
      if (!is.null(self$`license_custid`)) {
        LicenseServiceInfoObject[["license_custid"]] <-
          self$`license_custid`
      }
      if (!is.null(self$`license_ip`)) {
        LicenseServiceInfoObject[["license_ip"]] <-
          self$`license_ip`
      }
      if (!is.null(self$`license_status`)) {
        LicenseServiceInfoObject[["license_status"]] <-
          self$`license_status`
      }
      if (!is.null(self$`license_invoice`)) {
        LicenseServiceInfoObject[["license_invoice"]] <-
          self$`license_invoice`
      }
      if (!is.null(self$`license_coupon`)) {
        LicenseServiceInfoObject[["license_coupon"]] <-
          self$`license_coupon`
      }
      if (!is.null(self$`license_hostname`)) {
        LicenseServiceInfoObject[["license_hostname"]] <-
          self$`license_hostname`
      }
      if (!is.null(self$`license_key`)) {
        LicenseServiceInfoObject[["license_key"]] <-
          self$`license_key`
      }
      if (!is.null(self$`license_extra`)) {
        LicenseServiceInfoObject[["license_extra"]] <-
          self$`license_extra`
      }
      return(LicenseServiceInfoObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of LicenseServiceInfo
    #'
    #' @param input_json the JSON input
    #' @return the instance of LicenseServiceInfo
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`license_id`)) {
        self$`license_id` <- this_object$`license_id`
      }
      if (!is.null(this_object$`license_type`)) {
        self$`license_type` <- this_object$`license_type`
      }
      if (!is.null(this_object$`license_currency`)) {
        self$`license_currency` <- this_object$`license_currency`
      }
      if (!is.null(this_object$`license_order_date`)) {
        self$`license_order_date` <- this_object$`license_order_date`
      }
      if (!is.null(this_object$`license_custid`)) {
        self$`license_custid` <- this_object$`license_custid`
      }
      if (!is.null(this_object$`license_ip`)) {
        self$`license_ip` <- this_object$`license_ip`
      }
      if (!is.null(this_object$`license_status`)) {
        self$`license_status` <- this_object$`license_status`
      }
      if (!is.null(this_object$`license_invoice`)) {
        self$`license_invoice` <- this_object$`license_invoice`
      }
      if (!is.null(this_object$`license_coupon`)) {
        self$`license_coupon` <- this_object$`license_coupon`
      }
      if (!is.null(this_object$`license_hostname`)) {
        self$`license_hostname` <- this_object$`license_hostname`
      }
      if (!is.null(this_object$`license_key`)) {
        self$`license_key` <- this_object$`license_key`
      }
      if (!is.null(this_object$`license_extra`)) {
        self$`license_extra` <- this_object$`license_extra`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return LicenseServiceInfo in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of LicenseServiceInfo
    #'
    #' @param input_json the JSON input
    #' @return the instance of LicenseServiceInfo
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`license_id` <- this_object$`license_id`
      self$`license_type` <- this_object$`license_type`
      self$`license_currency` <- this_object$`license_currency`
      self$`license_order_date` <- this_object$`license_order_date`
      self$`license_custid` <- this_object$`license_custid`
      self$`license_ip` <- this_object$`license_ip`
      self$`license_status` <- this_object$`license_status`
      self$`license_invoice` <- this_object$`license_invoice`
      self$`license_coupon` <- this_object$`license_coupon`
      self$`license_hostname` <- this_object$`license_hostname`
      self$`license_key` <- this_object$`license_key`
      self$`license_extra` <- this_object$`license_extra`
      self
    },

    #' @description
    #' Validate JSON input with respect to LicenseServiceInfo and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `license_id`
      if (!is.null(input_json$`license_id`)) {
        if (!(is.character(input_json$`license_id`) && length(input_json$`license_id`) == 1)) {
          stop(paste("Error! Invalid data for `license_id`. Must be a string:", input_json$`license_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for LicenseServiceInfo: the required field `license_id` is missing."))
      }
      # check the required field `license_type`
      if (!is.null(input_json$`license_type`)) {
        if (!(is.character(input_json$`license_type`) && length(input_json$`license_type`) == 1)) {
          stop(paste("Error! Invalid data for `license_type`. Must be a string:", input_json$`license_type`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for LicenseServiceInfo: the required field `license_type` is missing."))
      }
      # check the required field `license_currency`
      if (!is.null(input_json$`license_currency`)) {
        if (!(is.character(input_json$`license_currency`) && length(input_json$`license_currency`) == 1)) {
          stop(paste("Error! Invalid data for `license_currency`. Must be a string:", input_json$`license_currency`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for LicenseServiceInfo: the required field `license_currency` is missing."))
      }
      # check the required field `license_order_date`
      if (!is.null(input_json$`license_order_date`)) {
        if (!(is.character(input_json$`license_order_date`) && length(input_json$`license_order_date`) == 1)) {
          stop(paste("Error! Invalid data for `license_order_date`. Must be a string:", input_json$`license_order_date`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for LicenseServiceInfo: the required field `license_order_date` is missing."))
      }
      # check the required field `license_custid`
      if (!is.null(input_json$`license_custid`)) {
        if (!(is.character(input_json$`license_custid`) && length(input_json$`license_custid`) == 1)) {
          stop(paste("Error! Invalid data for `license_custid`. Must be a string:", input_json$`license_custid`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for LicenseServiceInfo: the required field `license_custid` is missing."))
      }
      # check the required field `license_ip`
      if (!is.null(input_json$`license_ip`)) {
        if (!(is.character(input_json$`license_ip`) && length(input_json$`license_ip`) == 1)) {
          stop(paste("Error! Invalid data for `license_ip`. Must be a string:", input_json$`license_ip`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for LicenseServiceInfo: the required field `license_ip` is missing."))
      }
      # check the required field `license_status`
      if (!is.null(input_json$`license_status`)) {
        if (!(is.character(input_json$`license_status`) && length(input_json$`license_status`) == 1)) {
          stop(paste("Error! Invalid data for `license_status`. Must be a string:", input_json$`license_status`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for LicenseServiceInfo: the required field `license_status` is missing."))
      }
      # check the required field `license_invoice`
      if (!is.null(input_json$`license_invoice`)) {
        if (!(is.character(input_json$`license_invoice`) && length(input_json$`license_invoice`) == 1)) {
          stop(paste("Error! Invalid data for `license_invoice`. Must be a string:", input_json$`license_invoice`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for LicenseServiceInfo: the required field `license_invoice` is missing."))
      }
      # check the required field `license_coupon`
      if (!is.null(input_json$`license_coupon`)) {
        if (!(is.character(input_json$`license_coupon`) && length(input_json$`license_coupon`) == 1)) {
          stop(paste("Error! Invalid data for `license_coupon`. Must be a string:", input_json$`license_coupon`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for LicenseServiceInfo: the required field `license_coupon` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of LicenseServiceInfo
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `license_id` is null
      if (is.null(self$`license_id`)) {
        return(FALSE)
      }

      # check if the required `license_type` is null
      if (is.null(self$`license_type`)) {
        return(FALSE)
      }

      # check if the required `license_currency` is null
      if (is.null(self$`license_currency`)) {
        return(FALSE)
      }

      # check if the required `license_order_date` is null
      if (is.null(self$`license_order_date`)) {
        return(FALSE)
      }

      # check if the required `license_custid` is null
      if (is.null(self$`license_custid`)) {
        return(FALSE)
      }

      # check if the required `license_ip` is null
      if (is.null(self$`license_ip`)) {
        return(FALSE)
      }

      # check if the required `license_status` is null
      if (is.null(self$`license_status`)) {
        return(FALSE)
      }

      # check if the required `license_invoice` is null
      if (is.null(self$`license_invoice`)) {
        return(FALSE)
      }

      # check if the required `license_coupon` is null
      if (is.null(self$`license_coupon`)) {
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
      # check if the required `license_id` is null
      if (is.null(self$`license_id`)) {
        invalid_fields["license_id"] <- "Non-nullable required field `license_id` cannot be null."
      }

      # check if the required `license_type` is null
      if (is.null(self$`license_type`)) {
        invalid_fields["license_type"] <- "Non-nullable required field `license_type` cannot be null."
      }

      # check if the required `license_currency` is null
      if (is.null(self$`license_currency`)) {
        invalid_fields["license_currency"] <- "Non-nullable required field `license_currency` cannot be null."
      }

      # check if the required `license_order_date` is null
      if (is.null(self$`license_order_date`)) {
        invalid_fields["license_order_date"] <- "Non-nullable required field `license_order_date` cannot be null."
      }

      # check if the required `license_custid` is null
      if (is.null(self$`license_custid`)) {
        invalid_fields["license_custid"] <- "Non-nullable required field `license_custid` cannot be null."
      }

      # check if the required `license_ip` is null
      if (is.null(self$`license_ip`)) {
        invalid_fields["license_ip"] <- "Non-nullable required field `license_ip` cannot be null."
      }

      # check if the required `license_status` is null
      if (is.null(self$`license_status`)) {
        invalid_fields["license_status"] <- "Non-nullable required field `license_status` cannot be null."
      }

      # check if the required `license_invoice` is null
      if (is.null(self$`license_invoice`)) {
        invalid_fields["license_invoice"] <- "Non-nullable required field `license_invoice` cannot be null."
      }

      # check if the required `license_coupon` is null
      if (is.null(self$`license_coupon`)) {
        invalid_fields["license_coupon"] <- "Non-nullable required field `license_coupon` cannot be null."
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
# LicenseServiceInfo$unlock()
#
## Below is an example to define the print function
# LicenseServiceInfo$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# LicenseServiceInfo$lock()

