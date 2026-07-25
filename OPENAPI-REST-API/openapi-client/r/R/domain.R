#' Create a new Domain
#'
#' @description
#' Full detail view of a domain service including billing, contacts, DNS, and configuration.
#'
#' @docType class
#' @title Domain
#' @description Domain Class
#' @format An \code{R6Class} generator object
#' @field serviceInfo  \link{DomainServiceInfo} [optional]
#' @field serviceTypes  named list(\link{DomainServiceType}) [optional]
#' @field client_links  list(\link{DomainClientLink}) [optional]
#' @field billingDetails  \link{DomainBillingDetails} [optional]
#' @field custCurrency  character [optional]
#' @field custCurrencySymbol  character [optional]
#' @field serviceExtra  \link{DomainBillingExtra} [optional]
#' @field extraInfoTables  \link{BackupExtraInfoTables} [optional]
#' @field serviceType  \link{DomainServiceType} [optional]
#' @field contact_details  \link{DomainContactDetails} [optional]
#' @field pwarning  character [optional]
#' @field transfer_info  character [optional]
#' @field errors  character [optional]
#' @field domain_logs  list(character) [optional]
#' @field allInfo  \link{DomainAllInfo} [optional]
#' @field registrarStatus  character [optional]
#' @field locked  character [optional]
#' @field whoisPrivacy  character [optional]
#' @field autoRenew  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Domain <- R6::R6Class(
  "Domain",
  public = list(
    `serviceInfo` = NULL,
    `serviceTypes` = NULL,
    `client_links` = NULL,
    `billingDetails` = NULL,
    `custCurrency` = NULL,
    `custCurrencySymbol` = NULL,
    `serviceExtra` = NULL,
    `extraInfoTables` = NULL,
    `serviceType` = NULL,
    `contact_details` = NULL,
    `pwarning` = NULL,
    `transfer_info` = NULL,
    `errors` = NULL,
    `domain_logs` = NULL,
    `allInfo` = NULL,
    `registrarStatus` = NULL,
    `locked` = NULL,
    `whoisPrivacy` = NULL,
    `autoRenew` = NULL,

    #' @description
    #' Initialize a new Domain class.
    #'
    #' @param serviceInfo serviceInfo
    #' @param serviceTypes serviceTypes
    #' @param client_links client_links
    #' @param billingDetails billingDetails
    #' @param custCurrency custCurrency
    #' @param custCurrencySymbol custCurrencySymbol
    #' @param serviceExtra serviceExtra
    #' @param extraInfoTables extraInfoTables
    #' @param serviceType serviceType
    #' @param contact_details contact_details
    #' @param pwarning pwarning
    #' @param transfer_info transfer_info
    #' @param errors errors
    #' @param domain_logs domain_logs
    #' @param allInfo allInfo
    #' @param registrarStatus registrarStatus
    #' @param locked locked
    #' @param whoisPrivacy whoisPrivacy
    #' @param autoRenew autoRenew
    #' @param ... Other optional arguments.
    initialize = function(`serviceInfo` = NULL, `serviceTypes` = NULL, `client_links` = NULL, `billingDetails` = NULL, `custCurrency` = NULL, `custCurrencySymbol` = NULL, `serviceExtra` = NULL, `extraInfoTables` = NULL, `serviceType` = NULL, `contact_details` = NULL, `pwarning` = NULL, `transfer_info` = NULL, `errors` = NULL, `domain_logs` = NULL, `allInfo` = NULL, `registrarStatus` = NULL, `locked` = NULL, `whoisPrivacy` = NULL, `autoRenew` = NULL, ...) {
      if (!is.null(`serviceInfo`)) {
        stopifnot(R6::is.R6(`serviceInfo`))
        self$`serviceInfo` <- `serviceInfo`
      }
      if (!is.null(`serviceTypes`)) {
        stopifnot(is.vector(`serviceTypes`), length(`serviceTypes`) != 0)
        sapply(`serviceTypes`, function(x) stopifnot(R6::is.R6(x)))
        self$`serviceTypes` <- `serviceTypes`
      }
      if (!is.null(`client_links`)) {
        stopifnot(is.vector(`client_links`), length(`client_links`) != 0)
        sapply(`client_links`, function(x) stopifnot(R6::is.R6(x)))
        self$`client_links` <- `client_links`
      }
      if (!is.null(`billingDetails`)) {
        stopifnot(R6::is.R6(`billingDetails`))
        self$`billingDetails` <- `billingDetails`
      }
      if (!is.null(`custCurrency`)) {
        if (!(is.character(`custCurrency`) && length(`custCurrency`) == 1)) {
          stop(paste("Error! Invalid data for `custCurrency`. Must be a string:", `custCurrency`))
        }
        self$`custCurrency` <- `custCurrency`
      }
      if (!is.null(`custCurrencySymbol`)) {
        if (!(is.character(`custCurrencySymbol`) && length(`custCurrencySymbol`) == 1)) {
          stop(paste("Error! Invalid data for `custCurrencySymbol`. Must be a string:", `custCurrencySymbol`))
        }
        self$`custCurrencySymbol` <- `custCurrencySymbol`
      }
      if (!is.null(`serviceExtra`)) {
        stopifnot(R6::is.R6(`serviceExtra`))
        self$`serviceExtra` <- `serviceExtra`
      }
      if (!is.null(`extraInfoTables`)) {
        stopifnot(R6::is.R6(`extraInfoTables`))
        self$`extraInfoTables` <- `extraInfoTables`
      }
      if (!is.null(`serviceType`)) {
        stopifnot(R6::is.R6(`serviceType`))
        self$`serviceType` <- `serviceType`
      }
      if (!is.null(`contact_details`)) {
        stopifnot(R6::is.R6(`contact_details`))
        self$`contact_details` <- `contact_details`
      }
      if (!is.null(`pwarning`)) {
        if (!(is.character(`pwarning`) && length(`pwarning`) == 1)) {
          stop(paste("Error! Invalid data for `pwarning`. Must be a string:", `pwarning`))
        }
        self$`pwarning` <- `pwarning`
      }
      if (!is.null(`transfer_info`)) {
        if (!(is.character(`transfer_info`) && length(`transfer_info`) == 1)) {
          stop(paste("Error! Invalid data for `transfer_info`. Must be a string:", `transfer_info`))
        }
        self$`transfer_info` <- `transfer_info`
      }
      if (!is.null(`errors`)) {
        if (!(is.logical(`errors`) && length(`errors`) == 1)) {
          stop(paste("Error! Invalid data for `errors`. Must be a boolean:", `errors`))
        }
        self$`errors` <- `errors`
      }
      if (!is.null(`domain_logs`)) {
        stopifnot(is.vector(`domain_logs`), length(`domain_logs`) != 0)
        sapply(`domain_logs`, function(x) stopifnot(is.character(x)))
        self$`domain_logs` <- `domain_logs`
      }
      if (!is.null(`allInfo`)) {
        stopifnot(R6::is.R6(`allInfo`))
        self$`allInfo` <- `allInfo`
      }
      if (!is.null(`registrarStatus`)) {
        if (!(is.character(`registrarStatus`) && length(`registrarStatus`) == 1)) {
          stop(paste("Error! Invalid data for `registrarStatus`. Must be a string:", `registrarStatus`))
        }
        self$`registrarStatus` <- `registrarStatus`
      }
      if (!is.null(`locked`)) {
        if (!(is.character(`locked`) && length(`locked`) == 1)) {
          stop(paste("Error! Invalid data for `locked`. Must be a string:", `locked`))
        }
        self$`locked` <- `locked`
      }
      if (!is.null(`whoisPrivacy`)) {
        if (!(is.character(`whoisPrivacy`) && length(`whoisPrivacy`) == 1)) {
          stop(paste("Error! Invalid data for `whoisPrivacy`. Must be a string:", `whoisPrivacy`))
        }
        self$`whoisPrivacy` <- `whoisPrivacy`
      }
      if (!is.null(`autoRenew`)) {
        if (!(is.character(`autoRenew`) && length(`autoRenew`) == 1)) {
          stop(paste("Error! Invalid data for `autoRenew`. Must be a string:", `autoRenew`))
        }
        self$`autoRenew` <- `autoRenew`
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
    #' @return Domain as a base R list.
    #' @examples
    #' # convert array of Domain (x) to a data frame
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
    #' Convert Domain to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      DomainObject <- list()
      if (!is.null(self$`serviceInfo`)) {
        DomainObject[["serviceInfo"]] <-
          self$extractSimpleType(self$`serviceInfo`)
      }
      if (!is.null(self$`serviceTypes`)) {
        DomainObject[["serviceTypes"]] <-
          self$extractSimpleType(self$`serviceTypes`)
      }
      if (!is.null(self$`client_links`)) {
        DomainObject[["client_links"]] <-
          self$extractSimpleType(self$`client_links`)
      }
      if (!is.null(self$`billingDetails`)) {
        DomainObject[["billingDetails"]] <-
          self$extractSimpleType(self$`billingDetails`)
      }
      if (!is.null(self$`custCurrency`)) {
        DomainObject[["custCurrency"]] <-
          self$`custCurrency`
      }
      if (!is.null(self$`custCurrencySymbol`)) {
        DomainObject[["custCurrencySymbol"]] <-
          self$`custCurrencySymbol`
      }
      if (!is.null(self$`serviceExtra`)) {
        DomainObject[["serviceExtra"]] <-
          self$extractSimpleType(self$`serviceExtra`)
      }
      if (!is.null(self$`extraInfoTables`)) {
        DomainObject[["extraInfoTables"]] <-
          self$extractSimpleType(self$`extraInfoTables`)
      }
      if (!is.null(self$`serviceType`)) {
        DomainObject[["serviceType"]] <-
          self$extractSimpleType(self$`serviceType`)
      }
      if (!is.null(self$`contact_details`)) {
        DomainObject[["contact_details"]] <-
          self$extractSimpleType(self$`contact_details`)
      }
      if (!is.null(self$`pwarning`)) {
        DomainObject[["pwarning"]] <-
          self$`pwarning`
      }
      if (!is.null(self$`transfer_info`)) {
        DomainObject[["transfer_info"]] <-
          self$`transfer_info`
      }
      if (!is.null(self$`errors`)) {
        DomainObject[["errors"]] <-
          self$`errors`
      }
      if (!is.null(self$`domain_logs`)) {
        DomainObject[["domain_logs"]] <-
          self$`domain_logs`
      }
      if (!is.null(self$`allInfo`)) {
        DomainObject[["allInfo"]] <-
          self$extractSimpleType(self$`allInfo`)
      }
      if (!is.null(self$`registrarStatus`)) {
        DomainObject[["registrarStatus"]] <-
          self$`registrarStatus`
      }
      if (!is.null(self$`locked`)) {
        DomainObject[["locked"]] <-
          self$`locked`
      }
      if (!is.null(self$`whoisPrivacy`)) {
        DomainObject[["whoisPrivacy"]] <-
          self$`whoisPrivacy`
      }
      if (!is.null(self$`autoRenew`)) {
        DomainObject[["autoRenew"]] <-
          self$`autoRenew`
      }
      return(DomainObject)
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
    #' Deserialize JSON string into an instance of Domain
    #'
    #' @param input_json the JSON input
    #' @return the instance of Domain
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`serviceInfo`)) {
        `serviceinfo_object` <- DomainServiceInfo$new()
        `serviceinfo_object`$fromJSON(jsonlite::toJSON(this_object$`serviceInfo`, auto_unbox = TRUE, digits = NA))
        self$`serviceInfo` <- `serviceinfo_object`
      }
      if (!is.null(this_object$`serviceTypes`)) {
        self$`serviceTypes` <- ApiClient$new()$deserializeObj(this_object$`serviceTypes`, "map(DomainServiceType)", loadNamespace("interserverapi"))
      }
      if (!is.null(this_object$`client_links`)) {
        self$`client_links` <- ApiClient$new()$deserializeObj(this_object$`client_links`, "array[DomainClientLink]", loadNamespace("interserverapi"))
      }
      if (!is.null(this_object$`billingDetails`)) {
        `billingdetails_object` <- DomainBillingDetails$new()
        `billingdetails_object`$fromJSON(jsonlite::toJSON(this_object$`billingDetails`, auto_unbox = TRUE, digits = NA))
        self$`billingDetails` <- `billingdetails_object`
      }
      if (!is.null(this_object$`custCurrency`)) {
        self$`custCurrency` <- this_object$`custCurrency`
      }
      if (!is.null(this_object$`custCurrencySymbol`)) {
        self$`custCurrencySymbol` <- this_object$`custCurrencySymbol`
      }
      if (!is.null(this_object$`serviceExtra`)) {
        `serviceextra_object` <- DomainBillingExtra$new()
        `serviceextra_object`$fromJSON(jsonlite::toJSON(this_object$`serviceExtra`, auto_unbox = TRUE, digits = NA))
        self$`serviceExtra` <- `serviceextra_object`
      }
      if (!is.null(this_object$`extraInfoTables`)) {
        `extrainfotables_object` <- BackupExtraInfoTables$new()
        `extrainfotables_object`$fromJSON(jsonlite::toJSON(this_object$`extraInfoTables`, auto_unbox = TRUE, digits = NA))
        self$`extraInfoTables` <- `extrainfotables_object`
      }
      if (!is.null(this_object$`serviceType`)) {
        `servicetype_object` <- DomainServiceType$new()
        `servicetype_object`$fromJSON(jsonlite::toJSON(this_object$`serviceType`, auto_unbox = TRUE, digits = NA))
        self$`serviceType` <- `servicetype_object`
      }
      if (!is.null(this_object$`contact_details`)) {
        `contact_details_object` <- DomainContactDetails$new()
        `contact_details_object`$fromJSON(jsonlite::toJSON(this_object$`contact_details`, auto_unbox = TRUE, digits = NA))
        self$`contact_details` <- `contact_details_object`
      }
      if (!is.null(this_object$`pwarning`)) {
        self$`pwarning` <- this_object$`pwarning`
      }
      if (!is.null(this_object$`transfer_info`)) {
        self$`transfer_info` <- this_object$`transfer_info`
      }
      if (!is.null(this_object$`errors`)) {
        self$`errors` <- this_object$`errors`
      }
      if (!is.null(this_object$`domain_logs`)) {
        self$`domain_logs` <- ApiClient$new()$deserializeObj(this_object$`domain_logs`, "array[character]", loadNamespace("interserverapi"))
      }
      if (!is.null(this_object$`allInfo`)) {
        `allinfo_object` <- DomainAllInfo$new()
        `allinfo_object`$fromJSON(jsonlite::toJSON(this_object$`allInfo`, auto_unbox = TRUE, digits = NA))
        self$`allInfo` <- `allinfo_object`
      }
      if (!is.null(this_object$`registrarStatus`)) {
        self$`registrarStatus` <- this_object$`registrarStatus`
      }
      if (!is.null(this_object$`locked`)) {
        self$`locked` <- this_object$`locked`
      }
      if (!is.null(this_object$`whoisPrivacy`)) {
        self$`whoisPrivacy` <- this_object$`whoisPrivacy`
      }
      if (!is.null(this_object$`autoRenew`)) {
        self$`autoRenew` <- this_object$`autoRenew`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Domain in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Domain
    #'
    #' @param input_json the JSON input
    #' @return the instance of Domain
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`serviceInfo` <- DomainServiceInfo$new()$fromJSON(jsonlite::toJSON(this_object$`serviceInfo`, auto_unbox = TRUE, digits = NA))
      self$`serviceTypes` <- ApiClient$new()$deserializeObj(this_object$`serviceTypes`, "map(DomainServiceType)", loadNamespace("interserverapi"))
      self$`client_links` <- ApiClient$new()$deserializeObj(this_object$`client_links`, "array[DomainClientLink]", loadNamespace("interserverapi"))
      self$`billingDetails` <- DomainBillingDetails$new()$fromJSON(jsonlite::toJSON(this_object$`billingDetails`, auto_unbox = TRUE, digits = NA))
      self$`custCurrency` <- this_object$`custCurrency`
      self$`custCurrencySymbol` <- this_object$`custCurrencySymbol`
      self$`serviceExtra` <- DomainBillingExtra$new()$fromJSON(jsonlite::toJSON(this_object$`serviceExtra`, auto_unbox = TRUE, digits = NA))
      self$`extraInfoTables` <- BackupExtraInfoTables$new()$fromJSON(jsonlite::toJSON(this_object$`extraInfoTables`, auto_unbox = TRUE, digits = NA))
      self$`serviceType` <- DomainServiceType$new()$fromJSON(jsonlite::toJSON(this_object$`serviceType`, auto_unbox = TRUE, digits = NA))
      self$`contact_details` <- DomainContactDetails$new()$fromJSON(jsonlite::toJSON(this_object$`contact_details`, auto_unbox = TRUE, digits = NA))
      self$`pwarning` <- this_object$`pwarning`
      self$`transfer_info` <- this_object$`transfer_info`
      self$`errors` <- this_object$`errors`
      self$`domain_logs` <- ApiClient$new()$deserializeObj(this_object$`domain_logs`, "array[character]", loadNamespace("interserverapi"))
      self$`allInfo` <- DomainAllInfo$new()$fromJSON(jsonlite::toJSON(this_object$`allInfo`, auto_unbox = TRUE, digits = NA))
      self$`registrarStatus` <- this_object$`registrarStatus`
      self$`locked` <- this_object$`locked`
      self$`whoisPrivacy` <- this_object$`whoisPrivacy`
      self$`autoRenew` <- this_object$`autoRenew`
      self
    },

    #' @description
    #' Validate JSON input with respect to Domain and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Domain
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
# Domain$unlock()
#
## Below is an example to define the print function
# Domain$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Domain$lock()

