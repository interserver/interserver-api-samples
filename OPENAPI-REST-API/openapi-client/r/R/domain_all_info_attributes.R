#' Create a new DomainAllInfoAttributes
#'
#' @description
#' DomainAllInfoAttributes Class
#'
#' @docType class
#' @title DomainAllInfoAttributes
#' @description DomainAllInfoAttributes Class
#' @format An \code{R6Class} generator object
#' @field contact_set  \link{DomainAllInfoAttributesContactSet} [optional]
#' @field registry_createdate  character [optional]
#' @field registry_expiredate  character [optional]
#' @field tld_data  character [optional]
#' @field let_expire  character [optional]
#' @field auto_renew  character [optional]
#' @field sponsoring_rsp  character [optional]
#' @field gdpr_consent_status  character [optional]
#' @field nameserver_list  list(\link{DomainNameServer}) [optional]
#' @field registry_updatedate  character [optional]
#' @field affiliate_id  character [optional]
#' @field expiredate  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DomainAllInfoAttributes <- R6::R6Class(
  "DomainAllInfoAttributes",
  public = list(
    `contact_set` = NULL,
    `registry_createdate` = NULL,
    `registry_expiredate` = NULL,
    `tld_data` = NULL,
    `let_expire` = NULL,
    `auto_renew` = NULL,
    `sponsoring_rsp` = NULL,
    `gdpr_consent_status` = NULL,
    `nameserver_list` = NULL,
    `registry_updatedate` = NULL,
    `affiliate_id` = NULL,
    `expiredate` = NULL,

    #' @description
    #' Initialize a new DomainAllInfoAttributes class.
    #'
    #' @param contact_set contact_set
    #' @param registry_createdate registry_createdate
    #' @param registry_expiredate registry_expiredate
    #' @param tld_data tld_data
    #' @param let_expire let_expire
    #' @param auto_renew auto_renew
    #' @param sponsoring_rsp sponsoring_rsp
    #' @param gdpr_consent_status gdpr_consent_status
    #' @param nameserver_list nameserver_list
    #' @param registry_updatedate registry_updatedate
    #' @param affiliate_id affiliate_id
    #' @param expiredate expiredate
    #' @param ... Other optional arguments.
    initialize = function(`contact_set` = NULL, `registry_createdate` = NULL, `registry_expiredate` = NULL, `tld_data` = NULL, `let_expire` = NULL, `auto_renew` = NULL, `sponsoring_rsp` = NULL, `gdpr_consent_status` = NULL, `nameserver_list` = NULL, `registry_updatedate` = NULL, `affiliate_id` = NULL, `expiredate` = NULL, ...) {
      if (!is.null(`contact_set`)) {
        stopifnot(R6::is.R6(`contact_set`))
        self$`contact_set` <- `contact_set`
      }
      if (!is.null(`registry_createdate`)) {
        if (!(is.character(`registry_createdate`) && length(`registry_createdate`) == 1)) {
          stop(paste("Error! Invalid data for `registry_createdate`. Must be a string:", `registry_createdate`))
        }
        self$`registry_createdate` <- `registry_createdate`
      }
      if (!is.null(`registry_expiredate`)) {
        if (!(is.character(`registry_expiredate`) && length(`registry_expiredate`) == 1)) {
          stop(paste("Error! Invalid data for `registry_expiredate`. Must be a string:", `registry_expiredate`))
        }
        self$`registry_expiredate` <- `registry_expiredate`
      }
      if (!is.null(`tld_data`)) {
        if (!(is.character(`tld_data`) && length(`tld_data`) == 1)) {
          stop(paste("Error! Invalid data for `tld_data`. Must be a string:", `tld_data`))
        }
        self$`tld_data` <- `tld_data`
      }
      if (!is.null(`let_expire`)) {
        if (!(is.character(`let_expire`) && length(`let_expire`) == 1)) {
          stop(paste("Error! Invalid data for `let_expire`. Must be a string:", `let_expire`))
        }
        self$`let_expire` <- `let_expire`
      }
      if (!is.null(`auto_renew`)) {
        if (!(is.character(`auto_renew`) && length(`auto_renew`) == 1)) {
          stop(paste("Error! Invalid data for `auto_renew`. Must be a string:", `auto_renew`))
        }
        self$`auto_renew` <- `auto_renew`
      }
      if (!is.null(`sponsoring_rsp`)) {
        if (!(is.character(`sponsoring_rsp`) && length(`sponsoring_rsp`) == 1)) {
          stop(paste("Error! Invalid data for `sponsoring_rsp`. Must be a string:", `sponsoring_rsp`))
        }
        self$`sponsoring_rsp` <- `sponsoring_rsp`
      }
      if (!is.null(`gdpr_consent_status`)) {
        if (!(is.character(`gdpr_consent_status`) && length(`gdpr_consent_status`) == 1)) {
          stop(paste("Error! Invalid data for `gdpr_consent_status`. Must be a string:", `gdpr_consent_status`))
        }
        self$`gdpr_consent_status` <- `gdpr_consent_status`
      }
      if (!is.null(`nameserver_list`)) {
        stopifnot(is.vector(`nameserver_list`), length(`nameserver_list`) != 0)
        sapply(`nameserver_list`, function(x) stopifnot(R6::is.R6(x)))
        self$`nameserver_list` <- `nameserver_list`
      }
      if (!is.null(`registry_updatedate`)) {
        if (!(is.character(`registry_updatedate`) && length(`registry_updatedate`) == 1)) {
          stop(paste("Error! Invalid data for `registry_updatedate`. Must be a string:", `registry_updatedate`))
        }
        self$`registry_updatedate` <- `registry_updatedate`
      }
      if (!is.null(`affiliate_id`)) {
        if (!(is.character(`affiliate_id`) && length(`affiliate_id`) == 1)) {
          stop(paste("Error! Invalid data for `affiliate_id`. Must be a string:", `affiliate_id`))
        }
        self$`affiliate_id` <- `affiliate_id`
      }
      if (!is.null(`expiredate`)) {
        if (!(is.character(`expiredate`) && length(`expiredate`) == 1)) {
          stop(paste("Error! Invalid data for `expiredate`. Must be a string:", `expiredate`))
        }
        self$`expiredate` <- `expiredate`
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
    #' @return DomainAllInfoAttributes as a base R list.
    #' @examples
    #' # convert array of DomainAllInfoAttributes (x) to a data frame
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
    #' Convert DomainAllInfoAttributes to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      DomainAllInfoAttributesObject <- list()
      if (!is.null(self$`contact_set`)) {
        DomainAllInfoAttributesObject[["contact_set"]] <-
          self$extractSimpleType(self$`contact_set`)
      }
      if (!is.null(self$`registry_createdate`)) {
        DomainAllInfoAttributesObject[["registry_createdate"]] <-
          self$`registry_createdate`
      }
      if (!is.null(self$`registry_expiredate`)) {
        DomainAllInfoAttributesObject[["registry_expiredate"]] <-
          self$`registry_expiredate`
      }
      if (!is.null(self$`tld_data`)) {
        DomainAllInfoAttributesObject[["tld_data"]] <-
          self$`tld_data`
      }
      if (!is.null(self$`let_expire`)) {
        DomainAllInfoAttributesObject[["let_expire"]] <-
          self$`let_expire`
      }
      if (!is.null(self$`auto_renew`)) {
        DomainAllInfoAttributesObject[["auto_renew"]] <-
          self$`auto_renew`
      }
      if (!is.null(self$`sponsoring_rsp`)) {
        DomainAllInfoAttributesObject[["sponsoring_rsp"]] <-
          self$`sponsoring_rsp`
      }
      if (!is.null(self$`gdpr_consent_status`)) {
        DomainAllInfoAttributesObject[["gdpr_consent_status"]] <-
          self$`gdpr_consent_status`
      }
      if (!is.null(self$`nameserver_list`)) {
        DomainAllInfoAttributesObject[["nameserver_list"]] <-
          self$extractSimpleType(self$`nameserver_list`)
      }
      if (!is.null(self$`registry_updatedate`)) {
        DomainAllInfoAttributesObject[["registry_updatedate"]] <-
          self$`registry_updatedate`
      }
      if (!is.null(self$`affiliate_id`)) {
        DomainAllInfoAttributesObject[["affiliate_id"]] <-
          self$`affiliate_id`
      }
      if (!is.null(self$`expiredate`)) {
        DomainAllInfoAttributesObject[["expiredate"]] <-
          self$`expiredate`
      }
      return(DomainAllInfoAttributesObject)
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
    #' Deserialize JSON string into an instance of DomainAllInfoAttributes
    #'
    #' @param input_json the JSON input
    #' @return the instance of DomainAllInfoAttributes
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`contact_set`)) {
        `contact_set_object` <- DomainAllInfoAttributesContactSet$new()
        `contact_set_object`$fromJSON(jsonlite::toJSON(this_object$`contact_set`, auto_unbox = TRUE, digits = NA))
        self$`contact_set` <- `contact_set_object`
      }
      if (!is.null(this_object$`registry_createdate`)) {
        self$`registry_createdate` <- this_object$`registry_createdate`
      }
      if (!is.null(this_object$`registry_expiredate`)) {
        self$`registry_expiredate` <- this_object$`registry_expiredate`
      }
      if (!is.null(this_object$`tld_data`)) {
        self$`tld_data` <- this_object$`tld_data`
      }
      if (!is.null(this_object$`let_expire`)) {
        self$`let_expire` <- this_object$`let_expire`
      }
      if (!is.null(this_object$`auto_renew`)) {
        self$`auto_renew` <- this_object$`auto_renew`
      }
      if (!is.null(this_object$`sponsoring_rsp`)) {
        self$`sponsoring_rsp` <- this_object$`sponsoring_rsp`
      }
      if (!is.null(this_object$`gdpr_consent_status`)) {
        self$`gdpr_consent_status` <- this_object$`gdpr_consent_status`
      }
      if (!is.null(this_object$`nameserver_list`)) {
        self$`nameserver_list` <- ApiClient$new()$deserializeObj(this_object$`nameserver_list`, "array[DomainNameServer]", loadNamespace("interserverapi"))
      }
      if (!is.null(this_object$`registry_updatedate`)) {
        self$`registry_updatedate` <- this_object$`registry_updatedate`
      }
      if (!is.null(this_object$`affiliate_id`)) {
        self$`affiliate_id` <- this_object$`affiliate_id`
      }
      if (!is.null(this_object$`expiredate`)) {
        self$`expiredate` <- this_object$`expiredate`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return DomainAllInfoAttributes in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of DomainAllInfoAttributes
    #'
    #' @param input_json the JSON input
    #' @return the instance of DomainAllInfoAttributes
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`contact_set` <- DomainAllInfoAttributesContactSet$new()$fromJSON(jsonlite::toJSON(this_object$`contact_set`, auto_unbox = TRUE, digits = NA))
      self$`registry_createdate` <- this_object$`registry_createdate`
      self$`registry_expiredate` <- this_object$`registry_expiredate`
      self$`tld_data` <- this_object$`tld_data`
      self$`let_expire` <- this_object$`let_expire`
      self$`auto_renew` <- this_object$`auto_renew`
      self$`sponsoring_rsp` <- this_object$`sponsoring_rsp`
      self$`gdpr_consent_status` <- this_object$`gdpr_consent_status`
      self$`nameserver_list` <- ApiClient$new()$deserializeObj(this_object$`nameserver_list`, "array[DomainNameServer]", loadNamespace("interserverapi"))
      self$`registry_updatedate` <- this_object$`registry_updatedate`
      self$`affiliate_id` <- this_object$`affiliate_id`
      self$`expiredate` <- this_object$`expiredate`
      self
    },

    #' @description
    #' Validate JSON input with respect to DomainAllInfoAttributes and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of DomainAllInfoAttributes
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
# DomainAllInfoAttributes$unlock()
#
## Below is an example to define the print function
# DomainAllInfoAttributes$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# DomainAllInfoAttributes$lock()

