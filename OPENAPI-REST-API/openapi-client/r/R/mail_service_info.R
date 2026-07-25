#' Create a new MailServiceInfo
#'
#' @description
#' MailServiceInfo Class
#'
#' @docType class
#' @title MailServiceInfo
#' @description MailServiceInfo Class
#' @format An \code{R6Class} generator object
#' @field mail_id The ID of the mail service. character
#' @field mail_type The type of mail service. character
#' @field mail_currency The currency of the mail service. character
#' @field mail_order_date The order date of the mail service. character
#' @field mail_custid The customer ID associated with the mail service. character
#' @field mail_quota The mail quota for the service. character
#' @field mail_status The status of the mail service. character
#' @field mail_invoice The invoice ID of the mail service. character
#' @field mail_username The username associated with the mail service. character [optional]
#' @field mail_ip The IP address associated with the mail service. character [optional]
#' @field mail_coupon The coupon associated with the mail service. character [optional]
#' @field mail_extra Additional information for the mail service. character [optional]
#' @field mail_server_status The server status of the mail service. character [optional]
#' @field mail_comment Additional comments for the mail service. character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
MailServiceInfo <- R6::R6Class(
  "MailServiceInfo",
  public = list(
    `mail_id` = NULL,
    `mail_type` = NULL,
    `mail_currency` = NULL,
    `mail_order_date` = NULL,
    `mail_custid` = NULL,
    `mail_quota` = NULL,
    `mail_status` = NULL,
    `mail_invoice` = NULL,
    `mail_username` = NULL,
    `mail_ip` = NULL,
    `mail_coupon` = NULL,
    `mail_extra` = NULL,
    `mail_server_status` = NULL,
    `mail_comment` = NULL,

    #' @description
    #' Initialize a new MailServiceInfo class.
    #'
    #' @param mail_id The ID of the mail service.
    #' @param mail_type The type of mail service.
    #' @param mail_currency The currency of the mail service.
    #' @param mail_order_date The order date of the mail service.
    #' @param mail_custid The customer ID associated with the mail service.
    #' @param mail_quota The mail quota for the service.
    #' @param mail_status The status of the mail service.
    #' @param mail_invoice The invoice ID of the mail service.
    #' @param mail_username The username associated with the mail service.
    #' @param mail_ip The IP address associated with the mail service.
    #' @param mail_coupon The coupon associated with the mail service.
    #' @param mail_extra Additional information for the mail service.
    #' @param mail_server_status The server status of the mail service.
    #' @param mail_comment Additional comments for the mail service.
    #' @param ... Other optional arguments.
    initialize = function(`mail_id`, `mail_type`, `mail_currency`, `mail_order_date`, `mail_custid`, `mail_quota`, `mail_status`, `mail_invoice`, `mail_username` = NULL, `mail_ip` = NULL, `mail_coupon` = NULL, `mail_extra` = NULL, `mail_server_status` = NULL, `mail_comment` = NULL, ...) {
      if (!missing(`mail_id`)) {
        if (!(is.character(`mail_id`) && length(`mail_id`) == 1)) {
          stop(paste("Error! Invalid data for `mail_id`. Must be a string:", `mail_id`))
        }
        self$`mail_id` <- `mail_id`
      }
      if (!missing(`mail_type`)) {
        if (!(is.character(`mail_type`) && length(`mail_type`) == 1)) {
          stop(paste("Error! Invalid data for `mail_type`. Must be a string:", `mail_type`))
        }
        self$`mail_type` <- `mail_type`
      }
      if (!missing(`mail_currency`)) {
        if (!(is.character(`mail_currency`) && length(`mail_currency`) == 1)) {
          stop(paste("Error! Invalid data for `mail_currency`. Must be a string:", `mail_currency`))
        }
        self$`mail_currency` <- `mail_currency`
      }
      if (!missing(`mail_order_date`)) {
        if (!(is.character(`mail_order_date`) && length(`mail_order_date`) == 1)) {
          stop(paste("Error! Invalid data for `mail_order_date`. Must be a string:", `mail_order_date`))
        }
        self$`mail_order_date` <- `mail_order_date`
      }
      if (!missing(`mail_custid`)) {
        if (!(is.character(`mail_custid`) && length(`mail_custid`) == 1)) {
          stop(paste("Error! Invalid data for `mail_custid`. Must be a string:", `mail_custid`))
        }
        self$`mail_custid` <- `mail_custid`
      }
      if (!missing(`mail_quota`)) {
        if (!(is.character(`mail_quota`) && length(`mail_quota`) == 1)) {
          stop(paste("Error! Invalid data for `mail_quota`. Must be a string:", `mail_quota`))
        }
        self$`mail_quota` <- `mail_quota`
      }
      if (!missing(`mail_status`)) {
        if (!(is.character(`mail_status`) && length(`mail_status`) == 1)) {
          stop(paste("Error! Invalid data for `mail_status`. Must be a string:", `mail_status`))
        }
        self$`mail_status` <- `mail_status`
      }
      if (!missing(`mail_invoice`)) {
        if (!(is.character(`mail_invoice`) && length(`mail_invoice`) == 1)) {
          stop(paste("Error! Invalid data for `mail_invoice`. Must be a string:", `mail_invoice`))
        }
        self$`mail_invoice` <- `mail_invoice`
      }
      if (!is.null(`mail_username`)) {
        if (!(is.character(`mail_username`) && length(`mail_username`) == 1)) {
          stop(paste("Error! Invalid data for `mail_username`. Must be a string:", `mail_username`))
        }
        self$`mail_username` <- `mail_username`
      }
      if (!is.null(`mail_ip`)) {
        if (!(is.character(`mail_ip`) && length(`mail_ip`) == 1)) {
          stop(paste("Error! Invalid data for `mail_ip`. Must be a string:", `mail_ip`))
        }
        self$`mail_ip` <- `mail_ip`
      }
      if (!is.null(`mail_coupon`)) {
        if (!(is.character(`mail_coupon`) && length(`mail_coupon`) == 1)) {
          stop(paste("Error! Invalid data for `mail_coupon`. Must be a string:", `mail_coupon`))
        }
        self$`mail_coupon` <- `mail_coupon`
      }
      if (!is.null(`mail_extra`)) {
        if (!(is.character(`mail_extra`) && length(`mail_extra`) == 1)) {
          stop(paste("Error! Invalid data for `mail_extra`. Must be a string:", `mail_extra`))
        }
        self$`mail_extra` <- `mail_extra`
      }
      if (!is.null(`mail_server_status`)) {
        if (!(is.character(`mail_server_status`) && length(`mail_server_status`) == 1)) {
          stop(paste("Error! Invalid data for `mail_server_status`. Must be a string:", `mail_server_status`))
        }
        self$`mail_server_status` <- `mail_server_status`
      }
      if (!is.null(`mail_comment`)) {
        if (!(is.character(`mail_comment`) && length(`mail_comment`) == 1)) {
          stop(paste("Error! Invalid data for `mail_comment`. Must be a string:", `mail_comment`))
        }
        self$`mail_comment` <- `mail_comment`
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
    #' @return MailServiceInfo as a base R list.
    #' @examples
    #' # convert array of MailServiceInfo (x) to a data frame
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
    #' Convert MailServiceInfo to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      MailServiceInfoObject <- list()
      if (!is.null(self$`mail_id`)) {
        MailServiceInfoObject[["mail_id"]] <-
          self$`mail_id`
      }
      if (!is.null(self$`mail_type`)) {
        MailServiceInfoObject[["mail_type"]] <-
          self$`mail_type`
      }
      if (!is.null(self$`mail_currency`)) {
        MailServiceInfoObject[["mail_currency"]] <-
          self$`mail_currency`
      }
      if (!is.null(self$`mail_order_date`)) {
        MailServiceInfoObject[["mail_order_date"]] <-
          self$`mail_order_date`
      }
      if (!is.null(self$`mail_custid`)) {
        MailServiceInfoObject[["mail_custid"]] <-
          self$`mail_custid`
      }
      if (!is.null(self$`mail_quota`)) {
        MailServiceInfoObject[["mail_quota"]] <-
          self$`mail_quota`
      }
      if (!is.null(self$`mail_status`)) {
        MailServiceInfoObject[["mail_status"]] <-
          self$`mail_status`
      }
      if (!is.null(self$`mail_invoice`)) {
        MailServiceInfoObject[["mail_invoice"]] <-
          self$`mail_invoice`
      }
      if (!is.null(self$`mail_username`)) {
        MailServiceInfoObject[["mail_username"]] <-
          self$`mail_username`
      }
      if (!is.null(self$`mail_ip`)) {
        MailServiceInfoObject[["mail_ip"]] <-
          self$`mail_ip`
      }
      if (!is.null(self$`mail_coupon`)) {
        MailServiceInfoObject[["mail_coupon"]] <-
          self$`mail_coupon`
      }
      if (!is.null(self$`mail_extra`)) {
        MailServiceInfoObject[["mail_extra"]] <-
          self$`mail_extra`
      }
      if (!is.null(self$`mail_server_status`)) {
        MailServiceInfoObject[["mail_server_status"]] <-
          self$`mail_server_status`
      }
      if (!is.null(self$`mail_comment`)) {
        MailServiceInfoObject[["mail_comment"]] <-
          self$`mail_comment`
      }
      return(MailServiceInfoObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of MailServiceInfo
    #'
    #' @param input_json the JSON input
    #' @return the instance of MailServiceInfo
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`mail_id`)) {
        self$`mail_id` <- this_object$`mail_id`
      }
      if (!is.null(this_object$`mail_type`)) {
        self$`mail_type` <- this_object$`mail_type`
      }
      if (!is.null(this_object$`mail_currency`)) {
        self$`mail_currency` <- this_object$`mail_currency`
      }
      if (!is.null(this_object$`mail_order_date`)) {
        self$`mail_order_date` <- this_object$`mail_order_date`
      }
      if (!is.null(this_object$`mail_custid`)) {
        self$`mail_custid` <- this_object$`mail_custid`
      }
      if (!is.null(this_object$`mail_quota`)) {
        self$`mail_quota` <- this_object$`mail_quota`
      }
      if (!is.null(this_object$`mail_status`)) {
        self$`mail_status` <- this_object$`mail_status`
      }
      if (!is.null(this_object$`mail_invoice`)) {
        self$`mail_invoice` <- this_object$`mail_invoice`
      }
      if (!is.null(this_object$`mail_username`)) {
        self$`mail_username` <- this_object$`mail_username`
      }
      if (!is.null(this_object$`mail_ip`)) {
        self$`mail_ip` <- this_object$`mail_ip`
      }
      if (!is.null(this_object$`mail_coupon`)) {
        self$`mail_coupon` <- this_object$`mail_coupon`
      }
      if (!is.null(this_object$`mail_extra`)) {
        self$`mail_extra` <- this_object$`mail_extra`
      }
      if (!is.null(this_object$`mail_server_status`)) {
        self$`mail_server_status` <- this_object$`mail_server_status`
      }
      if (!is.null(this_object$`mail_comment`)) {
        self$`mail_comment` <- this_object$`mail_comment`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return MailServiceInfo in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of MailServiceInfo
    #'
    #' @param input_json the JSON input
    #' @return the instance of MailServiceInfo
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`mail_id` <- this_object$`mail_id`
      self$`mail_type` <- this_object$`mail_type`
      self$`mail_currency` <- this_object$`mail_currency`
      self$`mail_order_date` <- this_object$`mail_order_date`
      self$`mail_custid` <- this_object$`mail_custid`
      self$`mail_quota` <- this_object$`mail_quota`
      self$`mail_status` <- this_object$`mail_status`
      self$`mail_invoice` <- this_object$`mail_invoice`
      self$`mail_username` <- this_object$`mail_username`
      self$`mail_ip` <- this_object$`mail_ip`
      self$`mail_coupon` <- this_object$`mail_coupon`
      self$`mail_extra` <- this_object$`mail_extra`
      self$`mail_server_status` <- this_object$`mail_server_status`
      self$`mail_comment` <- this_object$`mail_comment`
      self
    },

    #' @description
    #' Validate JSON input with respect to MailServiceInfo and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `mail_id`
      if (!is.null(input_json$`mail_id`)) {
        if (!(is.character(input_json$`mail_id`) && length(input_json$`mail_id`) == 1)) {
          stop(paste("Error! Invalid data for `mail_id`. Must be a string:", input_json$`mail_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for MailServiceInfo: the required field `mail_id` is missing."))
      }
      # check the required field `mail_type`
      if (!is.null(input_json$`mail_type`)) {
        if (!(is.character(input_json$`mail_type`) && length(input_json$`mail_type`) == 1)) {
          stop(paste("Error! Invalid data for `mail_type`. Must be a string:", input_json$`mail_type`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for MailServiceInfo: the required field `mail_type` is missing."))
      }
      # check the required field `mail_currency`
      if (!is.null(input_json$`mail_currency`)) {
        if (!(is.character(input_json$`mail_currency`) && length(input_json$`mail_currency`) == 1)) {
          stop(paste("Error! Invalid data for `mail_currency`. Must be a string:", input_json$`mail_currency`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for MailServiceInfo: the required field `mail_currency` is missing."))
      }
      # check the required field `mail_order_date`
      if (!is.null(input_json$`mail_order_date`)) {
        if (!(is.character(input_json$`mail_order_date`) && length(input_json$`mail_order_date`) == 1)) {
          stop(paste("Error! Invalid data for `mail_order_date`. Must be a string:", input_json$`mail_order_date`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for MailServiceInfo: the required field `mail_order_date` is missing."))
      }
      # check the required field `mail_custid`
      if (!is.null(input_json$`mail_custid`)) {
        if (!(is.character(input_json$`mail_custid`) && length(input_json$`mail_custid`) == 1)) {
          stop(paste("Error! Invalid data for `mail_custid`. Must be a string:", input_json$`mail_custid`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for MailServiceInfo: the required field `mail_custid` is missing."))
      }
      # check the required field `mail_quota`
      if (!is.null(input_json$`mail_quota`)) {
        if (!(is.character(input_json$`mail_quota`) && length(input_json$`mail_quota`) == 1)) {
          stop(paste("Error! Invalid data for `mail_quota`. Must be a string:", input_json$`mail_quota`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for MailServiceInfo: the required field `mail_quota` is missing."))
      }
      # check the required field `mail_status`
      if (!is.null(input_json$`mail_status`)) {
        if (!(is.character(input_json$`mail_status`) && length(input_json$`mail_status`) == 1)) {
          stop(paste("Error! Invalid data for `mail_status`. Must be a string:", input_json$`mail_status`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for MailServiceInfo: the required field `mail_status` is missing."))
      }
      # check the required field `mail_invoice`
      if (!is.null(input_json$`mail_invoice`)) {
        if (!(is.character(input_json$`mail_invoice`) && length(input_json$`mail_invoice`) == 1)) {
          stop(paste("Error! Invalid data for `mail_invoice`. Must be a string:", input_json$`mail_invoice`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for MailServiceInfo: the required field `mail_invoice` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of MailServiceInfo
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `mail_id` is null
      if (is.null(self$`mail_id`)) {
        return(FALSE)
      }

      # check if the required `mail_type` is null
      if (is.null(self$`mail_type`)) {
        return(FALSE)
      }

      # check if the required `mail_currency` is null
      if (is.null(self$`mail_currency`)) {
        return(FALSE)
      }

      # check if the required `mail_order_date` is null
      if (is.null(self$`mail_order_date`)) {
        return(FALSE)
      }

      # check if the required `mail_custid` is null
      if (is.null(self$`mail_custid`)) {
        return(FALSE)
      }

      # check if the required `mail_quota` is null
      if (is.null(self$`mail_quota`)) {
        return(FALSE)
      }

      # check if the required `mail_status` is null
      if (is.null(self$`mail_status`)) {
        return(FALSE)
      }

      # check if the required `mail_invoice` is null
      if (is.null(self$`mail_invoice`)) {
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
      # check if the required `mail_id` is null
      if (is.null(self$`mail_id`)) {
        invalid_fields["mail_id"] <- "Non-nullable required field `mail_id` cannot be null."
      }

      # check if the required `mail_type` is null
      if (is.null(self$`mail_type`)) {
        invalid_fields["mail_type"] <- "Non-nullable required field `mail_type` cannot be null."
      }

      # check if the required `mail_currency` is null
      if (is.null(self$`mail_currency`)) {
        invalid_fields["mail_currency"] <- "Non-nullable required field `mail_currency` cannot be null."
      }

      # check if the required `mail_order_date` is null
      if (is.null(self$`mail_order_date`)) {
        invalid_fields["mail_order_date"] <- "Non-nullable required field `mail_order_date` cannot be null."
      }

      # check if the required `mail_custid` is null
      if (is.null(self$`mail_custid`)) {
        invalid_fields["mail_custid"] <- "Non-nullable required field `mail_custid` cannot be null."
      }

      # check if the required `mail_quota` is null
      if (is.null(self$`mail_quota`)) {
        invalid_fields["mail_quota"] <- "Non-nullable required field `mail_quota` cannot be null."
      }

      # check if the required `mail_status` is null
      if (is.null(self$`mail_status`)) {
        invalid_fields["mail_status"] <- "Non-nullable required field `mail_status` cannot be null."
      }

      # check if the required `mail_invoice` is null
      if (is.null(self$`mail_invoice`)) {
        invalid_fields["mail_invoice"] <- "Non-nullable required field `mail_invoice` cannot be null."
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
# MailServiceInfo$unlock()
#
## Below is an example to define the print function
# MailServiceInfo$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# MailServiceInfo$lock()

