#' Create a new GetScrubIpDetails200Response
#'
#' @description
#' GetScrubIpDetails200Response Class
#'
#' @docType class
#' @title GetScrubIpDetails200Response
#' @description GetScrubIpDetails200Response Class
#' @format An \code{R6Class} generator object
#' @field serviceInfo  \link{GetScrubIpDetails200ResponseServiceInfo} [optional]
#' @field client_links  list(\link{GetScrubIpDetails200ResponseClientLinksInner}) [optional]
#' @field billingDetails  \link{GetScrubIpDetails200ResponseBillingDetails} [optional]
#' @field custCurrency  character [optional]
#' @field custCurrencySymbol  character [optional]
#' @field package  character [optional]
#' @field extraInfoTables  \link{GetScrubIpDetails200ResponseExtraInfoTables} [optional]
#' @field filter_firewall  \link{GetScrubIpDetails200ResponseFilterFirewall} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GetScrubIpDetails200Response <- R6::R6Class(
  "GetScrubIpDetails200Response",
  public = list(
    `serviceInfo` = NULL,
    `client_links` = NULL,
    `billingDetails` = NULL,
    `custCurrency` = NULL,
    `custCurrencySymbol` = NULL,
    `package` = NULL,
    `extraInfoTables` = NULL,
    `filter_firewall` = NULL,

    #' @description
    #' Initialize a new GetScrubIpDetails200Response class.
    #'
    #' @param serviceInfo serviceInfo
    #' @param client_links client_links
    #' @param billingDetails billingDetails
    #' @param custCurrency custCurrency
    #' @param custCurrencySymbol custCurrencySymbol
    #' @param package package
    #' @param extraInfoTables extraInfoTables
    #' @param filter_firewall filter_firewall
    #' @param ... Other optional arguments.
    initialize = function(`serviceInfo` = NULL, `client_links` = NULL, `billingDetails` = NULL, `custCurrency` = NULL, `custCurrencySymbol` = NULL, `package` = NULL, `extraInfoTables` = NULL, `filter_firewall` = NULL, ...) {
      if (!is.null(`serviceInfo`)) {
        stopifnot(R6::is.R6(`serviceInfo`))
        self$`serviceInfo` <- `serviceInfo`
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
      if (!is.null(`package`)) {
        if (!(is.character(`package`) && length(`package`) == 1)) {
          stop(paste("Error! Invalid data for `package`. Must be a string:", `package`))
        }
        self$`package` <- `package`
      }
      if (!is.null(`extraInfoTables`)) {
        stopifnot(R6::is.R6(`extraInfoTables`))
        self$`extraInfoTables` <- `extraInfoTables`
      }
      if (!is.null(`filter_firewall`)) {
        stopifnot(R6::is.R6(`filter_firewall`))
        self$`filter_firewall` <- `filter_firewall`
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
    #' @return GetScrubIpDetails200Response as a base R list.
    #' @examples
    #' # convert array of GetScrubIpDetails200Response (x) to a data frame
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
    #' Convert GetScrubIpDetails200Response to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      GetScrubIpDetails200ResponseObject <- list()
      if (!is.null(self$`serviceInfo`)) {
        GetScrubIpDetails200ResponseObject[["serviceInfo"]] <-
          self$extractSimpleType(self$`serviceInfo`)
      }
      if (!is.null(self$`client_links`)) {
        GetScrubIpDetails200ResponseObject[["client_links"]] <-
          self$extractSimpleType(self$`client_links`)
      }
      if (!is.null(self$`billingDetails`)) {
        GetScrubIpDetails200ResponseObject[["billingDetails"]] <-
          self$extractSimpleType(self$`billingDetails`)
      }
      if (!is.null(self$`custCurrency`)) {
        GetScrubIpDetails200ResponseObject[["custCurrency"]] <-
          self$`custCurrency`
      }
      if (!is.null(self$`custCurrencySymbol`)) {
        GetScrubIpDetails200ResponseObject[["custCurrencySymbol"]] <-
          self$`custCurrencySymbol`
      }
      if (!is.null(self$`package`)) {
        GetScrubIpDetails200ResponseObject[["package"]] <-
          self$`package`
      }
      if (!is.null(self$`extraInfoTables`)) {
        GetScrubIpDetails200ResponseObject[["extraInfoTables"]] <-
          self$extractSimpleType(self$`extraInfoTables`)
      }
      if (!is.null(self$`filter_firewall`)) {
        GetScrubIpDetails200ResponseObject[["filter_firewall"]] <-
          self$extractSimpleType(self$`filter_firewall`)
      }
      return(GetScrubIpDetails200ResponseObject)
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
    #' Deserialize JSON string into an instance of GetScrubIpDetails200Response
    #'
    #' @param input_json the JSON input
    #' @return the instance of GetScrubIpDetails200Response
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`serviceInfo`)) {
        `serviceinfo_object` <- GetScrubIpDetails200ResponseServiceInfo$new()
        `serviceinfo_object`$fromJSON(jsonlite::toJSON(this_object$`serviceInfo`, auto_unbox = TRUE, digits = NA))
        self$`serviceInfo` <- `serviceinfo_object`
      }
      if (!is.null(this_object$`client_links`)) {
        self$`client_links` <- ApiClient$new()$deserializeObj(this_object$`client_links`, "array[GetScrubIpDetails200ResponseClientLinksInner]", loadNamespace("interserverapi"))
      }
      if (!is.null(this_object$`billingDetails`)) {
        `billingdetails_object` <- GetScrubIpDetails200ResponseBillingDetails$new()
        `billingdetails_object`$fromJSON(jsonlite::toJSON(this_object$`billingDetails`, auto_unbox = TRUE, digits = NA))
        self$`billingDetails` <- `billingdetails_object`
      }
      if (!is.null(this_object$`custCurrency`)) {
        self$`custCurrency` <- this_object$`custCurrency`
      }
      if (!is.null(this_object$`custCurrencySymbol`)) {
        self$`custCurrencySymbol` <- this_object$`custCurrencySymbol`
      }
      if (!is.null(this_object$`package`)) {
        self$`package` <- this_object$`package`
      }
      if (!is.null(this_object$`extraInfoTables`)) {
        `extrainfotables_object` <- GetScrubIpDetails200ResponseExtraInfoTables$new()
        `extrainfotables_object`$fromJSON(jsonlite::toJSON(this_object$`extraInfoTables`, auto_unbox = TRUE, digits = NA))
        self$`extraInfoTables` <- `extrainfotables_object`
      }
      if (!is.null(this_object$`filter_firewall`)) {
        `filter_firewall_object` <- GetScrubIpDetails200ResponseFilterFirewall$new()
        `filter_firewall_object`$fromJSON(jsonlite::toJSON(this_object$`filter_firewall`, auto_unbox = TRUE, digits = NA))
        self$`filter_firewall` <- `filter_firewall_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return GetScrubIpDetails200Response in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of GetScrubIpDetails200Response
    #'
    #' @param input_json the JSON input
    #' @return the instance of GetScrubIpDetails200Response
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`serviceInfo` <- GetScrubIpDetails200ResponseServiceInfo$new()$fromJSON(jsonlite::toJSON(this_object$`serviceInfo`, auto_unbox = TRUE, digits = NA))
      self$`client_links` <- ApiClient$new()$deserializeObj(this_object$`client_links`, "array[GetScrubIpDetails200ResponseClientLinksInner]", loadNamespace("interserverapi"))
      self$`billingDetails` <- GetScrubIpDetails200ResponseBillingDetails$new()$fromJSON(jsonlite::toJSON(this_object$`billingDetails`, auto_unbox = TRUE, digits = NA))
      self$`custCurrency` <- this_object$`custCurrency`
      self$`custCurrencySymbol` <- this_object$`custCurrencySymbol`
      self$`package` <- this_object$`package`
      self$`extraInfoTables` <- GetScrubIpDetails200ResponseExtraInfoTables$new()$fromJSON(jsonlite::toJSON(this_object$`extraInfoTables`, auto_unbox = TRUE, digits = NA))
      self$`filter_firewall` <- GetScrubIpDetails200ResponseFilterFirewall$new()$fromJSON(jsonlite::toJSON(this_object$`filter_firewall`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to GetScrubIpDetails200Response and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of GetScrubIpDetails200Response
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
# GetScrubIpDetails200Response$unlock()
#
## Below is an example to define the print function
# GetScrubIpDetails200Response$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GetScrubIpDetails200Response$lock()

