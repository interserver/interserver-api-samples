#' Create a new MailLogEntry
#'
#' @description
#' A single email record in the mail log.  Combines data from the message store (envelope metadata), the queue release table (delivery status and response), and the sender delivery table (MX routing details).  When `groupby=recipient` each row represents one delivery attempt; when `groupby=message` delivery fields reflect one arbitrary recipient.
#'
#' @docType class
#' @title MailLogEntry
#' @description MailLogEntry Class
#' @format An \code{R6Class} generator object
#' @field _id Internal auto-increment database row ID. integer
#' @field id The relay-assigned mail ID (18-19 hex characters).  Matches the `mailid` filter parameter and the `text` value returned by send endpoints. character
#' @field from SMTP envelope `MAIL FROM` address. character
#' @field to SMTP envelope `RCPT TO` address. character
#' @field created Human-readable creation timestamp in `YYYY-MM-DD HH:MM:SS` format. character
#' @field time Unix timestamp of message acceptance.  Corresponds to the `startDate` and `endDate` filter parameters. integer
#' @field user The SMTP AUTH username used to submit the message (e.g. `mb5658`). character
#' @field transtype SMTP transaction type negotiated with the relay. character
#' @field origin IP address of the client that submitted the message to the relay. character
#' @field interface Relay interface name that accepted the message. character
#' @field subject The `Subject` header value.  MIME-encoded subjects (UTF-8, ISO-8859, US-ASCII) are automatically decoded. character [optional]
#' @field messageId The `Message-ID` header value.  Can be used with the `messageId` filter for subsequent lookups. character [optional]
#' @field sendingZone The sending zone assigned by the relay for outbound delivery. character [optional]
#' @field bodySize Size of the message body in bytes. integer [optional]
#' @field seq Sequence index of this recipient in a multi-recipient message. Starts at 1. integer [optional]
#' @field delivered Delivery status flag.  `1` = successfully delivered to destination MX. `0` = queued, deferred, or failed.  `null` = delivery not yet attempted. integer [optional]
#' @field code The SMTP response code from the destination MX server (e.g. `250`). integer [optional]
#' @field recipient The specific recipient address this delivery record is for. character [optional]
#' @field response The full SMTP response string received from the destination MX server. character [optional]
#' @field domain The destination domain for this delivery attempt. character [optional]
#' @field locked Whether the queue entry is currently locked for delivery processing. integer [optional]
#' @field lockTime Millisecond-precision timestamp of the last queue lock acquisition. character [optional]
#' @field assigned The relay server node assigned to deliver this message. character [optional]
#' @field queued ISO 8601 timestamp when the message was placed into the delivery queue. character [optional]
#' @field mxHostname The MX hostname the relay connected to for delivery.  Corresponds to the `mx` filter parameter. character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
MailLogEntry <- R6::R6Class(
  "MailLogEntry",
  public = list(
    `_id` = NULL,
    `id` = NULL,
    `from` = NULL,
    `to` = NULL,
    `created` = NULL,
    `time` = NULL,
    `user` = NULL,
    `transtype` = NULL,
    `origin` = NULL,
    `interface` = NULL,
    `subject` = NULL,
    `messageId` = NULL,
    `sendingZone` = NULL,
    `bodySize` = NULL,
    `seq` = NULL,
    `delivered` = NULL,
    `code` = NULL,
    `recipient` = NULL,
    `response` = NULL,
    `domain` = NULL,
    `locked` = NULL,
    `lockTime` = NULL,
    `assigned` = NULL,
    `queued` = NULL,
    `mxHostname` = NULL,

    #' @description
    #' Initialize a new MailLogEntry class.
    #'
    #' @param _id Internal auto-increment database row ID.
    #' @param id The relay-assigned mail ID (18-19 hex characters).  Matches the `mailid` filter parameter and the `text` value returned by send endpoints.
    #' @param from SMTP envelope `MAIL FROM` address.
    #' @param to SMTP envelope `RCPT TO` address.
    #' @param created Human-readable creation timestamp in `YYYY-MM-DD HH:MM:SS` format.
    #' @param time Unix timestamp of message acceptance.  Corresponds to the `startDate` and `endDate` filter parameters.
    #' @param user The SMTP AUTH username used to submit the message (e.g. `mb5658`).
    #' @param transtype SMTP transaction type negotiated with the relay.
    #' @param origin IP address of the client that submitted the message to the relay.
    #' @param interface Relay interface name that accepted the message.
    #' @param subject The `Subject` header value.  MIME-encoded subjects (UTF-8, ISO-8859, US-ASCII) are automatically decoded.
    #' @param messageId The `Message-ID` header value.  Can be used with the `messageId` filter for subsequent lookups.
    #' @param sendingZone The sending zone assigned by the relay for outbound delivery.
    #' @param bodySize Size of the message body in bytes.
    #' @param seq Sequence index of this recipient in a multi-recipient message. Starts at 1.
    #' @param delivered Delivery status flag.  `1` = successfully delivered to destination MX. `0` = queued, deferred, or failed.  `null` = delivery not yet attempted.
    #' @param code The SMTP response code from the destination MX server (e.g. `250`).
    #' @param recipient The specific recipient address this delivery record is for.
    #' @param response The full SMTP response string received from the destination MX server.
    #' @param domain The destination domain for this delivery attempt.
    #' @param locked Whether the queue entry is currently locked for delivery processing.
    #' @param lockTime Millisecond-precision timestamp of the last queue lock acquisition.
    #' @param assigned The relay server node assigned to deliver this message.
    #' @param queued ISO 8601 timestamp when the message was placed into the delivery queue.
    #' @param mxHostname The MX hostname the relay connected to for delivery.  Corresponds to the `mx` filter parameter.
    #' @param ... Other optional arguments.
    initialize = function(`_id`, `id`, `from`, `to`, `created`, `time`, `user`, `transtype`, `origin`, `interface`, `subject` = NULL, `messageId` = NULL, `sendingZone` = NULL, `bodySize` = NULL, `seq` = NULL, `delivered` = NULL, `code` = NULL, `recipient` = NULL, `response` = NULL, `domain` = NULL, `locked` = NULL, `lockTime` = NULL, `assigned` = NULL, `queued` = NULL, `mxHostname` = NULL, ...) {
      if (!missing(`_id`)) {
        if (!(is.numeric(`_id`) && length(`_id`) == 1)) {
          stop(paste("Error! Invalid data for `_id`. Must be an integer:", `_id`))
        }
        self$`_id` <- `_id`
      }
      if (!missing(`id`)) {
        if (!(is.character(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", `id`))
        }
        self$`id` <- `id`
      }
      if (!missing(`from`)) {
        if (!(is.character(`from`) && length(`from`) == 1)) {
          stop(paste("Error! Invalid data for `from`. Must be a string:", `from`))
        }
        self$`from` <- `from`
      }
      if (!missing(`to`)) {
        if (!(is.character(`to`) && length(`to`) == 1)) {
          stop(paste("Error! Invalid data for `to`. Must be a string:", `to`))
        }
        self$`to` <- `to`
      }
      if (!missing(`created`)) {
        if (!(is.character(`created`) && length(`created`) == 1)) {
          stop(paste("Error! Invalid data for `created`. Must be a string:", `created`))
        }
        self$`created` <- `created`
      }
      if (!missing(`time`)) {
        if (!(is.numeric(`time`) && length(`time`) == 1)) {
          stop(paste("Error! Invalid data for `time`. Must be an integer:", `time`))
        }
        self$`time` <- `time`
      }
      if (!missing(`user`)) {
        if (!(is.character(`user`) && length(`user`) == 1)) {
          stop(paste("Error! Invalid data for `user`. Must be a string:", `user`))
        }
        self$`user` <- `user`
      }
      if (!missing(`transtype`)) {
        if (!(is.character(`transtype`) && length(`transtype`) == 1)) {
          stop(paste("Error! Invalid data for `transtype`. Must be a string:", `transtype`))
        }
        self$`transtype` <- `transtype`
      }
      if (!missing(`origin`)) {
        if (!(is.character(`origin`) && length(`origin`) == 1)) {
          stop(paste("Error! Invalid data for `origin`. Must be a string:", `origin`))
        }
        self$`origin` <- `origin`
      }
      if (!missing(`interface`)) {
        if (!(is.character(`interface`) && length(`interface`) == 1)) {
          stop(paste("Error! Invalid data for `interface`. Must be a string:", `interface`))
        }
        self$`interface` <- `interface`
      }
      if (!is.null(`subject`)) {
        if (!(is.character(`subject`) && length(`subject`) == 1)) {
          stop(paste("Error! Invalid data for `subject`. Must be a string:", `subject`))
        }
        self$`subject` <- `subject`
      }
      if (!is.null(`messageId`)) {
        if (!(is.character(`messageId`) && length(`messageId`) == 1)) {
          stop(paste("Error! Invalid data for `messageId`. Must be a string:", `messageId`))
        }
        self$`messageId` <- `messageId`
      }
      if (!is.null(`sendingZone`)) {
        if (!(is.character(`sendingZone`) && length(`sendingZone`) == 1)) {
          stop(paste("Error! Invalid data for `sendingZone`. Must be a string:", `sendingZone`))
        }
        self$`sendingZone` <- `sendingZone`
      }
      if (!is.null(`bodySize`)) {
        if (!(is.numeric(`bodySize`) && length(`bodySize`) == 1)) {
          stop(paste("Error! Invalid data for `bodySize`. Must be an integer:", `bodySize`))
        }
        self$`bodySize` <- `bodySize`
      }
      if (!is.null(`seq`)) {
        if (!(is.numeric(`seq`) && length(`seq`) == 1)) {
          stop(paste("Error! Invalid data for `seq`. Must be an integer:", `seq`))
        }
        self$`seq` <- `seq`
      }
      if (!is.null(`delivered`)) {
        if (!(is.numeric(`delivered`) && length(`delivered`) == 1)) {
          stop(paste("Error! Invalid data for `delivered`. Must be an integer:", `delivered`))
        }
        self$`delivered` <- `delivered`
      }
      if (!is.null(`code`)) {
        if (!(is.numeric(`code`) && length(`code`) == 1)) {
          stop(paste("Error! Invalid data for `code`. Must be an integer:", `code`))
        }
        self$`code` <- `code`
      }
      if (!is.null(`recipient`)) {
        if (!(is.character(`recipient`) && length(`recipient`) == 1)) {
          stop(paste("Error! Invalid data for `recipient`. Must be a string:", `recipient`))
        }
        self$`recipient` <- `recipient`
      }
      if (!is.null(`response`)) {
        if (!(is.character(`response`) && length(`response`) == 1)) {
          stop(paste("Error! Invalid data for `response`. Must be a string:", `response`))
        }
        self$`response` <- `response`
      }
      if (!is.null(`domain`)) {
        if (!(is.character(`domain`) && length(`domain`) == 1)) {
          stop(paste("Error! Invalid data for `domain`. Must be a string:", `domain`))
        }
        self$`domain` <- `domain`
      }
      if (!is.null(`locked`)) {
        if (!(is.numeric(`locked`) && length(`locked`) == 1)) {
          stop(paste("Error! Invalid data for `locked`. Must be an integer:", `locked`))
        }
        self$`locked` <- `locked`
      }
      if (!is.null(`lockTime`)) {
        if (!(is.character(`lockTime`) && length(`lockTime`) == 1)) {
          stop(paste("Error! Invalid data for `lockTime`. Must be a string:", `lockTime`))
        }
        self$`lockTime` <- `lockTime`
      }
      if (!is.null(`assigned`)) {
        if (!(is.character(`assigned`) && length(`assigned`) == 1)) {
          stop(paste("Error! Invalid data for `assigned`. Must be a string:", `assigned`))
        }
        self$`assigned` <- `assigned`
      }
      if (!is.null(`queued`)) {
        if (!(is.character(`queued`) && length(`queued`) == 1)) {
          stop(paste("Error! Invalid data for `queued`. Must be a string:", `queued`))
        }
        self$`queued` <- `queued`
      }
      if (!is.null(`mxHostname`)) {
        if (!(is.character(`mxHostname`) && length(`mxHostname`) == 1)) {
          stop(paste("Error! Invalid data for `mxHostname`. Must be a string:", `mxHostname`))
        }
        self$`mxHostname` <- `mxHostname`
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
    #' @return MailLogEntry as a base R list.
    #' @examples
    #' # convert array of MailLogEntry (x) to a data frame
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
    #' Convert MailLogEntry to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      MailLogEntryObject <- list()
      if (!is.null(self$`_id`)) {
        MailLogEntryObject[["_id"]] <-
          self$`_id`
      }
      if (!is.null(self$`id`)) {
        MailLogEntryObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`from`)) {
        MailLogEntryObject[["from"]] <-
          self$`from`
      }
      if (!is.null(self$`to`)) {
        MailLogEntryObject[["to"]] <-
          self$`to`
      }
      if (!is.null(self$`created`)) {
        MailLogEntryObject[["created"]] <-
          self$`created`
      }
      if (!is.null(self$`time`)) {
        MailLogEntryObject[["time"]] <-
          self$`time`
      }
      if (!is.null(self$`user`)) {
        MailLogEntryObject[["user"]] <-
          self$`user`
      }
      if (!is.null(self$`transtype`)) {
        MailLogEntryObject[["transtype"]] <-
          self$`transtype`
      }
      if (!is.null(self$`origin`)) {
        MailLogEntryObject[["origin"]] <-
          self$`origin`
      }
      if (!is.null(self$`interface`)) {
        MailLogEntryObject[["interface"]] <-
          self$`interface`
      }
      if (!is.null(self$`subject`)) {
        MailLogEntryObject[["subject"]] <-
          self$`subject`
      }
      if (!is.null(self$`messageId`)) {
        MailLogEntryObject[["messageId"]] <-
          self$`messageId`
      }
      if (!is.null(self$`sendingZone`)) {
        MailLogEntryObject[["sendingZone"]] <-
          self$`sendingZone`
      }
      if (!is.null(self$`bodySize`)) {
        MailLogEntryObject[["bodySize"]] <-
          self$`bodySize`
      }
      if (!is.null(self$`seq`)) {
        MailLogEntryObject[["seq"]] <-
          self$`seq`
      }
      if (!is.null(self$`delivered`)) {
        MailLogEntryObject[["delivered"]] <-
          self$`delivered`
      }
      if (!is.null(self$`code`)) {
        MailLogEntryObject[["code"]] <-
          self$`code`
      }
      if (!is.null(self$`recipient`)) {
        MailLogEntryObject[["recipient"]] <-
          self$`recipient`
      }
      if (!is.null(self$`response`)) {
        MailLogEntryObject[["response"]] <-
          self$`response`
      }
      if (!is.null(self$`domain`)) {
        MailLogEntryObject[["domain"]] <-
          self$`domain`
      }
      if (!is.null(self$`locked`)) {
        MailLogEntryObject[["locked"]] <-
          self$`locked`
      }
      if (!is.null(self$`lockTime`)) {
        MailLogEntryObject[["lockTime"]] <-
          self$`lockTime`
      }
      if (!is.null(self$`assigned`)) {
        MailLogEntryObject[["assigned"]] <-
          self$`assigned`
      }
      if (!is.null(self$`queued`)) {
        MailLogEntryObject[["queued"]] <-
          self$`queued`
      }
      if (!is.null(self$`mxHostname`)) {
        MailLogEntryObject[["mxHostname"]] <-
          self$`mxHostname`
      }
      return(MailLogEntryObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of MailLogEntry
    #'
    #' @param input_json the JSON input
    #' @return the instance of MailLogEntry
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`_id`)) {
        self$`_id` <- this_object$`_id`
      }
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`from`)) {
        self$`from` <- this_object$`from`
      }
      if (!is.null(this_object$`to`)) {
        self$`to` <- this_object$`to`
      }
      if (!is.null(this_object$`created`)) {
        self$`created` <- this_object$`created`
      }
      if (!is.null(this_object$`time`)) {
        self$`time` <- this_object$`time`
      }
      if (!is.null(this_object$`user`)) {
        self$`user` <- this_object$`user`
      }
      if (!is.null(this_object$`transtype`)) {
        self$`transtype` <- this_object$`transtype`
      }
      if (!is.null(this_object$`origin`)) {
        self$`origin` <- this_object$`origin`
      }
      if (!is.null(this_object$`interface`)) {
        self$`interface` <- this_object$`interface`
      }
      if (!is.null(this_object$`subject`)) {
        self$`subject` <- this_object$`subject`
      }
      if (!is.null(this_object$`messageId`)) {
        self$`messageId` <- this_object$`messageId`
      }
      if (!is.null(this_object$`sendingZone`)) {
        self$`sendingZone` <- this_object$`sendingZone`
      }
      if (!is.null(this_object$`bodySize`)) {
        self$`bodySize` <- this_object$`bodySize`
      }
      if (!is.null(this_object$`seq`)) {
        self$`seq` <- this_object$`seq`
      }
      if (!is.null(this_object$`delivered`)) {
        self$`delivered` <- this_object$`delivered`
      }
      if (!is.null(this_object$`code`)) {
        self$`code` <- this_object$`code`
      }
      if (!is.null(this_object$`recipient`)) {
        self$`recipient` <- this_object$`recipient`
      }
      if (!is.null(this_object$`response`)) {
        self$`response` <- this_object$`response`
      }
      if (!is.null(this_object$`domain`)) {
        self$`domain` <- this_object$`domain`
      }
      if (!is.null(this_object$`locked`)) {
        self$`locked` <- this_object$`locked`
      }
      if (!is.null(this_object$`lockTime`)) {
        self$`lockTime` <- this_object$`lockTime`
      }
      if (!is.null(this_object$`assigned`)) {
        self$`assigned` <- this_object$`assigned`
      }
      if (!is.null(this_object$`queued`)) {
        self$`queued` <- this_object$`queued`
      }
      if (!is.null(this_object$`mxHostname`)) {
        self$`mxHostname` <- this_object$`mxHostname`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return MailLogEntry in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of MailLogEntry
    #'
    #' @param input_json the JSON input
    #' @return the instance of MailLogEntry
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`_id` <- this_object$`_id`
      self$`id` <- this_object$`id`
      self$`from` <- this_object$`from`
      self$`to` <- this_object$`to`
      self$`created` <- this_object$`created`
      self$`time` <- this_object$`time`
      self$`user` <- this_object$`user`
      self$`transtype` <- this_object$`transtype`
      self$`origin` <- this_object$`origin`
      self$`interface` <- this_object$`interface`
      self$`subject` <- this_object$`subject`
      self$`messageId` <- this_object$`messageId`
      self$`sendingZone` <- this_object$`sendingZone`
      self$`bodySize` <- this_object$`bodySize`
      self$`seq` <- this_object$`seq`
      self$`delivered` <- this_object$`delivered`
      self$`code` <- this_object$`code`
      self$`recipient` <- this_object$`recipient`
      self$`response` <- this_object$`response`
      self$`domain` <- this_object$`domain`
      self$`locked` <- this_object$`locked`
      self$`lockTime` <- this_object$`lockTime`
      self$`assigned` <- this_object$`assigned`
      self$`queued` <- this_object$`queued`
      self$`mxHostname` <- this_object$`mxHostname`
      self
    },

    #' @description
    #' Validate JSON input with respect to MailLogEntry and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `_id`
      if (!is.null(input_json$`_id`)) {
        if (!(is.numeric(input_json$`_id`) && length(input_json$`_id`) == 1)) {
          stop(paste("Error! Invalid data for `_id`. Must be an integer:", input_json$`_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for MailLogEntry: the required field `_id` is missing."))
      }
      # check the required field `id`
      if (!is.null(input_json$`id`)) {
        if (!(is.character(input_json$`id`) && length(input_json$`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", input_json$`id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for MailLogEntry: the required field `id` is missing."))
      }
      # check the required field `from`
      if (!is.null(input_json$`from`)) {
        if (!(is.character(input_json$`from`) && length(input_json$`from`) == 1)) {
          stop(paste("Error! Invalid data for `from`. Must be a string:", input_json$`from`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for MailLogEntry: the required field `from` is missing."))
      }
      # check the required field `to`
      if (!is.null(input_json$`to`)) {
        if (!(is.character(input_json$`to`) && length(input_json$`to`) == 1)) {
          stop(paste("Error! Invalid data for `to`. Must be a string:", input_json$`to`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for MailLogEntry: the required field `to` is missing."))
      }
      # check the required field `created`
      if (!is.null(input_json$`created`)) {
        if (!(is.character(input_json$`created`) && length(input_json$`created`) == 1)) {
          stop(paste("Error! Invalid data for `created`. Must be a string:", input_json$`created`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for MailLogEntry: the required field `created` is missing."))
      }
      # check the required field `time`
      if (!is.null(input_json$`time`)) {
        if (!(is.numeric(input_json$`time`) && length(input_json$`time`) == 1)) {
          stop(paste("Error! Invalid data for `time`. Must be an integer:", input_json$`time`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for MailLogEntry: the required field `time` is missing."))
      }
      # check the required field `user`
      if (!is.null(input_json$`user`)) {
        if (!(is.character(input_json$`user`) && length(input_json$`user`) == 1)) {
          stop(paste("Error! Invalid data for `user`. Must be a string:", input_json$`user`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for MailLogEntry: the required field `user` is missing."))
      }
      # check the required field `transtype`
      if (!is.null(input_json$`transtype`)) {
        if (!(is.character(input_json$`transtype`) && length(input_json$`transtype`) == 1)) {
          stop(paste("Error! Invalid data for `transtype`. Must be a string:", input_json$`transtype`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for MailLogEntry: the required field `transtype` is missing."))
      }
      # check the required field `origin`
      if (!is.null(input_json$`origin`)) {
        if (!(is.character(input_json$`origin`) && length(input_json$`origin`) == 1)) {
          stop(paste("Error! Invalid data for `origin`. Must be a string:", input_json$`origin`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for MailLogEntry: the required field `origin` is missing."))
      }
      # check the required field `interface`
      if (!is.null(input_json$`interface`)) {
        if (!(is.character(input_json$`interface`) && length(input_json$`interface`) == 1)) {
          stop(paste("Error! Invalid data for `interface`. Must be a string:", input_json$`interface`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for MailLogEntry: the required field `interface` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of MailLogEntry
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `_id` is null
      if (is.null(self$`_id`)) {
        return(FALSE)
      }

      # check if the required `id` is null
      if (is.null(self$`id`)) {
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

      # check if the required `created` is null
      if (is.null(self$`created`)) {
        return(FALSE)
      }

      # check if the required `time` is null
      if (is.null(self$`time`)) {
        return(FALSE)
      }

      # check if the required `user` is null
      if (is.null(self$`user`)) {
        return(FALSE)
      }

      # check if the required `transtype` is null
      if (is.null(self$`transtype`)) {
        return(FALSE)
      }

      # check if the required `origin` is null
      if (is.null(self$`origin`)) {
        return(FALSE)
      }

      # check if the required `interface` is null
      if (is.null(self$`interface`)) {
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
      # check if the required `_id` is null
      if (is.null(self$`_id`)) {
        invalid_fields["_id"] <- "Non-nullable required field `_id` cannot be null."
      }

      # check if the required `id` is null
      if (is.null(self$`id`)) {
        invalid_fields["id"] <- "Non-nullable required field `id` cannot be null."
      }

      # check if the required `from` is null
      if (is.null(self$`from`)) {
        invalid_fields["from"] <- "Non-nullable required field `from` cannot be null."
      }

      # check if the required `to` is null
      if (is.null(self$`to`)) {
        invalid_fields["to"] <- "Non-nullable required field `to` cannot be null."
      }

      # check if the required `created` is null
      if (is.null(self$`created`)) {
        invalid_fields["created"] <- "Non-nullable required field `created` cannot be null."
      }

      # check if the required `time` is null
      if (is.null(self$`time`)) {
        invalid_fields["time"] <- "Non-nullable required field `time` cannot be null."
      }

      # check if the required `user` is null
      if (is.null(self$`user`)) {
        invalid_fields["user"] <- "Non-nullable required field `user` cannot be null."
      }

      # check if the required `transtype` is null
      if (is.null(self$`transtype`)) {
        invalid_fields["transtype"] <- "Non-nullable required field `transtype` cannot be null."
      }

      # check if the required `origin` is null
      if (is.null(self$`origin`)) {
        invalid_fields["origin"] <- "Non-nullable required field `origin` cannot be null."
      }

      # check if the required `interface` is null
      if (is.null(self$`interface`)) {
        invalid_fields["interface"] <- "Non-nullable required field `interface` cannot be null."
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
# MailLogEntry$unlock()
#
## Below is an example to define the print function
# MailLogEntry$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# MailLogEntry$lock()

