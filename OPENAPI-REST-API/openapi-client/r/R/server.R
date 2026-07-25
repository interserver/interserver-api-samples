#' Create a new Server
#'
#' @description
#' Server Class
#'
#' @docType class
#' @title Server
#' @description Server Class
#' @format An \code{R6Class} generator object
#' @field ipmiAuth  character
#' @field client_links  list(\link{ServerClientLink})
#' @field billingDetails  \link{ServerBillingDetails}
#' @field custCurrency  character
#' @field custCurrencySymbol  character
#' @field package  character
#' @field serviceExtra  list(character)
#' @field locations  \link{ServerLocations}
#' @field networkInfo  \link{ServerNetworkInfo}
#' @field extraInfoTables  \link{ServerExtraInfoTables}
#' @field serviceInfo  \link{ServerServiceInfo}
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Server <- R6::R6Class(
  "Server",
  public = list(
    `ipmiAuth` = NULL,
    `client_links` = NULL,
    `billingDetails` = NULL,
    `custCurrency` = NULL,
    `custCurrencySymbol` = NULL,
    `package` = NULL,
    `serviceExtra` = NULL,
    `locations` = NULL,
    `networkInfo` = NULL,
    `extraInfoTables` = NULL,
    `serviceInfo` = NULL,

    #' @description
    #' Initialize a new Server class.
    #'
    #' @param ipmiAuth ipmiAuth
    #' @param client_links client_links
    #' @param billingDetails billingDetails
    #' @param custCurrency custCurrency
    #' @param custCurrencySymbol custCurrencySymbol
    #' @param package package
    #' @param serviceExtra serviceExtra
    #' @param locations locations
    #' @param networkInfo networkInfo
    #' @param extraInfoTables extraInfoTables
    #' @param serviceInfo serviceInfo
    #' @param ... Other optional arguments.
    initialize = function(`ipmiAuth`, `client_links`, `billingDetails`, `custCurrency`, `custCurrencySymbol`, `package`, `serviceExtra`, `locations`, `networkInfo`, `extraInfoTables`, `serviceInfo`, ...) {
      if (!missing(`ipmiAuth`)) {
        if (!(is.logical(`ipmiAuth`) && length(`ipmiAuth`) == 1)) {
          stop(paste("Error! Invalid data for `ipmiAuth`. Must be a boolean:", `ipmiAuth`))
        }
        self$`ipmiAuth` <- `ipmiAuth`
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
      if (!missing(`locations`)) {
        stopifnot(R6::is.R6(`locations`))
        self$`locations` <- `locations`
      }
      if (!missing(`networkInfo`)) {
        stopifnot(R6::is.R6(`networkInfo`))
        self$`networkInfo` <- `networkInfo`
      }
      if (!missing(`extraInfoTables`)) {
        stopifnot(R6::is.R6(`extraInfoTables`))
        self$`extraInfoTables` <- `extraInfoTables`
      }
      if (!missing(`serviceInfo`)) {
        stopifnot(R6::is.R6(`serviceInfo`))
        self$`serviceInfo` <- `serviceInfo`
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
    #' @return Server as a base R list.
    #' @examples
    #' # convert array of Server (x) to a data frame
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
    #' Convert Server to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ServerObject <- list()
      if (!is.null(self$`ipmiAuth`)) {
        ServerObject[["ipmiAuth"]] <-
          self$`ipmiAuth`
      }
      if (!is.null(self$`client_links`)) {
        ServerObject[["client_links"]] <-
          self$extractSimpleType(self$`client_links`)
      }
      if (!is.null(self$`billingDetails`)) {
        ServerObject[["billingDetails"]] <-
          self$extractSimpleType(self$`billingDetails`)
      }
      if (!is.null(self$`custCurrency`)) {
        ServerObject[["custCurrency"]] <-
          self$`custCurrency`
      }
      if (!is.null(self$`custCurrencySymbol`)) {
        ServerObject[["custCurrencySymbol"]] <-
          self$`custCurrencySymbol`
      }
      if (!is.null(self$`package`)) {
        ServerObject[["package"]] <-
          self$`package`
      }
      if (!is.null(self$`serviceExtra`)) {
        ServerObject[["serviceExtra"]] <-
          self$`serviceExtra`
      }
      if (!is.null(self$`locations`)) {
        ServerObject[["locations"]] <-
          self$extractSimpleType(self$`locations`)
      }
      if (!is.null(self$`networkInfo`)) {
        ServerObject[["networkInfo"]] <-
          self$extractSimpleType(self$`networkInfo`)
      }
      if (!is.null(self$`extraInfoTables`)) {
        ServerObject[["extraInfoTables"]] <-
          self$extractSimpleType(self$`extraInfoTables`)
      }
      if (!is.null(self$`serviceInfo`)) {
        ServerObject[["serviceInfo"]] <-
          self$extractSimpleType(self$`serviceInfo`)
      }
      return(ServerObject)
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
    #' Deserialize JSON string into an instance of Server
    #'
    #' @param input_json the JSON input
    #' @return the instance of Server
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`ipmiAuth`)) {
        self$`ipmiAuth` <- this_object$`ipmiAuth`
      }
      if (!is.null(this_object$`client_links`)) {
        self$`client_links` <- ApiClient$new()$deserializeObj(this_object$`client_links`, "array[ServerClientLink]", loadNamespace("interserverapi"))
      }
      if (!is.null(this_object$`billingDetails`)) {
        `billingdetails_object` <- ServerBillingDetails$new()
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
      if (!is.null(this_object$`locations`)) {
        `locations_object` <- ServerLocations$new()
        `locations_object`$fromJSON(jsonlite::toJSON(this_object$`locations`, auto_unbox = TRUE, digits = NA))
        self$`locations` <- `locations_object`
      }
      if (!is.null(this_object$`networkInfo`)) {
        `networkinfo_object` <- ServerNetworkInfo$new()
        `networkinfo_object`$fromJSON(jsonlite::toJSON(this_object$`networkInfo`, auto_unbox = TRUE, digits = NA))
        self$`networkInfo` <- `networkinfo_object`
      }
      if (!is.null(this_object$`extraInfoTables`)) {
        `extrainfotables_object` <- ServerExtraInfoTables$new()
        `extrainfotables_object`$fromJSON(jsonlite::toJSON(this_object$`extraInfoTables`, auto_unbox = TRUE, digits = NA))
        self$`extraInfoTables` <- `extrainfotables_object`
      }
      if (!is.null(this_object$`serviceInfo`)) {
        `serviceinfo_object` <- ServerServiceInfo$new()
        `serviceinfo_object`$fromJSON(jsonlite::toJSON(this_object$`serviceInfo`, auto_unbox = TRUE, digits = NA))
        self$`serviceInfo` <- `serviceinfo_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Server in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Server
    #'
    #' @param input_json the JSON input
    #' @return the instance of Server
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`ipmiAuth` <- this_object$`ipmiAuth`
      self$`client_links` <- ApiClient$new()$deserializeObj(this_object$`client_links`, "array[ServerClientLink]", loadNamespace("interserverapi"))
      self$`billingDetails` <- ServerBillingDetails$new()$fromJSON(jsonlite::toJSON(this_object$`billingDetails`, auto_unbox = TRUE, digits = NA))
      self$`custCurrency` <- this_object$`custCurrency`
      self$`custCurrencySymbol` <- this_object$`custCurrencySymbol`
      self$`package` <- this_object$`package`
      self$`serviceExtra` <- ApiClient$new()$deserializeObj(this_object$`serviceExtra`, "array[character]", loadNamespace("interserverapi"))
      self$`locations` <- ServerLocations$new()$fromJSON(jsonlite::toJSON(this_object$`locations`, auto_unbox = TRUE, digits = NA))
      self$`networkInfo` <- ServerNetworkInfo$new()$fromJSON(jsonlite::toJSON(this_object$`networkInfo`, auto_unbox = TRUE, digits = NA))
      self$`extraInfoTables` <- ServerExtraInfoTables$new()$fromJSON(jsonlite::toJSON(this_object$`extraInfoTables`, auto_unbox = TRUE, digits = NA))
      self$`serviceInfo` <- ServerServiceInfo$new()$fromJSON(jsonlite::toJSON(this_object$`serviceInfo`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to Server and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `ipmiAuth`
      if (!is.null(input_json$`ipmiAuth`)) {
        if (!(is.logical(input_json$`ipmiAuth`) && length(input_json$`ipmiAuth`) == 1)) {
          stop(paste("Error! Invalid data for `ipmiAuth`. Must be a boolean:", input_json$`ipmiAuth`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Server: the required field `ipmiAuth` is missing."))
      }
      # check the required field `client_links`
      if (!is.null(input_json$`client_links`)) {
        stopifnot(is.vector(input_json$`client_links`), length(input_json$`client_links`) != 0)
        tmp <- sapply(input_json$`client_links`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Server: the required field `client_links` is missing."))
      }
      # check the required field `billingDetails`
      if (!is.null(input_json$`billingDetails`)) {
        stopifnot(R6::is.R6(input_json$`billingDetails`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Server: the required field `billingDetails` is missing."))
      }
      # check the required field `custCurrency`
      if (!is.null(input_json$`custCurrency`)) {
        if (!(is.character(input_json$`custCurrency`) && length(input_json$`custCurrency`) == 1)) {
          stop(paste("Error! Invalid data for `custCurrency`. Must be a string:", input_json$`custCurrency`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Server: the required field `custCurrency` is missing."))
      }
      # check the required field `custCurrencySymbol`
      if (!is.null(input_json$`custCurrencySymbol`)) {
        if (!(is.character(input_json$`custCurrencySymbol`) && length(input_json$`custCurrencySymbol`) == 1)) {
          stop(paste("Error! Invalid data for `custCurrencySymbol`. Must be a string:", input_json$`custCurrencySymbol`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Server: the required field `custCurrencySymbol` is missing."))
      }
      # check the required field `package`
      if (!is.null(input_json$`package`)) {
        if (!(is.character(input_json$`package`) && length(input_json$`package`) == 1)) {
          stop(paste("Error! Invalid data for `package`. Must be a string:", input_json$`package`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Server: the required field `package` is missing."))
      }
      # check the required field `serviceExtra`
      if (!is.null(input_json$`serviceExtra`)) {
        stopifnot(is.vector(input_json$`serviceExtra`), length(input_json$`serviceExtra`) != 0)
        tmp <- sapply(input_json$`serviceExtra`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Server: the required field `serviceExtra` is missing."))
      }
      # check the required field `locations`
      if (!is.null(input_json$`locations`)) {
        stopifnot(R6::is.R6(input_json$`locations`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Server: the required field `locations` is missing."))
      }
      # check the required field `networkInfo`
      if (!is.null(input_json$`networkInfo`)) {
        stopifnot(R6::is.R6(input_json$`networkInfo`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Server: the required field `networkInfo` is missing."))
      }
      # check the required field `extraInfoTables`
      if (!is.null(input_json$`extraInfoTables`)) {
        stopifnot(R6::is.R6(input_json$`extraInfoTables`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Server: the required field `extraInfoTables` is missing."))
      }
      # check the required field `serviceInfo`
      if (!is.null(input_json$`serviceInfo`)) {
        stopifnot(R6::is.R6(input_json$`serviceInfo`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Server: the required field `serviceInfo` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Server
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `ipmiAuth` is null
      if (is.null(self$`ipmiAuth`)) {
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

      # check if the required `locations` is null
      if (is.null(self$`locations`)) {
        return(FALSE)
      }

      # check if the required `networkInfo` is null
      if (is.null(self$`networkInfo`)) {
        return(FALSE)
      }

      # check if the required `extraInfoTables` is null
      if (is.null(self$`extraInfoTables`)) {
        return(FALSE)
      }

      # check if the required `serviceInfo` is null
      if (is.null(self$`serviceInfo`)) {
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
      # check if the required `ipmiAuth` is null
      if (is.null(self$`ipmiAuth`)) {
        invalid_fields["ipmiAuth"] <- "Non-nullable required field `ipmiAuth` cannot be null."
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

      # check if the required `locations` is null
      if (is.null(self$`locations`)) {
        invalid_fields["locations"] <- "Non-nullable required field `locations` cannot be null."
      }

      # check if the required `networkInfo` is null
      if (is.null(self$`networkInfo`)) {
        invalid_fields["networkInfo"] <- "Non-nullable required field `networkInfo` cannot be null."
      }

      # check if the required `extraInfoTables` is null
      if (is.null(self$`extraInfoTables`)) {
        invalid_fields["extraInfoTables"] <- "Non-nullable required field `extraInfoTables` cannot be null."
      }

      # check if the required `serviceInfo` is null
      if (is.null(self$`serviceInfo`)) {
        invalid_fields["serviceInfo"] <- "Non-nullable required field `serviceInfo` cannot be null."
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
# Server$unlock()
#
## Below is an example to define the print function
# Server$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Server$lock()

