#' Create a new AccountInfoPost
#'
#' @description
#' Request to update account information.
#'
#' @docType class
#' @title AccountInfoPost
#' @description AccountInfoPost Class
#' @format An \code{R6Class} generator object
#' @field name Your name. character
#' @field address Your address. character
#' @field city Your city. character
#' @field state Your state. character
#' @field zip Your ZIP code. character
#' @field country Your country. character
#' @field phone Your phone number. character
#' @field company Your company name. character [optional]
#' @field address2 Additional address information. character [optional]
#' @field locale Your preferred locale. character [optional]
#' @field email_invoices Your email for invoice notifications. character [optional]
#' @field email_abuse Your email for abuse notifications. character [optional]
#' @field disable_reset Set to `true` to disable account resets, or `false` to enable them. character [optional]
#' @field disable_reinstall Set to `true` to disable server reinstalls, or `false` to enable them. character [optional]
#' @field disable_server_notifications Set to `true` to disable server notifications, or `false` to enable them. character [optional]
#' @field disable_email_notifications Set to `true` to disable email notifications, or `false` to enable them. character [optional]
#' @field gstin Your GST identification number (if applicable). character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AccountInfoPost <- R6::R6Class(
  "AccountInfoPost",
  public = list(
    `name` = NULL,
    `address` = NULL,
    `city` = NULL,
    `state` = NULL,
    `zip` = NULL,
    `country` = NULL,
    `phone` = NULL,
    `company` = NULL,
    `address2` = NULL,
    `locale` = NULL,
    `email_invoices` = NULL,
    `email_abuse` = NULL,
    `disable_reset` = NULL,
    `disable_reinstall` = NULL,
    `disable_server_notifications` = NULL,
    `disable_email_notifications` = NULL,
    `gstin` = NULL,

    #' @description
    #' Initialize a new AccountInfoPost class.
    #'
    #' @param name Your name.
    #' @param address Your address.
    #' @param city Your city.
    #' @param state Your state.
    #' @param zip Your ZIP code.
    #' @param country Your country.
    #' @param phone Your phone number.
    #' @param company Your company name.
    #' @param address2 Additional address information.
    #' @param locale Your preferred locale.
    #' @param email_invoices Your email for invoice notifications.
    #' @param email_abuse Your email for abuse notifications.
    #' @param disable_reset Set to `true` to disable account resets, or `false` to enable them.
    #' @param disable_reinstall Set to `true` to disable server reinstalls, or `false` to enable them.
    #' @param disable_server_notifications Set to `true` to disable server notifications, or `false` to enable them.
    #' @param disable_email_notifications Set to `true` to disable email notifications, or `false` to enable them.
    #' @param gstin Your GST identification number (if applicable).
    #' @param ... Other optional arguments.
    initialize = function(`name`, `address`, `city`, `state`, `zip`, `country`, `phone`, `company` = NULL, `address2` = NULL, `locale` = NULL, `email_invoices` = NULL, `email_abuse` = NULL, `disable_reset` = NULL, `disable_reinstall` = NULL, `disable_server_notifications` = NULL, `disable_email_notifications` = NULL, `gstin` = NULL, ...) {
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!missing(`address`)) {
        if (!(is.character(`address`) && length(`address`) == 1)) {
          stop(paste("Error! Invalid data for `address`. Must be a string:", `address`))
        }
        self$`address` <- `address`
      }
      if (!missing(`city`)) {
        if (!(is.character(`city`) && length(`city`) == 1)) {
          stop(paste("Error! Invalid data for `city`. Must be a string:", `city`))
        }
        self$`city` <- `city`
      }
      if (!missing(`state`)) {
        if (!(is.character(`state`) && length(`state`) == 1)) {
          stop(paste("Error! Invalid data for `state`. Must be a string:", `state`))
        }
        self$`state` <- `state`
      }
      if (!missing(`zip`)) {
        if (!(is.character(`zip`) && length(`zip`) == 1)) {
          stop(paste("Error! Invalid data for `zip`. Must be a string:", `zip`))
        }
        self$`zip` <- `zip`
      }
      if (!missing(`country`)) {
        if (!(is.character(`country`) && length(`country`) == 1)) {
          stop(paste("Error! Invalid data for `country`. Must be a string:", `country`))
        }
        self$`country` <- `country`
      }
      if (!missing(`phone`)) {
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
      if (!is.null(`address2`)) {
        if (!(is.character(`address2`) && length(`address2`) == 1)) {
          stop(paste("Error! Invalid data for `address2`. Must be a string:", `address2`))
        }
        self$`address2` <- `address2`
      }
      if (!is.null(`locale`)) {
        if (!(is.character(`locale`) && length(`locale`) == 1)) {
          stop(paste("Error! Invalid data for `locale`. Must be a string:", `locale`))
        }
        self$`locale` <- `locale`
      }
      if (!is.null(`email_invoices`)) {
        if (!(is.character(`email_invoices`) && length(`email_invoices`) == 1)) {
          stop(paste("Error! Invalid data for `email_invoices`. Must be a string:", `email_invoices`))
        }
        self$`email_invoices` <- `email_invoices`
      }
      if (!is.null(`email_abuse`)) {
        if (!(is.character(`email_abuse`) && length(`email_abuse`) == 1)) {
          stop(paste("Error! Invalid data for `email_abuse`. Must be a string:", `email_abuse`))
        }
        self$`email_abuse` <- `email_abuse`
      }
      if (!is.null(`disable_reset`)) {
        if (!(is.logical(`disable_reset`) && length(`disable_reset`) == 1)) {
          stop(paste("Error! Invalid data for `disable_reset`. Must be a boolean:", `disable_reset`))
        }
        self$`disable_reset` <- `disable_reset`
      }
      if (!is.null(`disable_reinstall`)) {
        if (!(is.logical(`disable_reinstall`) && length(`disable_reinstall`) == 1)) {
          stop(paste("Error! Invalid data for `disable_reinstall`. Must be a boolean:", `disable_reinstall`))
        }
        self$`disable_reinstall` <- `disable_reinstall`
      }
      if (!is.null(`disable_server_notifications`)) {
        if (!(is.logical(`disable_server_notifications`) && length(`disable_server_notifications`) == 1)) {
          stop(paste("Error! Invalid data for `disable_server_notifications`. Must be a boolean:", `disable_server_notifications`))
        }
        self$`disable_server_notifications` <- `disable_server_notifications`
      }
      if (!is.null(`disable_email_notifications`)) {
        if (!(is.logical(`disable_email_notifications`) && length(`disable_email_notifications`) == 1)) {
          stop(paste("Error! Invalid data for `disable_email_notifications`. Must be a boolean:", `disable_email_notifications`))
        }
        self$`disable_email_notifications` <- `disable_email_notifications`
      }
      if (!is.null(`gstin`)) {
        if (!(is.character(`gstin`) && length(`gstin`) == 1)) {
          stop(paste("Error! Invalid data for `gstin`. Must be a string:", `gstin`))
        }
        self$`gstin` <- `gstin`
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
    #' @return AccountInfoPost as a base R list.
    #' @examples
    #' # convert array of AccountInfoPost (x) to a data frame
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
    #' Convert AccountInfoPost to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AccountInfoPostObject <- list()
      if (!is.null(self$`name`)) {
        AccountInfoPostObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`address`)) {
        AccountInfoPostObject[["address"]] <-
          self$`address`
      }
      if (!is.null(self$`city`)) {
        AccountInfoPostObject[["city"]] <-
          self$`city`
      }
      if (!is.null(self$`state`)) {
        AccountInfoPostObject[["state"]] <-
          self$`state`
      }
      if (!is.null(self$`zip`)) {
        AccountInfoPostObject[["zip"]] <-
          self$`zip`
      }
      if (!is.null(self$`country`)) {
        AccountInfoPostObject[["country"]] <-
          self$`country`
      }
      if (!is.null(self$`phone`)) {
        AccountInfoPostObject[["phone"]] <-
          self$`phone`
      }
      if (!is.null(self$`company`)) {
        AccountInfoPostObject[["company"]] <-
          self$`company`
      }
      if (!is.null(self$`address2`)) {
        AccountInfoPostObject[["address2"]] <-
          self$`address2`
      }
      if (!is.null(self$`locale`)) {
        AccountInfoPostObject[["locale"]] <-
          self$`locale`
      }
      if (!is.null(self$`email_invoices`)) {
        AccountInfoPostObject[["email_invoices"]] <-
          self$`email_invoices`
      }
      if (!is.null(self$`email_abuse`)) {
        AccountInfoPostObject[["email_abuse"]] <-
          self$`email_abuse`
      }
      if (!is.null(self$`disable_reset`)) {
        AccountInfoPostObject[["disable_reset"]] <-
          self$`disable_reset`
      }
      if (!is.null(self$`disable_reinstall`)) {
        AccountInfoPostObject[["disable_reinstall"]] <-
          self$`disable_reinstall`
      }
      if (!is.null(self$`disable_server_notifications`)) {
        AccountInfoPostObject[["disable_server_notifications"]] <-
          self$`disable_server_notifications`
      }
      if (!is.null(self$`disable_email_notifications`)) {
        AccountInfoPostObject[["disable_email_notifications"]] <-
          self$`disable_email_notifications`
      }
      if (!is.null(self$`gstin`)) {
        AccountInfoPostObject[["gstin"]] <-
          self$`gstin`
      }
      return(AccountInfoPostObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of AccountInfoPost
    #'
    #' @param input_json the JSON input
    #' @return the instance of AccountInfoPost
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
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
      if (!is.null(this_object$`address2`)) {
        self$`address2` <- this_object$`address2`
      }
      if (!is.null(this_object$`locale`)) {
        self$`locale` <- this_object$`locale`
      }
      if (!is.null(this_object$`email_invoices`)) {
        self$`email_invoices` <- this_object$`email_invoices`
      }
      if (!is.null(this_object$`email_abuse`)) {
        self$`email_abuse` <- this_object$`email_abuse`
      }
      if (!is.null(this_object$`disable_reset`)) {
        self$`disable_reset` <- this_object$`disable_reset`
      }
      if (!is.null(this_object$`disable_reinstall`)) {
        self$`disable_reinstall` <- this_object$`disable_reinstall`
      }
      if (!is.null(this_object$`disable_server_notifications`)) {
        self$`disable_server_notifications` <- this_object$`disable_server_notifications`
      }
      if (!is.null(this_object$`disable_email_notifications`)) {
        self$`disable_email_notifications` <- this_object$`disable_email_notifications`
      }
      if (!is.null(this_object$`gstin`)) {
        self$`gstin` <- this_object$`gstin`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AccountInfoPost in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AccountInfoPost
    #'
    #' @param input_json the JSON input
    #' @return the instance of AccountInfoPost
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`name` <- this_object$`name`
      self$`address` <- this_object$`address`
      self$`city` <- this_object$`city`
      self$`state` <- this_object$`state`
      self$`zip` <- this_object$`zip`
      self$`country` <- this_object$`country`
      self$`phone` <- this_object$`phone`
      self$`company` <- this_object$`company`
      self$`address2` <- this_object$`address2`
      self$`locale` <- this_object$`locale`
      self$`email_invoices` <- this_object$`email_invoices`
      self$`email_abuse` <- this_object$`email_abuse`
      self$`disable_reset` <- this_object$`disable_reset`
      self$`disable_reinstall` <- this_object$`disable_reinstall`
      self$`disable_server_notifications` <- this_object$`disable_server_notifications`
      self$`disable_email_notifications` <- this_object$`disable_email_notifications`
      self$`gstin` <- this_object$`gstin`
      self
    },

    #' @description
    #' Validate JSON input with respect to AccountInfoPost and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AccountInfoPost: the required field `name` is missing."))
      }
      # check the required field `address`
      if (!is.null(input_json$`address`)) {
        if (!(is.character(input_json$`address`) && length(input_json$`address`) == 1)) {
          stop(paste("Error! Invalid data for `address`. Must be a string:", input_json$`address`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AccountInfoPost: the required field `address` is missing."))
      }
      # check the required field `city`
      if (!is.null(input_json$`city`)) {
        if (!(is.character(input_json$`city`) && length(input_json$`city`) == 1)) {
          stop(paste("Error! Invalid data for `city`. Must be a string:", input_json$`city`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AccountInfoPost: the required field `city` is missing."))
      }
      # check the required field `state`
      if (!is.null(input_json$`state`)) {
        if (!(is.character(input_json$`state`) && length(input_json$`state`) == 1)) {
          stop(paste("Error! Invalid data for `state`. Must be a string:", input_json$`state`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AccountInfoPost: the required field `state` is missing."))
      }
      # check the required field `zip`
      if (!is.null(input_json$`zip`)) {
        if (!(is.character(input_json$`zip`) && length(input_json$`zip`) == 1)) {
          stop(paste("Error! Invalid data for `zip`. Must be a string:", input_json$`zip`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AccountInfoPost: the required field `zip` is missing."))
      }
      # check the required field `country`
      if (!is.null(input_json$`country`)) {
        if (!(is.character(input_json$`country`) && length(input_json$`country`) == 1)) {
          stop(paste("Error! Invalid data for `country`. Must be a string:", input_json$`country`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AccountInfoPost: the required field `country` is missing."))
      }
      # check the required field `phone`
      if (!is.null(input_json$`phone`)) {
        if (!(is.character(input_json$`phone`) && length(input_json$`phone`) == 1)) {
          stop(paste("Error! Invalid data for `phone`. Must be a string:", input_json$`phone`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AccountInfoPost: the required field `phone` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AccountInfoPost
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `name` is null
      if (is.null(self$`name`)) {
        return(FALSE)
      }

      # check if the required `address` is null
      if (is.null(self$`address`)) {
        return(FALSE)
      }

      # check if the required `city` is null
      if (is.null(self$`city`)) {
        return(FALSE)
      }

      # check if the required `state` is null
      if (is.null(self$`state`)) {
        return(FALSE)
      }

      # check if the required `zip` is null
      if (is.null(self$`zip`)) {
        return(FALSE)
      }

      # check if the required `country` is null
      if (is.null(self$`country`)) {
        return(FALSE)
      }

      # check if the required `phone` is null
      if (is.null(self$`phone`)) {
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
      # check if the required `name` is null
      if (is.null(self$`name`)) {
        invalid_fields["name"] <- "Non-nullable required field `name` cannot be null."
      }

      # check if the required `address` is null
      if (is.null(self$`address`)) {
        invalid_fields["address"] <- "Non-nullable required field `address` cannot be null."
      }

      # check if the required `city` is null
      if (is.null(self$`city`)) {
        invalid_fields["city"] <- "Non-nullable required field `city` cannot be null."
      }

      # check if the required `state` is null
      if (is.null(self$`state`)) {
        invalid_fields["state"] <- "Non-nullable required field `state` cannot be null."
      }

      # check if the required `zip` is null
      if (is.null(self$`zip`)) {
        invalid_fields["zip"] <- "Non-nullable required field `zip` cannot be null."
      }

      # check if the required `country` is null
      if (is.null(self$`country`)) {
        invalid_fields["country"] <- "Non-nullable required field `country` cannot be null."
      }

      # check if the required `phone` is null
      if (is.null(self$`phone`)) {
        invalid_fields["phone"] <- "Non-nullable required field `phone` cannot be null."
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
# AccountInfoPost$unlock()
#
## Below is an example to define the print function
# AccountInfoPost$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AccountInfoPost$lock()

