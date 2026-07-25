#' Create a new SendMailAdv
#'
#' @description
#' Details for an Email
#'
#' @docType class
#' @title SendMailAdv
#' @description SendMailAdv Class
#' @format An \code{R6Class} generator object
#' @field subject The subject or title of the email character
#' @field body The main email contents. character
#' @field from  \link{EmailAddressName}
#' @field to A list of destionation email addresses to send this to list(\link{EmailAddressName})
#' @field replyto (optional) A list of email addresses that specify where replies to the email should be sent instead of the _from_ address. list(\link{EmailAddressName}) [optional]
#' @field cc (optional) A list of email addresses to carbon copy this message to.  They are listed on the email and anyone getting the email can see this full list of Contacts who received the email as well. list(\link{EmailAddressName}) [optional]
#' @field bcc (optional) list of email addresses that should receive copies of the email.  They are hidden on the email and anyone gettitng the email would not see the other people getting the email in this list. list(\link{EmailAddressName}) [optional]
#' @field attachments (optional) File attachments to include in the email.  The file contents must be base64 encoded! list(\link{MailAttachment}) [optional]
#' @field id (optional)  ID of the Mail order within our system to use as the Mail Account. integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SendMailAdv <- R6::R6Class(
  "SendMailAdv",
  public = list(
    `subject` = NULL,
    `body` = NULL,
    `from` = NULL,
    `to` = NULL,
    `replyto` = NULL,
    `cc` = NULL,
    `bcc` = NULL,
    `attachments` = NULL,
    `id` = NULL,

    #' @description
    #' Initialize a new SendMailAdv class.
    #'
    #' @param subject The subject or title of the email
    #' @param body The main email contents.
    #' @param from from
    #' @param to A list of destionation email addresses to send this to
    #' @param replyto (optional) A list of email addresses that specify where replies to the email should be sent instead of the _from_ address.
    #' @param cc (optional) A list of email addresses to carbon copy this message to.  They are listed on the email and anyone getting the email can see this full list of Contacts who received the email as well.
    #' @param bcc (optional) list of email addresses that should receive copies of the email.  They are hidden on the email and anyone gettitng the email would not see the other people getting the email in this list.
    #' @param attachments (optional) File attachments to include in the email.  The file contents must be base64 encoded!
    #' @param id (optional)  ID of the Mail order within our system to use as the Mail Account.
    #' @param ... Other optional arguments.
    initialize = function(`subject`, `body`, `from`, `to`, `replyto` = NULL, `cc` = NULL, `bcc` = NULL, `attachments` = NULL, `id` = NULL, ...) {
      if (!missing(`subject`)) {
        if (!(is.character(`subject`) && length(`subject`) == 1)) {
          stop(paste("Error! Invalid data for `subject`. Must be a string:", `subject`))
        }
        self$`subject` <- `subject`
      }
      if (!missing(`body`)) {
        if (!(is.character(`body`) && length(`body`) == 1)) {
          stop(paste("Error! Invalid data for `body`. Must be a string:", `body`))
        }
        self$`body` <- `body`
      }
      if (!missing(`from`)) {
        stopifnot(R6::is.R6(`from`))
        self$`from` <- `from`
      }
      if (!missing(`to`)) {
        stopifnot(is.vector(`to`), length(`to`) != 0)
        sapply(`to`, function(x) stopifnot(R6::is.R6(x)))
        self$`to` <- `to`
      }
      if (!is.null(`replyto`)) {
        stopifnot(is.vector(`replyto`), length(`replyto`) != 0)
        sapply(`replyto`, function(x) stopifnot(R6::is.R6(x)))
        self$`replyto` <- `replyto`
      }
      if (!is.null(`cc`)) {
        stopifnot(is.vector(`cc`), length(`cc`) != 0)
        sapply(`cc`, function(x) stopifnot(R6::is.R6(x)))
        self$`cc` <- `cc`
      }
      if (!is.null(`bcc`)) {
        stopifnot(is.vector(`bcc`), length(`bcc`) != 0)
        sapply(`bcc`, function(x) stopifnot(R6::is.R6(x)))
        self$`bcc` <- `bcc`
      }
      if (!is.null(`attachments`)) {
        stopifnot(is.vector(`attachments`), length(`attachments`) != 0)
        sapply(`attachments`, function(x) stopifnot(R6::is.R6(x)))
        self$`attachments` <- `attachments`
      }
      if (!is.null(`id`)) {
        if (!(is.numeric(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", `id`))
        }
        self$`id` <- `id`
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
    #' @return SendMailAdv as a base R list.
    #' @examples
    #' # convert array of SendMailAdv (x) to a data frame
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
    #' Convert SendMailAdv to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      SendMailAdvObject <- list()
      if (!is.null(self$`subject`)) {
        SendMailAdvObject[["subject"]] <-
          self$`subject`
      }
      if (!is.null(self$`body`)) {
        SendMailAdvObject[["body"]] <-
          self$`body`
      }
      if (!is.null(self$`from`)) {
        SendMailAdvObject[["from"]] <-
          self$extractSimpleType(self$`from`)
      }
      if (!is.null(self$`to`)) {
        SendMailAdvObject[["to"]] <-
          self$extractSimpleType(self$`to`)
      }
      if (!is.null(self$`replyto`)) {
        SendMailAdvObject[["replyto"]] <-
          self$extractSimpleType(self$`replyto`)
      }
      if (!is.null(self$`cc`)) {
        SendMailAdvObject[["cc"]] <-
          self$extractSimpleType(self$`cc`)
      }
      if (!is.null(self$`bcc`)) {
        SendMailAdvObject[["bcc"]] <-
          self$extractSimpleType(self$`bcc`)
      }
      if (!is.null(self$`attachments`)) {
        SendMailAdvObject[["attachments"]] <-
          self$extractSimpleType(self$`attachments`)
      }
      if (!is.null(self$`id`)) {
        SendMailAdvObject[["id"]] <-
          self$`id`
      }
      return(SendMailAdvObject)
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
    #' Deserialize JSON string into an instance of SendMailAdv
    #'
    #' @param input_json the JSON input
    #' @return the instance of SendMailAdv
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`subject`)) {
        self$`subject` <- this_object$`subject`
      }
      if (!is.null(this_object$`body`)) {
        self$`body` <- this_object$`body`
      }
      if (!is.null(this_object$`from`)) {
        `from_object` <- EmailAddressName$new()
        `from_object`$fromJSON(jsonlite::toJSON(this_object$`from`, auto_unbox = TRUE, digits = NA))
        self$`from` <- `from_object`
      }
      if (!is.null(this_object$`to`)) {
        self$`to` <- ApiClient$new()$deserializeObj(this_object$`to`, "array[EmailAddressName]", loadNamespace("interserverapi"))
      }
      if (!is.null(this_object$`replyto`)) {
        self$`replyto` <- ApiClient$new()$deserializeObj(this_object$`replyto`, "array[EmailAddressName]", loadNamespace("interserverapi"))
      }
      if (!is.null(this_object$`cc`)) {
        self$`cc` <- ApiClient$new()$deserializeObj(this_object$`cc`, "array[EmailAddressName]", loadNamespace("interserverapi"))
      }
      if (!is.null(this_object$`bcc`)) {
        self$`bcc` <- ApiClient$new()$deserializeObj(this_object$`bcc`, "array[EmailAddressName]", loadNamespace("interserverapi"))
      }
      if (!is.null(this_object$`attachments`)) {
        self$`attachments` <- ApiClient$new()$deserializeObj(this_object$`attachments`, "array[MailAttachment]", loadNamespace("interserverapi"))
      }
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return SendMailAdv in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of SendMailAdv
    #'
    #' @param input_json the JSON input
    #' @return the instance of SendMailAdv
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`subject` <- this_object$`subject`
      self$`body` <- this_object$`body`
      self$`from` <- EmailAddressName$new()$fromJSON(jsonlite::toJSON(this_object$`from`, auto_unbox = TRUE, digits = NA))
      self$`to` <- ApiClient$new()$deserializeObj(this_object$`to`, "array[EmailAddressName]", loadNamespace("interserverapi"))
      self$`replyto` <- ApiClient$new()$deserializeObj(this_object$`replyto`, "array[EmailAddressName]", loadNamespace("interserverapi"))
      self$`cc` <- ApiClient$new()$deserializeObj(this_object$`cc`, "array[EmailAddressName]", loadNamespace("interserverapi"))
      self$`bcc` <- ApiClient$new()$deserializeObj(this_object$`bcc`, "array[EmailAddressName]", loadNamespace("interserverapi"))
      self$`attachments` <- ApiClient$new()$deserializeObj(this_object$`attachments`, "array[MailAttachment]", loadNamespace("interserverapi"))
      self$`id` <- this_object$`id`
      self
    },

    #' @description
    #' Validate JSON input with respect to SendMailAdv and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `subject`
      if (!is.null(input_json$`subject`)) {
        if (!(is.character(input_json$`subject`) && length(input_json$`subject`) == 1)) {
          stop(paste("Error! Invalid data for `subject`. Must be a string:", input_json$`subject`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SendMailAdv: the required field `subject` is missing."))
      }
      # check the required field `body`
      if (!is.null(input_json$`body`)) {
        if (!(is.character(input_json$`body`) && length(input_json$`body`) == 1)) {
          stop(paste("Error! Invalid data for `body`. Must be a string:", input_json$`body`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SendMailAdv: the required field `body` is missing."))
      }
      # check the required field `from`
      if (!is.null(input_json$`from`)) {
        stopifnot(R6::is.R6(input_json$`from`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SendMailAdv: the required field `from` is missing."))
      }
      # check the required field `to`
      if (!is.null(input_json$`to`)) {
        stopifnot(is.vector(input_json$`to`), length(input_json$`to`) != 0)
        tmp <- sapply(input_json$`to`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SendMailAdv: the required field `to` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of SendMailAdv
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `subject` is null
      if (is.null(self$`subject`)) {
        return(FALSE)
      }

      # check if the required `body` is null
      if (is.null(self$`body`)) {
        return(FALSE)
      }

      # check if the required `from` is null
      if (is.null(self$`from`)) {
        return(FALSE)
      }

      # check if the required `to` is null
      if (is.null(self$`to`)) {
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
      # check if the required `subject` is null
      if (is.null(self$`subject`)) {
        invalid_fields["subject"] <- "Non-nullable required field `subject` cannot be null."
      }

      # check if the required `body` is null
      if (is.null(self$`body`)) {
        invalid_fields["body"] <- "Non-nullable required field `body` cannot be null."
      }

      # check if the required `from` is null
      if (is.null(self$`from`)) {
        invalid_fields["from"] <- "Non-nullable required field `from` cannot be null."
      }

      # check if the required `to` is null
      if (is.null(self$`to`)) {
        invalid_fields["to"] <- "Non-nullable required field `to` cannot be null."
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
# SendMailAdv$unlock()
#
## Below is an example to define the print function
# SendMailAdv$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SendMailAdv$lock()

