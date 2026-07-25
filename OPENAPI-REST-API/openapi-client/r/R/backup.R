#' Create a new Backup
#'
#' @description
#' Full detail view of a backup service including billing, service info, and configuration.
#'
#' @docType class
#' @title Backup
#' @description Backup Class
#' @format An \code{R6Class} generator object
#' @field serviceInfo  \link{BackupServiceInfo} [optional]
#' @field client_links  list(\link{BackupClientLink}) [optional]
#' @field billingDetails  \link{BackupBillingDetails} [optional]
#' @field custCurrency Customer's currency. character [optional]
#' @field custCurrencySymbol Customer's currency symbol. character [optional]
#' @field serviceMaster  \link{BackupServiceMaster} [optional]
#' @field package Package information. character [optional]
#' @field serviceExtra  character [optional]
#' @field extraInfoTables  \link{BackupExtraInfoTables} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Backup <- R6::R6Class(
  "Backup",
  public = list(
    `serviceInfo` = NULL,
    `client_links` = NULL,
    `billingDetails` = NULL,
    `custCurrency` = NULL,
    `custCurrencySymbol` = NULL,
    `serviceMaster` = NULL,
    `package` = NULL,
    `serviceExtra` = NULL,
    `extraInfoTables` = NULL,

    #' @description
    #' Initialize a new Backup class.
    #'
    #' @param serviceInfo serviceInfo
    #' @param client_links client_links
    #' @param billingDetails billingDetails
    #' @param custCurrency Customer's currency.
    #' @param custCurrencySymbol Customer's currency symbol.
    #' @param serviceMaster serviceMaster
    #' @param package Package information.
    #' @param serviceExtra serviceExtra
    #' @param extraInfoTables extraInfoTables
    #' @param ... Other optional arguments.
    initialize = function(`serviceInfo` = NULL, `client_links` = NULL, `billingDetails` = NULL, `custCurrency` = NULL, `custCurrencySymbol` = NULL, `serviceMaster` = NULL, `package` = NULL, `serviceExtra` = NULL, `extraInfoTables` = NULL, ...) {
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
      if (!is.null(`serviceMaster`)) {
        stopifnot(R6::is.R6(`serviceMaster`))
        self$`serviceMaster` <- `serviceMaster`
      }
      if (!is.null(`package`)) {
        if (!(is.character(`package`) && length(`package`) == 1)) {
          stop(paste("Error! Invalid data for `package`. Must be a string:", `package`))
        }
        self$`package` <- `package`
      }
      if (!is.null(`serviceExtra`)) {
        if (!(is.character(`serviceExtra`) && length(`serviceExtra`) == 1)) {
          stop(paste("Error! Invalid data for `serviceExtra`. Must be a string:", `serviceExtra`))
        }
        self$`serviceExtra` <- `serviceExtra`
      }
      if (!is.null(`extraInfoTables`)) {
        stopifnot(R6::is.R6(`extraInfoTables`))
        self$`extraInfoTables` <- `extraInfoTables`
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
    #' @return Backup as a base R list.
    #' @examples
    #' # convert array of Backup (x) to a data frame
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
    #' Convert Backup to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      BackupObject <- list()
      if (!is.null(self$`serviceInfo`)) {
        BackupObject[["serviceInfo"]] <-
          self$extractSimpleType(self$`serviceInfo`)
      }
      if (!is.null(self$`client_links`)) {
        BackupObject[["client_links"]] <-
          self$extractSimpleType(self$`client_links`)
      }
      if (!is.null(self$`billingDetails`)) {
        BackupObject[["billingDetails"]] <-
          self$extractSimpleType(self$`billingDetails`)
      }
      if (!is.null(self$`custCurrency`)) {
        BackupObject[["custCurrency"]] <-
          self$`custCurrency`
      }
      if (!is.null(self$`custCurrencySymbol`)) {
        BackupObject[["custCurrencySymbol"]] <-
          self$`custCurrencySymbol`
      }
      if (!is.null(self$`serviceMaster`)) {
        BackupObject[["serviceMaster"]] <-
          self$extractSimpleType(self$`serviceMaster`)
      }
      if (!is.null(self$`package`)) {
        BackupObject[["package"]] <-
          self$`package`
      }
      if (!is.null(self$`serviceExtra`)) {
        BackupObject[["serviceExtra"]] <-
          self$`serviceExtra`
      }
      if (!is.null(self$`extraInfoTables`)) {
        BackupObject[["extraInfoTables"]] <-
          self$extractSimpleType(self$`extraInfoTables`)
      }
      return(BackupObject)
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
    #' Deserialize JSON string into an instance of Backup
    #'
    #' @param input_json the JSON input
    #' @return the instance of Backup
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`serviceInfo`)) {
        `serviceinfo_object` <- BackupServiceInfo$new()
        `serviceinfo_object`$fromJSON(jsonlite::toJSON(this_object$`serviceInfo`, auto_unbox = TRUE, digits = NA))
        self$`serviceInfo` <- `serviceinfo_object`
      }
      if (!is.null(this_object$`client_links`)) {
        self$`client_links` <- ApiClient$new()$deserializeObj(this_object$`client_links`, "array[BackupClientLink]", loadNamespace("interserverapi"))
      }
      if (!is.null(this_object$`billingDetails`)) {
        `billingdetails_object` <- BackupBillingDetails$new()
        `billingdetails_object`$fromJSON(jsonlite::toJSON(this_object$`billingDetails`, auto_unbox = TRUE, digits = NA))
        self$`billingDetails` <- `billingdetails_object`
      }
      if (!is.null(this_object$`custCurrency`)) {
        self$`custCurrency` <- this_object$`custCurrency`
      }
      if (!is.null(this_object$`custCurrencySymbol`)) {
        self$`custCurrencySymbol` <- this_object$`custCurrencySymbol`
      }
      if (!is.null(this_object$`serviceMaster`)) {
        `servicemaster_object` <- BackupServiceMaster$new()
        `servicemaster_object`$fromJSON(jsonlite::toJSON(this_object$`serviceMaster`, auto_unbox = TRUE, digits = NA))
        self$`serviceMaster` <- `servicemaster_object`
      }
      if (!is.null(this_object$`package`)) {
        self$`package` <- this_object$`package`
      }
      if (!is.null(this_object$`serviceExtra`)) {
        self$`serviceExtra` <- this_object$`serviceExtra`
      }
      if (!is.null(this_object$`extraInfoTables`)) {
        `extrainfotables_object` <- BackupExtraInfoTables$new()
        `extrainfotables_object`$fromJSON(jsonlite::toJSON(this_object$`extraInfoTables`, auto_unbox = TRUE, digits = NA))
        self$`extraInfoTables` <- `extrainfotables_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Backup in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Backup
    #'
    #' @param input_json the JSON input
    #' @return the instance of Backup
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`serviceInfo` <- BackupServiceInfo$new()$fromJSON(jsonlite::toJSON(this_object$`serviceInfo`, auto_unbox = TRUE, digits = NA))
      self$`client_links` <- ApiClient$new()$deserializeObj(this_object$`client_links`, "array[BackupClientLink]", loadNamespace("interserverapi"))
      self$`billingDetails` <- BackupBillingDetails$new()$fromJSON(jsonlite::toJSON(this_object$`billingDetails`, auto_unbox = TRUE, digits = NA))
      self$`custCurrency` <- this_object$`custCurrency`
      self$`custCurrencySymbol` <- this_object$`custCurrencySymbol`
      self$`serviceMaster` <- BackupServiceMaster$new()$fromJSON(jsonlite::toJSON(this_object$`serviceMaster`, auto_unbox = TRUE, digits = NA))
      self$`package` <- this_object$`package`
      self$`serviceExtra` <- this_object$`serviceExtra`
      self$`extraInfoTables` <- BackupExtraInfoTables$new()$fromJSON(jsonlite::toJSON(this_object$`extraInfoTables`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to Backup and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Backup
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
# Backup$unlock()
#
## Below is an example to define the print function
# Backup$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Backup$lock()

