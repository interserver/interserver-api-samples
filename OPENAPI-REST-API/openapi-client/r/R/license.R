#' Create a new License
#'
#' @description
#' License Class
#'
#' @docType class
#' @title License
#' @description License Class
#' @format An \code{R6Class} generator object
#' @field serviceInfo  \link{LicenseServiceInfo}
#' @field client_links  list(\link{LicenseClientLink})
#' @field billingDetails  \link{LicenseBillingDetails}
#' @field custCurrency Customer's currency character
#' @field custCurrencySymbol Currency symbol for customer character
#' @field package Package name character
#' @field serviceExtra Extra service information list(character)
#' @field extraInfoTables  \link{LicenseExtraInfoTables}
#' @field service_overview_extra Extra service overview information character
#' @field serviceType  \link{LicenseServiceType}
#' @field license_key License key character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
License <- R6::R6Class(
  "License",
  public = list(
    `serviceInfo` = NULL,
    `client_links` = NULL,
    `billingDetails` = NULL,
    `custCurrency` = NULL,
    `custCurrencySymbol` = NULL,
    `package` = NULL,
    `serviceExtra` = NULL,
    `extraInfoTables` = NULL,
    `service_overview_extra` = NULL,
    `serviceType` = NULL,
    `license_key` = NULL,

    #' @description
    #' Initialize a new License class.
    #'
    #' @param serviceInfo serviceInfo
    #' @param client_links client_links
    #' @param billingDetails billingDetails
    #' @param custCurrency Customer's currency
    #' @param custCurrencySymbol Currency symbol for customer
    #' @param package Package name
    #' @param serviceExtra Extra service information
    #' @param extraInfoTables extraInfoTables
    #' @param service_overview_extra Extra service overview information
    #' @param serviceType serviceType
    #' @param license_key License key
    #' @param ... Other optional arguments.
    initialize = function(`serviceInfo`, `client_links`, `billingDetails`, `custCurrency`, `custCurrencySymbol`, `package`, `serviceExtra`, `extraInfoTables`, `service_overview_extra`, `serviceType`, `license_key`, ...) {
      if (!missing(`serviceInfo`)) {
        stopifnot(R6::is.R6(`serviceInfo`))
        self$`serviceInfo` <- `serviceInfo`
      }
      if (!missing(`client_links`)) {
        stopifnot(is.vector(`client_links`), length(`client_links`) != 0)
        sapply(`client_links`, function(x) stopifnot(R6::is.R6(x)))
        self$`client_links` <- `client_links`
      }
      if (!missing(`billingDetails`)) {
        stopifnot(R6::is.R6(`billingDetails`))
        self$`billingDetails` <- `billingDetails`
      }
      if (!missing(`custCurrency`)) {
        if (!(is.character(`custCurrency`) && length(`custCurrency`) == 1)) {
          stop(paste("Error! Invalid data for `custCurrency`. Must be a string:", `custCurrency`))
        }
        self$`custCurrency` <- `custCurrency`
      }
      if (!missing(`custCurrencySymbol`)) {
        if (!(is.character(`custCurrencySymbol`) && length(`custCurrencySymbol`) == 1)) {
          stop(paste("Error! Invalid data for `custCurrencySymbol`. Must be a string:", `custCurrencySymbol`))
        }
        self$`custCurrencySymbol` <- `custCurrencySymbol`
      }
      if (!missing(`package`)) {
        if (!(is.character(`package`) && length(`package`) == 1)) {
          stop(paste("Error! Invalid data for `package`. Must be a string:", `package`))
        }
        self$`package` <- `package`
      }
      if (!missing(`serviceExtra`)) {
        stopifnot(is.vector(`serviceExtra`), length(`serviceExtra`) != 0)
        sapply(`serviceExtra`, function(x) stopifnot(is.character(x)))
        self$`serviceExtra` <- `serviceExtra`
      }
      if (!missing(`extraInfoTables`)) {
        stopifnot(R6::is.R6(`extraInfoTables`))
        self$`extraInfoTables` <- `extraInfoTables`
      }
      if (!missing(`service_overview_extra`)) {
        if (!(is.character(`service_overview_extra`) && length(`service_overview_extra`) == 1)) {
          stop(paste("Error! Invalid data for `service_overview_extra`. Must be a string:", `service_overview_extra`))
        }
        self$`service_overview_extra` <- `service_overview_extra`
      }
      if (!missing(`serviceType`)) {
        stopifnot(R6::is.R6(`serviceType`))
        self$`serviceType` <- `serviceType`
      }
      if (!missing(`license_key`)) {
        if (!(is.character(`license_key`) && length(`license_key`) == 1)) {
          stop(paste("Error! Invalid data for `license_key`. Must be a string:", `license_key`))
        }
        self$`license_key` <- `license_key`
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
    #' @return License as a base R list.
    #' @examples
    #' # convert array of License (x) to a data frame
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
    #' Convert License to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      LicenseObject <- list()
      if (!is.null(self$`serviceInfo`)) {
        LicenseObject[["serviceInfo"]] <-
          self$extractSimpleType(self$`serviceInfo`)
      }
      if (!is.null(self$`client_links`)) {
        LicenseObject[["client_links"]] <-
          self$extractSimpleType(self$`client_links`)
      }
      if (!is.null(self$`billingDetails`)) {
        LicenseObject[["billingDetails"]] <-
          self$extractSimpleType(self$`billingDetails`)
      }
      if (!is.null(self$`custCurrency`)) {
        LicenseObject[["custCurrency"]] <-
          self$`custCurrency`
      }
      if (!is.null(self$`custCurrencySymbol`)) {
        LicenseObject[["custCurrencySymbol"]] <-
          self$`custCurrencySymbol`
      }
      if (!is.null(self$`package`)) {
        LicenseObject[["package"]] <-
          self$`package`
      }
      if (!is.null(self$`serviceExtra`)) {
        LicenseObject[["serviceExtra"]] <-
          self$`serviceExtra`
      }
      if (!is.null(self$`extraInfoTables`)) {
        LicenseObject[["extraInfoTables"]] <-
          self$extractSimpleType(self$`extraInfoTables`)
      }
      if (!is.null(self$`service_overview_extra`)) {
        LicenseObject[["service_overview_extra"]] <-
          self$`service_overview_extra`
      }
      if (!is.null(self$`serviceType`)) {
        LicenseObject[["serviceType"]] <-
          self$extractSimpleType(self$`serviceType`)
      }
      if (!is.null(self$`license_key`)) {
        LicenseObject[["license_key"]] <-
          self$`license_key`
      }
      return(LicenseObject)
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
    #' Deserialize JSON string into an instance of License
    #'
    #' @param input_json the JSON input
    #' @return the instance of License
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`serviceInfo`)) {
        `serviceinfo_object` <- LicenseServiceInfo$new()
        `serviceinfo_object`$fromJSON(jsonlite::toJSON(this_object$`serviceInfo`, auto_unbox = TRUE, digits = NA))
        self$`serviceInfo` <- `serviceinfo_object`
      }
      if (!is.null(this_object$`client_links`)) {
        self$`client_links` <- ApiClient$new()$deserializeObj(this_object$`client_links`, "array[LicenseClientLink]", loadNamespace("interserverapi"))
      }
      if (!is.null(this_object$`billingDetails`)) {
        `billingdetails_object` <- LicenseBillingDetails$new()
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
      if (!is.null(this_object$`serviceExtra`)) {
        self$`serviceExtra` <- ApiClient$new()$deserializeObj(this_object$`serviceExtra`, "array[character]", loadNamespace("interserverapi"))
      }
      if (!is.null(this_object$`extraInfoTables`)) {
        `extrainfotables_object` <- LicenseExtraInfoTables$new()
        `extrainfotables_object`$fromJSON(jsonlite::toJSON(this_object$`extraInfoTables`, auto_unbox = TRUE, digits = NA))
        self$`extraInfoTables` <- `extrainfotables_object`
      }
      if (!is.null(this_object$`service_overview_extra`)) {
        self$`service_overview_extra` <- this_object$`service_overview_extra`
      }
      if (!is.null(this_object$`serviceType`)) {
        `servicetype_object` <- LicenseServiceType$new()
        `servicetype_object`$fromJSON(jsonlite::toJSON(this_object$`serviceType`, auto_unbox = TRUE, digits = NA))
        self$`serviceType` <- `servicetype_object`
      }
      if (!is.null(this_object$`license_key`)) {
        self$`license_key` <- this_object$`license_key`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return License in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of License
    #'
    #' @param input_json the JSON input
    #' @return the instance of License
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`serviceInfo` <- LicenseServiceInfo$new()$fromJSON(jsonlite::toJSON(this_object$`serviceInfo`, auto_unbox = TRUE, digits = NA))
      self$`client_links` <- ApiClient$new()$deserializeObj(this_object$`client_links`, "array[LicenseClientLink]", loadNamespace("interserverapi"))
      self$`billingDetails` <- LicenseBillingDetails$new()$fromJSON(jsonlite::toJSON(this_object$`billingDetails`, auto_unbox = TRUE, digits = NA))
      self$`custCurrency` <- this_object$`custCurrency`
      self$`custCurrencySymbol` <- this_object$`custCurrencySymbol`
      self$`package` <- this_object$`package`
      self$`serviceExtra` <- ApiClient$new()$deserializeObj(this_object$`serviceExtra`, "array[character]", loadNamespace("interserverapi"))
      self$`extraInfoTables` <- LicenseExtraInfoTables$new()$fromJSON(jsonlite::toJSON(this_object$`extraInfoTables`, auto_unbox = TRUE, digits = NA))
      self$`service_overview_extra` <- this_object$`service_overview_extra`
      self$`serviceType` <- LicenseServiceType$new()$fromJSON(jsonlite::toJSON(this_object$`serviceType`, auto_unbox = TRUE, digits = NA))
      self$`license_key` <- this_object$`license_key`
      self
    },

    #' @description
    #' Validate JSON input with respect to License and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `serviceInfo`
      if (!is.null(input_json$`serviceInfo`)) {
        stopifnot(R6::is.R6(input_json$`serviceInfo`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for License: the required field `serviceInfo` is missing."))
      }
      # check the required field `client_links`
      if (!is.null(input_json$`client_links`)) {
        stopifnot(is.vector(input_json$`client_links`), length(input_json$`client_links`) != 0)
        tmp <- sapply(input_json$`client_links`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for License: the required field `client_links` is missing."))
      }
      # check the required field `billingDetails`
      if (!is.null(input_json$`billingDetails`)) {
        stopifnot(R6::is.R6(input_json$`billingDetails`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for License: the required field `billingDetails` is missing."))
      }
      # check the required field `custCurrency`
      if (!is.null(input_json$`custCurrency`)) {
        if (!(is.character(input_json$`custCurrency`) && length(input_json$`custCurrency`) == 1)) {
          stop(paste("Error! Invalid data for `custCurrency`. Must be a string:", input_json$`custCurrency`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for License: the required field `custCurrency` is missing."))
      }
      # check the required field `custCurrencySymbol`
      if (!is.null(input_json$`custCurrencySymbol`)) {
        if (!(is.character(input_json$`custCurrencySymbol`) && length(input_json$`custCurrencySymbol`) == 1)) {
          stop(paste("Error! Invalid data for `custCurrencySymbol`. Must be a string:", input_json$`custCurrencySymbol`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for License: the required field `custCurrencySymbol` is missing."))
      }
      # check the required field `package`
      if (!is.null(input_json$`package`)) {
        if (!(is.character(input_json$`package`) && length(input_json$`package`) == 1)) {
          stop(paste("Error! Invalid data for `package`. Must be a string:", input_json$`package`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for License: the required field `package` is missing."))
      }
      # check the required field `serviceExtra`
      if (!is.null(input_json$`serviceExtra`)) {
        stopifnot(is.vector(input_json$`serviceExtra`), length(input_json$`serviceExtra`) != 0)
        tmp <- sapply(input_json$`serviceExtra`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for License: the required field `serviceExtra` is missing."))
      }
      # check the required field `extraInfoTables`
      if (!is.null(input_json$`extraInfoTables`)) {
        stopifnot(R6::is.R6(input_json$`extraInfoTables`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for License: the required field `extraInfoTables` is missing."))
      }
      # check the required field `service_overview_extra`
      if (!is.null(input_json$`service_overview_extra`)) {
        if (!(is.character(input_json$`service_overview_extra`) && length(input_json$`service_overview_extra`) == 1)) {
          stop(paste("Error! Invalid data for `service_overview_extra`. Must be a string:", input_json$`service_overview_extra`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for License: the required field `service_overview_extra` is missing."))
      }
      # check the required field `serviceType`
      if (!is.null(input_json$`serviceType`)) {
        stopifnot(R6::is.R6(input_json$`serviceType`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for License: the required field `serviceType` is missing."))
      }
      # check the required field `license_key`
      if (!is.null(input_json$`license_key`)) {
        if (!(is.character(input_json$`license_key`) && length(input_json$`license_key`) == 1)) {
          stop(paste("Error! Invalid data for `license_key`. Must be a string:", input_json$`license_key`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for License: the required field `license_key` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of License
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `serviceInfo` is null
      if (is.null(self$`serviceInfo`)) {
        return(FALSE)
      }

      # check if the required `client_links` is null
      if (is.null(self$`client_links`)) {
        return(FALSE)
      }

      # check if the required `billingDetails` is null
      if (is.null(self$`billingDetails`)) {
        return(FALSE)
      }

      # check if the required `custCurrency` is null
      if (is.null(self$`custCurrency`)) {
        return(FALSE)
      }

      # check if the required `custCurrencySymbol` is null
      if (is.null(self$`custCurrencySymbol`)) {
        return(FALSE)
      }

      # check if the required `package` is null
      if (is.null(self$`package`)) {
        return(FALSE)
      }

      # check if the required `serviceExtra` is null
      if (is.null(self$`serviceExtra`)) {
        return(FALSE)
      }

      # check if the required `extraInfoTables` is null
      if (is.null(self$`extraInfoTables`)) {
        return(FALSE)
      }

      # check if the required `service_overview_extra` is null
      if (is.null(self$`service_overview_extra`)) {
        return(FALSE)
      }

      # check if the required `serviceType` is null
      if (is.null(self$`serviceType`)) {
        return(FALSE)
      }

      # check if the required `license_key` is null
      if (is.null(self$`license_key`)) {
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
      # check if the required `serviceInfo` is null
      if (is.null(self$`serviceInfo`)) {
        invalid_fields["serviceInfo"] <- "Non-nullable required field `serviceInfo` cannot be null."
      }

      # check if the required `client_links` is null
      if (is.null(self$`client_links`)) {
        invalid_fields["client_links"] <- "Non-nullable required field `client_links` cannot be null."
      }

      # check if the required `billingDetails` is null
      if (is.null(self$`billingDetails`)) {
        invalid_fields["billingDetails"] <- "Non-nullable required field `billingDetails` cannot be null."
      }

      # check if the required `custCurrency` is null
      if (is.null(self$`custCurrency`)) {
        invalid_fields["custCurrency"] <- "Non-nullable required field `custCurrency` cannot be null."
      }

      # check if the required `custCurrencySymbol` is null
      if (is.null(self$`custCurrencySymbol`)) {
        invalid_fields["custCurrencySymbol"] <- "Non-nullable required field `custCurrencySymbol` cannot be null."
      }

      # check if the required `package` is null
      if (is.null(self$`package`)) {
        invalid_fields["package"] <- "Non-nullable required field `package` cannot be null."
      }

      # check if the required `serviceExtra` is null
      if (is.null(self$`serviceExtra`)) {
        invalid_fields["serviceExtra"] <- "Non-nullable required field `serviceExtra` cannot be null."
      }

      # check if the required `extraInfoTables` is null
      if (is.null(self$`extraInfoTables`)) {
        invalid_fields["extraInfoTables"] <- "Non-nullable required field `extraInfoTables` cannot be null."
      }

      # check if the required `service_overview_extra` is null
      if (is.null(self$`service_overview_extra`)) {
        invalid_fields["service_overview_extra"] <- "Non-nullable required field `service_overview_extra` cannot be null."
      }

      # check if the required `serviceType` is null
      if (is.null(self$`serviceType`)) {
        invalid_fields["serviceType"] <- "Non-nullable required field `serviceType` cannot be null."
      }

      # check if the required `license_key` is null
      if (is.null(self$`license_key`)) {
        invalid_fields["license_key"] <- "Non-nullable required field `license_key` cannot be null."
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
# License$unlock()
#
## Below is an example to define the print function
# License$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# License$lock()

