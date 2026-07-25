#' Create a new AccountInfo
#'
#' @description
#' Contains the full account profile including personal info, billing details, OAuth connections, and security settings.
#'
#' @docType class
#' @title AccountInfo
#' @description AccountInfo Class
#' @format An \code{R6Class} generator object
#' @field custid  character [optional]
#' @field ima  character [optional]
#' @field data  \link{AccountInfoData} [optional]
#' @field ip  character [optional]
#' @field oauthproviders  \link{AccountInfoOauthproviders} [optional]
#' @field oauthconfig  \link{AccountInfoOauthConfig} [optional]
#' @field oauthadapters  list(character) [optional]
#' @field limits  \link{AccountInfoLimits} [optional]
#' @field language  character [optional]
#' @field countryCurrencies  \link{AccountInfoCountryCurrencies} [optional]
#' @field enableLocales  character [optional]
#' @field enableCurrencies  character [optional]
#' @field gravatar  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AccountInfo <- R6::R6Class(
  "AccountInfo",
  public = list(
    `custid` = NULL,
    `ima` = NULL,
    `data` = NULL,
    `ip` = NULL,
    `oauthproviders` = NULL,
    `oauthconfig` = NULL,
    `oauthadapters` = NULL,
    `limits` = NULL,
    `language` = NULL,
    `countryCurrencies` = NULL,
    `enableLocales` = NULL,
    `enableCurrencies` = NULL,
    `gravatar` = NULL,

    #' @description
    #' Initialize a new AccountInfo class.
    #'
    #' @param custid custid
    #' @param ima ima
    #' @param data data
    #' @param ip ip
    #' @param oauthproviders oauthproviders
    #' @param oauthconfig oauthconfig
    #' @param oauthadapters oauthadapters
    #' @param limits limits
    #' @param language language
    #' @param countryCurrencies countryCurrencies
    #' @param enableLocales enableLocales
    #' @param enableCurrencies enableCurrencies
    #' @param gravatar gravatar
    #' @param ... Other optional arguments.
    initialize = function(`custid` = NULL, `ima` = NULL, `data` = NULL, `ip` = NULL, `oauthproviders` = NULL, `oauthconfig` = NULL, `oauthadapters` = NULL, `limits` = NULL, `language` = NULL, `countryCurrencies` = NULL, `enableLocales` = NULL, `enableCurrencies` = NULL, `gravatar` = NULL, ...) {
      if (!is.null(`custid`)) {
        if (!(is.character(`custid`) && length(`custid`) == 1)) {
          stop(paste("Error! Invalid data for `custid`. Must be a string:", `custid`))
        }
        self$`custid` <- `custid`
      }
      if (!is.null(`ima`)) {
        if (!(is.character(`ima`) && length(`ima`) == 1)) {
          stop(paste("Error! Invalid data for `ima`. Must be a string:", `ima`))
        }
        self$`ima` <- `ima`
      }
      if (!is.null(`data`)) {
        stopifnot(R6::is.R6(`data`))
        self$`data` <- `data`
      }
      if (!is.null(`ip`)) {
        if (!(is.character(`ip`) && length(`ip`) == 1)) {
          stop(paste("Error! Invalid data for `ip`. Must be a string:", `ip`))
        }
        self$`ip` <- `ip`
      }
      if (!is.null(`oauthproviders`)) {
        stopifnot(R6::is.R6(`oauthproviders`))
        self$`oauthproviders` <- `oauthproviders`
      }
      if (!is.null(`oauthconfig`)) {
        stopifnot(R6::is.R6(`oauthconfig`))
        self$`oauthconfig` <- `oauthconfig`
      }
      if (!is.null(`oauthadapters`)) {
        stopifnot(is.vector(`oauthadapters`), length(`oauthadapters`) != 0)
        sapply(`oauthadapters`, function(x) stopifnot(is.character(x)))
        self$`oauthadapters` <- `oauthadapters`
      }
      if (!is.null(`limits`)) {
        stopifnot(R6::is.R6(`limits`))
        self$`limits` <- `limits`
      }
      if (!is.null(`language`)) {
        if (!(is.character(`language`) && length(`language`) == 1)) {
          stop(paste("Error! Invalid data for `language`. Must be a string:", `language`))
        }
        self$`language` <- `language`
      }
      if (!is.null(`countryCurrencies`)) {
        stopifnot(R6::is.R6(`countryCurrencies`))
        self$`countryCurrencies` <- `countryCurrencies`
      }
      if (!is.null(`enableLocales`)) {
        if (!(is.logical(`enableLocales`) && length(`enableLocales`) == 1)) {
          stop(paste("Error! Invalid data for `enableLocales`. Must be a boolean:", `enableLocales`))
        }
        self$`enableLocales` <- `enableLocales`
      }
      if (!is.null(`enableCurrencies`)) {
        if (!(is.logical(`enableCurrencies`) && length(`enableCurrencies`) == 1)) {
          stop(paste("Error! Invalid data for `enableCurrencies`. Must be a boolean:", `enableCurrencies`))
        }
        self$`enableCurrencies` <- `enableCurrencies`
      }
      if (!is.null(`gravatar`)) {
        if (!(is.character(`gravatar`) && length(`gravatar`) == 1)) {
          stop(paste("Error! Invalid data for `gravatar`. Must be a string:", `gravatar`))
        }
        self$`gravatar` <- `gravatar`
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
    #' @return AccountInfo as a base R list.
    #' @examples
    #' # convert array of AccountInfo (x) to a data frame
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
    #' Convert AccountInfo to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AccountInfoObject <- list()
      if (!is.null(self$`custid`)) {
        AccountInfoObject[["custid"]] <-
          self$`custid`
      }
      if (!is.null(self$`ima`)) {
        AccountInfoObject[["ima"]] <-
          self$`ima`
      }
      if (!is.null(self$`data`)) {
        AccountInfoObject[["data"]] <-
          self$extractSimpleType(self$`data`)
      }
      if (!is.null(self$`ip`)) {
        AccountInfoObject[["ip"]] <-
          self$`ip`
      }
      if (!is.null(self$`oauthproviders`)) {
        AccountInfoObject[["oauthproviders"]] <-
          self$extractSimpleType(self$`oauthproviders`)
      }
      if (!is.null(self$`oauthconfig`)) {
        AccountInfoObject[["oauthconfig"]] <-
          self$extractSimpleType(self$`oauthconfig`)
      }
      if (!is.null(self$`oauthadapters`)) {
        AccountInfoObject[["oauthadapters"]] <-
          self$`oauthadapters`
      }
      if (!is.null(self$`limits`)) {
        AccountInfoObject[["limits"]] <-
          self$extractSimpleType(self$`limits`)
      }
      if (!is.null(self$`language`)) {
        AccountInfoObject[["language"]] <-
          self$`language`
      }
      if (!is.null(self$`countryCurrencies`)) {
        AccountInfoObject[["countryCurrencies"]] <-
          self$extractSimpleType(self$`countryCurrencies`)
      }
      if (!is.null(self$`enableLocales`)) {
        AccountInfoObject[["enableLocales"]] <-
          self$`enableLocales`
      }
      if (!is.null(self$`enableCurrencies`)) {
        AccountInfoObject[["enableCurrencies"]] <-
          self$`enableCurrencies`
      }
      if (!is.null(self$`gravatar`)) {
        AccountInfoObject[["gravatar"]] <-
          self$`gravatar`
      }
      return(AccountInfoObject)
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
    #' Deserialize JSON string into an instance of AccountInfo
    #'
    #' @param input_json the JSON input
    #' @return the instance of AccountInfo
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`custid`)) {
        self$`custid` <- this_object$`custid`
      }
      if (!is.null(this_object$`ima`)) {
        self$`ima` <- this_object$`ima`
      }
      if (!is.null(this_object$`data`)) {
        `data_object` <- AccountInfoData$new()
        `data_object`$fromJSON(jsonlite::toJSON(this_object$`data`, auto_unbox = TRUE, digits = NA))
        self$`data` <- `data_object`
      }
      if (!is.null(this_object$`ip`)) {
        self$`ip` <- this_object$`ip`
      }
      if (!is.null(this_object$`oauthproviders`)) {
        `oauthproviders_object` <- AccountInfoOauthproviders$new()
        `oauthproviders_object`$fromJSON(jsonlite::toJSON(this_object$`oauthproviders`, auto_unbox = TRUE, digits = NA))
        self$`oauthproviders` <- `oauthproviders_object`
      }
      if (!is.null(this_object$`oauthconfig`)) {
        `oauthconfig_object` <- AccountInfoOauthConfig$new()
        `oauthconfig_object`$fromJSON(jsonlite::toJSON(this_object$`oauthconfig`, auto_unbox = TRUE, digits = NA))
        self$`oauthconfig` <- `oauthconfig_object`
      }
      if (!is.null(this_object$`oauthadapters`)) {
        self$`oauthadapters` <- ApiClient$new()$deserializeObj(this_object$`oauthadapters`, "array[character]", loadNamespace("interserverapi"))
      }
      if (!is.null(this_object$`limits`)) {
        `limits_object` <- AccountInfoLimits$new()
        `limits_object`$fromJSON(jsonlite::toJSON(this_object$`limits`, auto_unbox = TRUE, digits = NA))
        self$`limits` <- `limits_object`
      }
      if (!is.null(this_object$`language`)) {
        self$`language` <- this_object$`language`
      }
      if (!is.null(this_object$`countryCurrencies`)) {
        `countrycurrencies_object` <- AccountInfoCountryCurrencies$new()
        `countrycurrencies_object`$fromJSON(jsonlite::toJSON(this_object$`countryCurrencies`, auto_unbox = TRUE, digits = NA))
        self$`countryCurrencies` <- `countrycurrencies_object`
      }
      if (!is.null(this_object$`enableLocales`)) {
        self$`enableLocales` <- this_object$`enableLocales`
      }
      if (!is.null(this_object$`enableCurrencies`)) {
        self$`enableCurrencies` <- this_object$`enableCurrencies`
      }
      if (!is.null(this_object$`gravatar`)) {
        self$`gravatar` <- this_object$`gravatar`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AccountInfo in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AccountInfo
    #'
    #' @param input_json the JSON input
    #' @return the instance of AccountInfo
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`custid` <- this_object$`custid`
      self$`ima` <- this_object$`ima`
      self$`data` <- AccountInfoData$new()$fromJSON(jsonlite::toJSON(this_object$`data`, auto_unbox = TRUE, digits = NA))
      self$`ip` <- this_object$`ip`
      self$`oauthproviders` <- AccountInfoOauthproviders$new()$fromJSON(jsonlite::toJSON(this_object$`oauthproviders`, auto_unbox = TRUE, digits = NA))
      self$`oauthconfig` <- AccountInfoOauthConfig$new()$fromJSON(jsonlite::toJSON(this_object$`oauthconfig`, auto_unbox = TRUE, digits = NA))
      self$`oauthadapters` <- ApiClient$new()$deserializeObj(this_object$`oauthadapters`, "array[character]", loadNamespace("interserverapi"))
      self$`limits` <- AccountInfoLimits$new()$fromJSON(jsonlite::toJSON(this_object$`limits`, auto_unbox = TRUE, digits = NA))
      self$`language` <- this_object$`language`
      self$`countryCurrencies` <- AccountInfoCountryCurrencies$new()$fromJSON(jsonlite::toJSON(this_object$`countryCurrencies`, auto_unbox = TRUE, digits = NA))
      self$`enableLocales` <- this_object$`enableLocales`
      self$`enableCurrencies` <- this_object$`enableCurrencies`
      self$`gravatar` <- this_object$`gravatar`
      self
    },

    #' @description
    #' Validate JSON input with respect to AccountInfo and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AccountInfo
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
# AccountInfo$unlock()
#
## Below is an example to define the print function
# AccountInfo$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AccountInfo$lock()

