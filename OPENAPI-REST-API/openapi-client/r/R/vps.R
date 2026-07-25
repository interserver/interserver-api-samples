#' Create a new Vps
#'
#' @description
#' Vps Class
#'
#' @docType class
#' @title Vps
#' @description Vps Class
#' @format An \code{R6Class} generator object
#' @field serviceInfo  \link{VpsServiceInfo}
#' @field client_links  list(\link{VpsClientLink})
#' @field billingDetails  \link{VpsBillingDetails}
#' @field custCurrency  character
#' @field custCurrencySymbol  character
#' @field serviceMaster  \link{VpsServiceMaster}
#' @field package  character
#' @field os_template  character [optional]
#' @field serviceExtra  \link{VpsServiceExtra}
#' @field extraInfoTables  \link{VpsExtraInfoTables}
#' @field cpu_graph_data  \link{AnyType} [optional]
#' @field module  character
#' @field token  character
#' @field da_link  integer
#' @field sr_link  integer
#' @field cp_data  \link{VpsCPData}
#' @field da_data  \link{VpsDAData}
#' @field plesk12_data  \link{VpsPlesk12Data}
#' @field serviceAddons  \link{VpsServiceAddons}
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Vps <- R6::R6Class(
  "Vps",
  public = list(
    `serviceInfo` = NULL,
    `client_links` = NULL,
    `billingDetails` = NULL,
    `custCurrency` = NULL,
    `custCurrencySymbol` = NULL,
    `serviceMaster` = NULL,
    `package` = NULL,
    `os_template` = NULL,
    `serviceExtra` = NULL,
    `extraInfoTables` = NULL,
    `cpu_graph_data` = NULL,
    `module` = NULL,
    `token` = NULL,
    `da_link` = NULL,
    `sr_link` = NULL,
    `cp_data` = NULL,
    `da_data` = NULL,
    `plesk12_data` = NULL,
    `serviceAddons` = NULL,

    #' @description
    #' Initialize a new Vps class.
    #'
    #' @param serviceInfo serviceInfo
    #' @param client_links client_links
    #' @param billingDetails billingDetails
    #' @param custCurrency custCurrency
    #' @param custCurrencySymbol custCurrencySymbol
    #' @param serviceMaster serviceMaster
    #' @param package package
    #' @param serviceExtra serviceExtra
    #' @param extraInfoTables extraInfoTables
    #' @param module module
    #' @param token token
    #' @param da_link da_link
    #' @param sr_link sr_link
    #' @param cp_data cp_data
    #' @param da_data da_data
    #' @param plesk12_data plesk12_data
    #' @param serviceAddons serviceAddons
    #' @param os_template os_template
    #' @param cpu_graph_data cpu_graph_data
    #' @param ... Other optional arguments.
    initialize = function(`serviceInfo`, `client_links`, `billingDetails`, `custCurrency`, `custCurrencySymbol`, `serviceMaster`, `package`, `serviceExtra`, `extraInfoTables`, `module`, `token`, `da_link`, `sr_link`, `cp_data`, `da_data`, `plesk12_data`, `serviceAddons`, `os_template` = NULL, `cpu_graph_data` = NULL, ...) {
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
      if (!missing(`serviceMaster`)) {
        stopifnot(R6::is.R6(`serviceMaster`))
        self$`serviceMaster` <- `serviceMaster`
      }
      if (!missing(`package`)) {
        if (!(is.character(`package`) && length(`package`) == 1)) {
          stop(paste("Error! Invalid data for `package`. Must be a string:", `package`))
        }
        self$`package` <- `package`
      }
      if (!missing(`serviceExtra`)) {
        stopifnot(R6::is.R6(`serviceExtra`))
        self$`serviceExtra` <- `serviceExtra`
      }
      if (!missing(`extraInfoTables`)) {
        stopifnot(R6::is.R6(`extraInfoTables`))
        self$`extraInfoTables` <- `extraInfoTables`
      }
      if (!missing(`module`)) {
        if (!(is.character(`module`) && length(`module`) == 1)) {
          stop(paste("Error! Invalid data for `module`. Must be a string:", `module`))
        }
        self$`module` <- `module`
      }
      if (!missing(`token`)) {
        if (!(is.character(`token`) && length(`token`) == 1)) {
          stop(paste("Error! Invalid data for `token`. Must be a string:", `token`))
        }
        self$`token` <- `token`
      }
      if (!missing(`da_link`)) {
        if (!(is.numeric(`da_link`) && length(`da_link`) == 1)) {
          stop(paste("Error! Invalid data for `da_link`. Must be an integer:", `da_link`))
        }
        self$`da_link` <- `da_link`
      }
      if (!missing(`sr_link`)) {
        if (!(is.numeric(`sr_link`) && length(`sr_link`) == 1)) {
          stop(paste("Error! Invalid data for `sr_link`. Must be an integer:", `sr_link`))
        }
        self$`sr_link` <- `sr_link`
      }
      if (!missing(`cp_data`)) {
        stopifnot(R6::is.R6(`cp_data`))
        self$`cp_data` <- `cp_data`
      }
      if (!missing(`da_data`)) {
        stopifnot(R6::is.R6(`da_data`))
        self$`da_data` <- `da_data`
      }
      if (!missing(`plesk12_data`)) {
        stopifnot(R6::is.R6(`plesk12_data`))
        self$`plesk12_data` <- `plesk12_data`
      }
      if (!missing(`serviceAddons`)) {
        stopifnot(R6::is.R6(`serviceAddons`))
        self$`serviceAddons` <- `serviceAddons`
      }
      if (!is.null(`os_template`)) {
        if (!(is.character(`os_template`) && length(`os_template`) == 1)) {
          stop(paste("Error! Invalid data for `os_template`. Must be a string:", `os_template`))
        }
        self$`os_template` <- `os_template`
      }
      if (!is.null(`cpu_graph_data`)) {
        stopifnot(R6::is.R6(`cpu_graph_data`))
        self$`cpu_graph_data` <- `cpu_graph_data`
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
    #' @return Vps as a base R list.
    #' @examples
    #' # convert array of Vps (x) to a data frame
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
    #' Convert Vps to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      VpsObject <- list()
      if (!is.null(self$`serviceInfo`)) {
        VpsObject[["serviceInfo"]] <-
          self$extractSimpleType(self$`serviceInfo`)
      }
      if (!is.null(self$`client_links`)) {
        VpsObject[["client_links"]] <-
          self$extractSimpleType(self$`client_links`)
      }
      if (!is.null(self$`billingDetails`)) {
        VpsObject[["billingDetails"]] <-
          self$extractSimpleType(self$`billingDetails`)
      }
      if (!is.null(self$`custCurrency`)) {
        VpsObject[["custCurrency"]] <-
          self$`custCurrency`
      }
      if (!is.null(self$`custCurrencySymbol`)) {
        VpsObject[["custCurrencySymbol"]] <-
          self$`custCurrencySymbol`
      }
      if (!is.null(self$`serviceMaster`)) {
        VpsObject[["serviceMaster"]] <-
          self$extractSimpleType(self$`serviceMaster`)
      }
      if (!is.null(self$`package`)) {
        VpsObject[["package"]] <-
          self$`package`
      }
      if (!is.null(self$`os_template`)) {
        VpsObject[["os_template"]] <-
          self$`os_template`
      }
      if (!is.null(self$`serviceExtra`)) {
        VpsObject[["serviceExtra"]] <-
          self$extractSimpleType(self$`serviceExtra`)
      }
      if (!is.null(self$`extraInfoTables`)) {
        VpsObject[["extraInfoTables"]] <-
          self$extractSimpleType(self$`extraInfoTables`)
      }
      if (!is.null(self$`cpu_graph_data`)) {
        VpsObject[["cpu_graph_data"]] <-
          self$extractSimpleType(self$`cpu_graph_data`)
      }
      if (!is.null(self$`module`)) {
        VpsObject[["module"]] <-
          self$`module`
      }
      if (!is.null(self$`token`)) {
        VpsObject[["token"]] <-
          self$`token`
      }
      if (!is.null(self$`da_link`)) {
        VpsObject[["da_link"]] <-
          self$`da_link`
      }
      if (!is.null(self$`sr_link`)) {
        VpsObject[["sr_link"]] <-
          self$`sr_link`
      }
      if (!is.null(self$`cp_data`)) {
        VpsObject[["cp_data"]] <-
          self$extractSimpleType(self$`cp_data`)
      }
      if (!is.null(self$`da_data`)) {
        VpsObject[["da_data"]] <-
          self$extractSimpleType(self$`da_data`)
      }
      if (!is.null(self$`plesk12_data`)) {
        VpsObject[["plesk12_data"]] <-
          self$extractSimpleType(self$`plesk12_data`)
      }
      if (!is.null(self$`serviceAddons`)) {
        VpsObject[["serviceAddons"]] <-
          self$extractSimpleType(self$`serviceAddons`)
      }
      return(VpsObject)
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
    #' Deserialize JSON string into an instance of Vps
    #'
    #' @param input_json the JSON input
    #' @return the instance of Vps
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`serviceInfo`)) {
        `serviceinfo_object` <- VpsServiceInfo$new()
        `serviceinfo_object`$fromJSON(jsonlite::toJSON(this_object$`serviceInfo`, auto_unbox = TRUE, digits = NA))
        self$`serviceInfo` <- `serviceinfo_object`
      }
      if (!is.null(this_object$`client_links`)) {
        self$`client_links` <- ApiClient$new()$deserializeObj(this_object$`client_links`, "array[VpsClientLink]", loadNamespace("interserverapi"))
      }
      if (!is.null(this_object$`billingDetails`)) {
        `billingdetails_object` <- VpsBillingDetails$new()
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
        `servicemaster_object` <- VpsServiceMaster$new()
        `servicemaster_object`$fromJSON(jsonlite::toJSON(this_object$`serviceMaster`, auto_unbox = TRUE, digits = NA))
        self$`serviceMaster` <- `servicemaster_object`
      }
      if (!is.null(this_object$`package`)) {
        self$`package` <- this_object$`package`
      }
      if (!is.null(this_object$`os_template`)) {
        self$`os_template` <- this_object$`os_template`
      }
      if (!is.null(this_object$`serviceExtra`)) {
        `serviceextra_object` <- VpsServiceExtra$new()
        `serviceextra_object`$fromJSON(jsonlite::toJSON(this_object$`serviceExtra`, auto_unbox = TRUE, digits = NA))
        self$`serviceExtra` <- `serviceextra_object`
      }
      if (!is.null(this_object$`extraInfoTables`)) {
        `extrainfotables_object` <- VpsExtraInfoTables$new()
        `extrainfotables_object`$fromJSON(jsonlite::toJSON(this_object$`extraInfoTables`, auto_unbox = TRUE, digits = NA))
        self$`extraInfoTables` <- `extrainfotables_object`
      }
      if (!is.null(this_object$`cpu_graph_data`)) {
        `cpu_graph_data_object` <- AnyType$new()
        `cpu_graph_data_object`$fromJSON(jsonlite::toJSON(this_object$`cpu_graph_data`, auto_unbox = TRUE, digits = NA))
        self$`cpu_graph_data` <- `cpu_graph_data_object`
      }
      if (!is.null(this_object$`module`)) {
        self$`module` <- this_object$`module`
      }
      if (!is.null(this_object$`token`)) {
        self$`token` <- this_object$`token`
      }
      if (!is.null(this_object$`da_link`)) {
        self$`da_link` <- this_object$`da_link`
      }
      if (!is.null(this_object$`sr_link`)) {
        self$`sr_link` <- this_object$`sr_link`
      }
      if (!is.null(this_object$`cp_data`)) {
        `cp_data_object` <- VpsCPData$new()
        `cp_data_object`$fromJSON(jsonlite::toJSON(this_object$`cp_data`, auto_unbox = TRUE, digits = NA))
        self$`cp_data` <- `cp_data_object`
      }
      if (!is.null(this_object$`da_data`)) {
        `da_data_object` <- VpsDAData$new()
        `da_data_object`$fromJSON(jsonlite::toJSON(this_object$`da_data`, auto_unbox = TRUE, digits = NA))
        self$`da_data` <- `da_data_object`
      }
      if (!is.null(this_object$`plesk12_data`)) {
        `plesk12_data_object` <- VpsPlesk12Data$new()
        `plesk12_data_object`$fromJSON(jsonlite::toJSON(this_object$`plesk12_data`, auto_unbox = TRUE, digits = NA))
        self$`plesk12_data` <- `plesk12_data_object`
      }
      if (!is.null(this_object$`serviceAddons`)) {
        `serviceaddons_object` <- VpsServiceAddons$new()
        `serviceaddons_object`$fromJSON(jsonlite::toJSON(this_object$`serviceAddons`, auto_unbox = TRUE, digits = NA))
        self$`serviceAddons` <- `serviceaddons_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Vps in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Vps
    #'
    #' @param input_json the JSON input
    #' @return the instance of Vps
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`serviceInfo` <- VpsServiceInfo$new()$fromJSON(jsonlite::toJSON(this_object$`serviceInfo`, auto_unbox = TRUE, digits = NA))
      self$`client_links` <- ApiClient$new()$deserializeObj(this_object$`client_links`, "array[VpsClientLink]", loadNamespace("interserverapi"))
      self$`billingDetails` <- VpsBillingDetails$new()$fromJSON(jsonlite::toJSON(this_object$`billingDetails`, auto_unbox = TRUE, digits = NA))
      self$`custCurrency` <- this_object$`custCurrency`
      self$`custCurrencySymbol` <- this_object$`custCurrencySymbol`
      self$`serviceMaster` <- VpsServiceMaster$new()$fromJSON(jsonlite::toJSON(this_object$`serviceMaster`, auto_unbox = TRUE, digits = NA))
      self$`package` <- this_object$`package`
      self$`os_template` <- this_object$`os_template`
      self$`serviceExtra` <- VpsServiceExtra$new()$fromJSON(jsonlite::toJSON(this_object$`serviceExtra`, auto_unbox = TRUE, digits = NA))
      self$`extraInfoTables` <- VpsExtraInfoTables$new()$fromJSON(jsonlite::toJSON(this_object$`extraInfoTables`, auto_unbox = TRUE, digits = NA))
      self$`cpu_graph_data` <- AnyType$new()$fromJSON(jsonlite::toJSON(this_object$`cpu_graph_data`, auto_unbox = TRUE, digits = NA))
      self$`module` <- this_object$`module`
      self$`token` <- this_object$`token`
      self$`da_link` <- this_object$`da_link`
      self$`sr_link` <- this_object$`sr_link`
      self$`cp_data` <- VpsCPData$new()$fromJSON(jsonlite::toJSON(this_object$`cp_data`, auto_unbox = TRUE, digits = NA))
      self$`da_data` <- VpsDAData$new()$fromJSON(jsonlite::toJSON(this_object$`da_data`, auto_unbox = TRUE, digits = NA))
      self$`plesk12_data` <- VpsPlesk12Data$new()$fromJSON(jsonlite::toJSON(this_object$`plesk12_data`, auto_unbox = TRUE, digits = NA))
      self$`serviceAddons` <- VpsServiceAddons$new()$fromJSON(jsonlite::toJSON(this_object$`serviceAddons`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to Vps and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `serviceInfo`
      if (!is.null(input_json$`serviceInfo`)) {
        stopifnot(R6::is.R6(input_json$`serviceInfo`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Vps: the required field `serviceInfo` is missing."))
      }
      # check the required field `client_links`
      if (!is.null(input_json$`client_links`)) {
        stopifnot(is.vector(input_json$`client_links`), length(input_json$`client_links`) != 0)
        tmp <- sapply(input_json$`client_links`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Vps: the required field `client_links` is missing."))
      }
      # check the required field `billingDetails`
      if (!is.null(input_json$`billingDetails`)) {
        stopifnot(R6::is.R6(input_json$`billingDetails`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Vps: the required field `billingDetails` is missing."))
      }
      # check the required field `custCurrency`
      if (!is.null(input_json$`custCurrency`)) {
        if (!(is.character(input_json$`custCurrency`) && length(input_json$`custCurrency`) == 1)) {
          stop(paste("Error! Invalid data for `custCurrency`. Must be a string:", input_json$`custCurrency`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Vps: the required field `custCurrency` is missing."))
      }
      # check the required field `custCurrencySymbol`
      if (!is.null(input_json$`custCurrencySymbol`)) {
        if (!(is.character(input_json$`custCurrencySymbol`) && length(input_json$`custCurrencySymbol`) == 1)) {
          stop(paste("Error! Invalid data for `custCurrencySymbol`. Must be a string:", input_json$`custCurrencySymbol`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Vps: the required field `custCurrencySymbol` is missing."))
      }
      # check the required field `serviceMaster`
      if (!is.null(input_json$`serviceMaster`)) {
        stopifnot(R6::is.R6(input_json$`serviceMaster`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Vps: the required field `serviceMaster` is missing."))
      }
      # check the required field `package`
      if (!is.null(input_json$`package`)) {
        if (!(is.character(input_json$`package`) && length(input_json$`package`) == 1)) {
          stop(paste("Error! Invalid data for `package`. Must be a string:", input_json$`package`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Vps: the required field `package` is missing."))
      }
      # check the required field `serviceExtra`
      if (!is.null(input_json$`serviceExtra`)) {
        stopifnot(R6::is.R6(input_json$`serviceExtra`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Vps: the required field `serviceExtra` is missing."))
      }
      # check the required field `extraInfoTables`
      if (!is.null(input_json$`extraInfoTables`)) {
        stopifnot(R6::is.R6(input_json$`extraInfoTables`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Vps: the required field `extraInfoTables` is missing."))
      }
      # check the required field `module`
      if (!is.null(input_json$`module`)) {
        if (!(is.character(input_json$`module`) && length(input_json$`module`) == 1)) {
          stop(paste("Error! Invalid data for `module`. Must be a string:", input_json$`module`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Vps: the required field `module` is missing."))
      }
      # check the required field `token`
      if (!is.null(input_json$`token`)) {
        if (!(is.character(input_json$`token`) && length(input_json$`token`) == 1)) {
          stop(paste("Error! Invalid data for `token`. Must be a string:", input_json$`token`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Vps: the required field `token` is missing."))
      }
      # check the required field `da_link`
      if (!is.null(input_json$`da_link`)) {
        if (!(is.numeric(input_json$`da_link`) && length(input_json$`da_link`) == 1)) {
          stop(paste("Error! Invalid data for `da_link`. Must be an integer:", input_json$`da_link`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Vps: the required field `da_link` is missing."))
      }
      # check the required field `sr_link`
      if (!is.null(input_json$`sr_link`)) {
        if (!(is.numeric(input_json$`sr_link`) && length(input_json$`sr_link`) == 1)) {
          stop(paste("Error! Invalid data for `sr_link`. Must be an integer:", input_json$`sr_link`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Vps: the required field `sr_link` is missing."))
      }
      # check the required field `cp_data`
      if (!is.null(input_json$`cp_data`)) {
        stopifnot(R6::is.R6(input_json$`cp_data`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Vps: the required field `cp_data` is missing."))
      }
      # check the required field `da_data`
      if (!is.null(input_json$`da_data`)) {
        stopifnot(R6::is.R6(input_json$`da_data`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Vps: the required field `da_data` is missing."))
      }
      # check the required field `plesk12_data`
      if (!is.null(input_json$`plesk12_data`)) {
        stopifnot(R6::is.R6(input_json$`plesk12_data`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Vps: the required field `plesk12_data` is missing."))
      }
      # check the required field `serviceAddons`
      if (!is.null(input_json$`serviceAddons`)) {
        stopifnot(R6::is.R6(input_json$`serviceAddons`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Vps: the required field `serviceAddons` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Vps
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

      # check if the required `serviceMaster` is null
      if (is.null(self$`serviceMaster`)) {
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

      # check if the required `module` is null
      if (is.null(self$`module`)) {
        return(FALSE)
      }

      # check if the required `token` is null
      if (is.null(self$`token`)) {
        return(FALSE)
      }

      # check if the required `da_link` is null
      if (is.null(self$`da_link`)) {
        return(FALSE)
      }

      # check if the required `sr_link` is null
      if (is.null(self$`sr_link`)) {
        return(FALSE)
      }

      # check if the required `cp_data` is null
      if (is.null(self$`cp_data`)) {
        return(FALSE)
      }

      # check if the required `da_data` is null
      if (is.null(self$`da_data`)) {
        return(FALSE)
      }

      # check if the required `plesk12_data` is null
      if (is.null(self$`plesk12_data`)) {
        return(FALSE)
      }

      # check if the required `serviceAddons` is null
      if (is.null(self$`serviceAddons`)) {
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

      # check if the required `serviceMaster` is null
      if (is.null(self$`serviceMaster`)) {
        invalid_fields["serviceMaster"] <- "Non-nullable required field `serviceMaster` cannot be null."
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

      # check if the required `module` is null
      if (is.null(self$`module`)) {
        invalid_fields["module"] <- "Non-nullable required field `module` cannot be null."
      }

      # check if the required `token` is null
      if (is.null(self$`token`)) {
        invalid_fields["token"] <- "Non-nullable required field `token` cannot be null."
      }

      # check if the required `da_link` is null
      if (is.null(self$`da_link`)) {
        invalid_fields["da_link"] <- "Non-nullable required field `da_link` cannot be null."
      }

      # check if the required `sr_link` is null
      if (is.null(self$`sr_link`)) {
        invalid_fields["sr_link"] <- "Non-nullable required field `sr_link` cannot be null."
      }

      # check if the required `cp_data` is null
      if (is.null(self$`cp_data`)) {
        invalid_fields["cp_data"] <- "Non-nullable required field `cp_data` cannot be null."
      }

      # check if the required `da_data` is null
      if (is.null(self$`da_data`)) {
        invalid_fields["da_data"] <- "Non-nullable required field `da_data` cannot be null."
      }

      # check if the required `plesk12_data` is null
      if (is.null(self$`plesk12_data`)) {
        invalid_fields["plesk12_data"] <- "Non-nullable required field `plesk12_data` cannot be null."
      }

      # check if the required `serviceAddons` is null
      if (is.null(self$`serviceAddons`)) {
        invalid_fields["serviceAddons"] <- "Non-nullable required field `serviceAddons` cannot be null."
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
# Vps$unlock()
#
## Below is an example to define the print function
# Vps$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Vps$lock()

