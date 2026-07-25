#' Create a new SslOrderRequest
#'
#' @description
#' Request body to validate (putSsl) or place (addSsl) an SSL certificate order. Contact fields default from the account if omitted. Package ids come from getNewSsl.serviceTypes.
#'
#' @docType class
#' @title SslOrderRequest
#' @description SslOrderRequest Class
#' @format An \code{R6Class} generator object
#' @field ssl SSL package service type id from getNewSsl.serviceTypes. integer
#' @field hostname Domain the certificate is issued for. Wildcard certs require *.domain.com format. character
#' @field approver_email Domain-control approver email (required for all SSL orders). character
#' @field frequency Billing frequency in months (12, 24, or 36). integer [optional]
#' @field coupon Coupon code. character [optional]
#' @field csr_type Whether the CSR is server-generated or customer-provided. character [optional]
#' @field csr PEM-encoded CSR (>= 2048-bit) when csr_type=provided. character [optional]
#' @field firstname Contact first name (defaults from account). character [optional]
#' @field lastname Contact last name (defaults from account). character [optional]
#' @field email Contact email (defaults from account). character [optional]
#' @field address Contact address (defaults from account). character [optional]
#' @field city Contact city (defaults from account). character [optional]
#' @field state Contact state/region (defaults from account). character [optional]
#' @field zip Contact postal code (defaults from account). character [optional]
#' @field country Contact country (defaults from account). character [optional]
#' @field phone Contact phone (defaults from account). character [optional]
#' @field company Contact company/organization (defaults from account). character [optional]
#' @field department Contact department (defaults to Administration). character [optional]
#' @field agency EV certificate incorporating agency (only for EV packages). character [optional]
#' @field business_category EV certificate business category (only for EV packages). character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SslOrderRequest <- R6::R6Class(
  "SslOrderRequest",
  public = list(
    `ssl` = NULL,
    `hostname` = NULL,
    `approver_email` = NULL,
    `frequency` = NULL,
    `coupon` = NULL,
    `csr_type` = NULL,
    `csr` = NULL,
    `firstname` = NULL,
    `lastname` = NULL,
    `email` = NULL,
    `address` = NULL,
    `city` = NULL,
    `state` = NULL,
    `zip` = NULL,
    `country` = NULL,
    `phone` = NULL,
    `company` = NULL,
    `department` = NULL,
    `agency` = NULL,
    `business_category` = NULL,

    #' @description
    #' Initialize a new SslOrderRequest class.
    #'
    #' @param ssl SSL package service type id from getNewSsl.serviceTypes.
    #' @param hostname Domain the certificate is issued for. Wildcard certs require *.domain.com format.
    #' @param approver_email Domain-control approver email (required for all SSL orders).
    #' @param frequency Billing frequency in months (12, 24, or 36).. Default to 12.
    #' @param coupon Coupon code.. Default to "".
    #' @param csr_type Whether the CSR is server-generated or customer-provided.. Default to "generated".
    #' @param csr PEM-encoded CSR (>= 2048-bit) when csr_type=provided.. Default to "".
    #' @param firstname Contact first name (defaults from account).
    #' @param lastname Contact last name (defaults from account).
    #' @param email Contact email (defaults from account).
    #' @param address Contact address (defaults from account).
    #' @param city Contact city (defaults from account).
    #' @param state Contact state/region (defaults from account).
    #' @param zip Contact postal code (defaults from account).
    #' @param country Contact country (defaults from account).
    #' @param phone Contact phone (defaults from account).
    #' @param company Contact company/organization (defaults from account).
    #' @param department Contact department (defaults to Administration).. Default to "Administration".
    #' @param agency EV certificate incorporating agency (only for EV packages).
    #' @param business_category EV certificate business category (only for EV packages).
    #' @param ... Other optional arguments.
    initialize = function(`ssl`, `hostname`, `approver_email`, `frequency` = 12, `coupon` = "", `csr_type` = "generated", `csr` = "", `firstname` = NULL, `lastname` = NULL, `email` = NULL, `address` = NULL, `city` = NULL, `state` = NULL, `zip` = NULL, `country` = NULL, `phone` = NULL, `company` = NULL, `department` = "Administration", `agency` = NULL, `business_category` = NULL, ...) {
      if (!missing(`ssl`)) {
        if (!(is.numeric(`ssl`) && length(`ssl`) == 1)) {
          stop(paste("Error! Invalid data for `ssl`. Must be an integer:", `ssl`))
        }
        self$`ssl` <- `ssl`
      }
      if (!missing(`hostname`)) {
        if (!(is.character(`hostname`) && length(`hostname`) == 1)) {
          stop(paste("Error! Invalid data for `hostname`. Must be a string:", `hostname`))
        }
        self$`hostname` <- `hostname`
      }
      if (!missing(`approver_email`)) {
        if (!(is.character(`approver_email`) && length(`approver_email`) == 1)) {
          stop(paste("Error! Invalid data for `approver_email`. Must be a string:", `approver_email`))
        }
        self$`approver_email` <- `approver_email`
      }
      if (!is.null(`frequency`)) {
        if (!(is.numeric(`frequency`) && length(`frequency`) == 1)) {
          stop(paste("Error! Invalid data for `frequency`. Must be an integer:", `frequency`))
        }
        self$`frequency` <- `frequency`
      }
      if (!is.null(`coupon`)) {
        if (!(is.character(`coupon`) && length(`coupon`) == 1)) {
          stop(paste("Error! Invalid data for `coupon`. Must be a string:", `coupon`))
        }
        self$`coupon` <- `coupon`
      }
      if (!is.null(`csr_type`)) {
        if (!(`csr_type` %in% c("generated", "provided"))) {
          stop(paste("Error! \"", `csr_type`, "\" cannot be assigned to `csr_type`. Must be \"generated\", \"provided\".", sep = ""))
        }
        if (!(is.character(`csr_type`) && length(`csr_type`) == 1)) {
          stop(paste("Error! Invalid data for `csr_type`. Must be a string:", `csr_type`))
        }
        self$`csr_type` <- `csr_type`
      }
      if (!is.null(`csr`)) {
        if (!(is.character(`csr`) && length(`csr`) == 1)) {
          stop(paste("Error! Invalid data for `csr`. Must be a string:", `csr`))
        }
        self$`csr` <- `csr`
      }
      if (!is.null(`firstname`)) {
        if (!(is.character(`firstname`) && length(`firstname`) == 1)) {
          stop(paste("Error! Invalid data for `firstname`. Must be a string:", `firstname`))
        }
        self$`firstname` <- `firstname`
      }
      if (!is.null(`lastname`)) {
        if (!(is.character(`lastname`) && length(`lastname`) == 1)) {
          stop(paste("Error! Invalid data for `lastname`. Must be a string:", `lastname`))
        }
        self$`lastname` <- `lastname`
      }
      if (!is.null(`email`)) {
        if (!(is.character(`email`) && length(`email`) == 1)) {
          stop(paste("Error! Invalid data for `email`. Must be a string:", `email`))
        }
        self$`email` <- `email`
      }
      if (!is.null(`address`)) {
        if (!(is.character(`address`) && length(`address`) == 1)) {
          stop(paste("Error! Invalid data for `address`. Must be a string:", `address`))
        }
        self$`address` <- `address`
      }
      if (!is.null(`city`)) {
        if (!(is.character(`city`) && length(`city`) == 1)) {
          stop(paste("Error! Invalid data for `city`. Must be a string:", `city`))
        }
        self$`city` <- `city`
      }
      if (!is.null(`state`)) {
        if (!(is.character(`state`) && length(`state`) == 1)) {
          stop(paste("Error! Invalid data for `state`. Must be a string:", `state`))
        }
        self$`state` <- `state`
      }
      if (!is.null(`zip`)) {
        if (!(is.character(`zip`) && length(`zip`) == 1)) {
          stop(paste("Error! Invalid data for `zip`. Must be a string:", `zip`))
        }
        self$`zip` <- `zip`
      }
      if (!is.null(`country`)) {
        if (!(is.character(`country`) && length(`country`) == 1)) {
          stop(paste("Error! Invalid data for `country`. Must be a string:", `country`))
        }
        self$`country` <- `country`
      }
      if (!is.null(`phone`)) {
        if (!(is.character(`phone`) && length(`phone`) == 1)) {
          stop(paste("Error! Invalid data for `phone`. Must be a string:", `phone`))
        }
        self$`phone` <- `phone`
      }
      if (!is.null(`company`)) {
        if (!(is.character(`company`) && length(`company`) == 1)) {
          stop(paste("Error! Invalid data for `company`. Must be a string:", `company`))
        }
        self$`company` <- `company`
      }
      if (!is.null(`department`)) {
        if (!(is.character(`department`) && length(`department`) == 1)) {
          stop(paste("Error! Invalid data for `department`. Must be a string:", `department`))
        }
        self$`department` <- `department`
      }
      if (!is.null(`agency`)) {
        if (!(is.character(`agency`) && length(`agency`) == 1)) {
          stop(paste("Error! Invalid data for `agency`. Must be a string:", `agency`))
        }
        self$`agency` <- `agency`
      }
      if (!is.null(`business_category`)) {
        if (!(is.character(`business_category`) && length(`business_category`) == 1)) {
          stop(paste("Error! Invalid data for `business_category`. Must be a string:", `business_category`))
        }
        self$`business_category` <- `business_category`
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
    #' @return SslOrderRequest as a base R list.
    #' @examples
    #' # convert array of SslOrderRequest (x) to a data frame
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
    #' Convert SslOrderRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      SslOrderRequestObject <- list()
      if (!is.null(self$`ssl`)) {
        SslOrderRequestObject[["ssl"]] <-
          self$`ssl`
      }
      if (!is.null(self$`hostname`)) {
        SslOrderRequestObject[["hostname"]] <-
          self$`hostname`
      }
      if (!is.null(self$`approver_email`)) {
        SslOrderRequestObject[["approver_email"]] <-
          self$`approver_email`
      }
      if (!is.null(self$`frequency`)) {
        SslOrderRequestObject[["frequency"]] <-
          self$`frequency`
      }
      if (!is.null(self$`coupon`)) {
        SslOrderRequestObject[["coupon"]] <-
          self$`coupon`
      }
      if (!is.null(self$`csr_type`)) {
        SslOrderRequestObject[["csr_type"]] <-
          self$`csr_type`
      }
      if (!is.null(self$`csr`)) {
        SslOrderRequestObject[["csr"]] <-
          self$`csr`
      }
      if (!is.null(self$`firstname`)) {
        SslOrderRequestObject[["firstname"]] <-
          self$`firstname`
      }
      if (!is.null(self$`lastname`)) {
        SslOrderRequestObject[["lastname"]] <-
          self$`lastname`
      }
      if (!is.null(self$`email`)) {
        SslOrderRequestObject[["email"]] <-
          self$`email`
      }
      if (!is.null(self$`address`)) {
        SslOrderRequestObject[["address"]] <-
          self$`address`
      }
      if (!is.null(self$`city`)) {
        SslOrderRequestObject[["city"]] <-
          self$`city`
      }
      if (!is.null(self$`state`)) {
        SslOrderRequestObject[["state"]] <-
          self$`state`
      }
      if (!is.null(self$`zip`)) {
        SslOrderRequestObject[["zip"]] <-
          self$`zip`
      }
      if (!is.null(self$`country`)) {
        SslOrderRequestObject[["country"]] <-
          self$`country`
      }
      if (!is.null(self$`phone`)) {
        SslOrderRequestObject[["phone"]] <-
          self$`phone`
      }
      if (!is.null(self$`company`)) {
        SslOrderRequestObject[["company"]] <-
          self$`company`
      }
      if (!is.null(self$`department`)) {
        SslOrderRequestObject[["department"]] <-
          self$`department`
      }
      if (!is.null(self$`agency`)) {
        SslOrderRequestObject[["agency"]] <-
          self$`agency`
      }
      if (!is.null(self$`business_category`)) {
        SslOrderRequestObject[["business_category"]] <-
          self$`business_category`
      }
      return(SslOrderRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of SslOrderRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of SslOrderRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`ssl`)) {
        self$`ssl` <- this_object$`ssl`
      }
      if (!is.null(this_object$`hostname`)) {
        self$`hostname` <- this_object$`hostname`
      }
      if (!is.null(this_object$`approver_email`)) {
        self$`approver_email` <- this_object$`approver_email`
      }
      if (!is.null(this_object$`frequency`)) {
        self$`frequency` <- this_object$`frequency`
      }
      if (!is.null(this_object$`coupon`)) {
        self$`coupon` <- this_object$`coupon`
      }
      if (!is.null(this_object$`csr_type`)) {
        if (!is.null(this_object$`csr_type`) && !(this_object$`csr_type` %in% c("generated", "provided"))) {
          stop(paste("Error! \"", this_object$`csr_type`, "\" cannot be assigned to `csr_type`. Must be \"generated\", \"provided\".", sep = ""))
        }
        self$`csr_type` <- this_object$`csr_type`
      }
      if (!is.null(this_object$`csr`)) {
        self$`csr` <- this_object$`csr`
      }
      if (!is.null(this_object$`firstname`)) {
        self$`firstname` <- this_object$`firstname`
      }
      if (!is.null(this_object$`lastname`)) {
        self$`lastname` <- this_object$`lastname`
      }
      if (!is.null(this_object$`email`)) {
        self$`email` <- this_object$`email`
      }
      if (!is.null(this_object$`address`)) {
        self$`address` <- this_object$`address`
      }
      if (!is.null(this_object$`city`)) {
        self$`city` <- this_object$`city`
      }
      if (!is.null(this_object$`state`)) {
        self$`state` <- this_object$`state`
      }
      if (!is.null(this_object$`zip`)) {
        self$`zip` <- this_object$`zip`
      }
      if (!is.null(this_object$`country`)) {
        self$`country` <- this_object$`country`
      }
      if (!is.null(this_object$`phone`)) {
        self$`phone` <- this_object$`phone`
      }
      if (!is.null(this_object$`company`)) {
        self$`company` <- this_object$`company`
      }
      if (!is.null(this_object$`department`)) {
        self$`department` <- this_object$`department`
      }
      if (!is.null(this_object$`agency`)) {
        self$`agency` <- this_object$`agency`
      }
      if (!is.null(this_object$`business_category`)) {
        self$`business_category` <- this_object$`business_category`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return SslOrderRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of SslOrderRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of SslOrderRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`ssl` <- this_object$`ssl`
      self$`hostname` <- this_object$`hostname`
      self$`approver_email` <- this_object$`approver_email`
      self$`frequency` <- this_object$`frequency`
      self$`coupon` <- this_object$`coupon`
      if (!is.null(this_object$`csr_type`) && !(this_object$`csr_type` %in% c("generated", "provided"))) {
        stop(paste("Error! \"", this_object$`csr_type`, "\" cannot be assigned to `csr_type`. Must be \"generated\", \"provided\".", sep = ""))
      }
      self$`csr_type` <- this_object$`csr_type`
      self$`csr` <- this_object$`csr`
      self$`firstname` <- this_object$`firstname`
      self$`lastname` <- this_object$`lastname`
      self$`email` <- this_object$`email`
      self$`address` <- this_object$`address`
      self$`city` <- this_object$`city`
      self$`state` <- this_object$`state`
      self$`zip` <- this_object$`zip`
      self$`country` <- this_object$`country`
      self$`phone` <- this_object$`phone`
      self$`company` <- this_object$`company`
      self$`department` <- this_object$`department`
      self$`agency` <- this_object$`agency`
      self$`business_category` <- this_object$`business_category`
      self
    },

    #' @description
    #' Validate JSON input with respect to SslOrderRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `ssl`
      if (!is.null(input_json$`ssl`)) {
        if (!(is.numeric(input_json$`ssl`) && length(input_json$`ssl`) == 1)) {
          stop(paste("Error! Invalid data for `ssl`. Must be an integer:", input_json$`ssl`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SslOrderRequest: the required field `ssl` is missing."))
      }
      # check the required field `hostname`
      if (!is.null(input_json$`hostname`)) {
        if (!(is.character(input_json$`hostname`) && length(input_json$`hostname`) == 1)) {
          stop(paste("Error! Invalid data for `hostname`. Must be a string:", input_json$`hostname`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SslOrderRequest: the required field `hostname` is missing."))
      }
      # check the required field `approver_email`
      if (!is.null(input_json$`approver_email`)) {
        if (!(is.character(input_json$`approver_email`) && length(input_json$`approver_email`) == 1)) {
          stop(paste("Error! Invalid data for `approver_email`. Must be a string:", input_json$`approver_email`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SslOrderRequest: the required field `approver_email` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of SslOrderRequest
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `ssl` is null
      if (is.null(self$`ssl`)) {
        return(FALSE)
      }

      # check if the required `hostname` is null
      if (is.null(self$`hostname`)) {
        return(FALSE)
      }

      # check if the required `approver_email` is null
      if (is.null(self$`approver_email`)) {
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
      # check if the required `ssl` is null
      if (is.null(self$`ssl`)) {
        invalid_fields["ssl"] <- "Non-nullable required field `ssl` cannot be null."
      }

      # check if the required `hostname` is null
      if (is.null(self$`hostname`)) {
        invalid_fields["hostname"] <- "Non-nullable required field `hostname` cannot be null."
      }

      # check if the required `approver_email` is null
      if (is.null(self$`approver_email`)) {
        invalid_fields["approver_email"] <- "Non-nullable required field `approver_email` cannot be null."
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
# SslOrderRequest$unlock()
#
## Below is an example to define the print function
# SslOrderRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SslOrderRequest$lock()

