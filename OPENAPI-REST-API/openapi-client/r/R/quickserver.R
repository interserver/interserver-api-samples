#' Create a new Quickserver
#'
#' @description
#' Quickserver Class
#'
#' @docType class
#' @title Quickserver
#' @description Quickserver Class
#' @format An \code{R6Class} generator object
#' @field serviceInfo  \link{QuickserverServiceInfo}
#' @field client_links  list(\link{QuickserverClientLink})
#' @field billingDetails  \link{QuickserverBillingDetails}
#' @field custCurrency Currency of the customer character
#' @field custCurrencySymbol Currency symbol of the customer character
#' @field serviceMaster  \link{QuickserverServiceMaster}
#' @field package Package name character
#' @field os_template Operating system template character
#' @field serviceExtra  \link{QuickserverServiceExtra}
#' @field extraInfoTables  \link{QuickserverExtraInfoTables}
#' @field cpu_graph_data CPU graph data character
#' @field bandwidth_xaxis Bandwidth x-axis data character
#' @field bandwidth_yaxis Bandwidth y-axis data character
#' @field module Module information character
#' @field token Authentication token character
#' @field service_disk_used Used disk space character
#' @field service_disk_total Total disk space character
#' @field disk_percentage Disk usage percentage numeric
#' @field memory Memory information character
#' @field hdd HDD information character
#' @field service_overview_extra  list(character)
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Quickserver <- R6::R6Class(
  "Quickserver",
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
    `bandwidth_xaxis` = NULL,
    `bandwidth_yaxis` = NULL,
    `module` = NULL,
    `token` = NULL,
    `service_disk_used` = NULL,
    `service_disk_total` = NULL,
    `disk_percentage` = NULL,
    `memory` = NULL,
    `hdd` = NULL,
    `service_overview_extra` = NULL,

    #' @description
    #' Initialize a new Quickserver class.
    #'
    #' @param serviceInfo serviceInfo
    #' @param client_links client_links
    #' @param billingDetails billingDetails
    #' @param custCurrency Currency of the customer
    #' @param custCurrencySymbol Currency symbol of the customer
    #' @param serviceMaster serviceMaster
    #' @param package Package name
    #' @param os_template Operating system template
    #' @param serviceExtra serviceExtra
    #' @param extraInfoTables extraInfoTables
    #' @param cpu_graph_data CPU graph data
    #' @param bandwidth_xaxis Bandwidth x-axis data
    #' @param bandwidth_yaxis Bandwidth y-axis data
    #' @param module Module information
    #' @param token Authentication token
    #' @param service_disk_used Used disk space
    #' @param service_disk_total Total disk space
    #' @param disk_percentage Disk usage percentage
    #' @param memory Memory information
    #' @param hdd HDD information
    #' @param service_overview_extra service_overview_extra
    #' @param ... Other optional arguments.
    initialize = function(`serviceInfo`, `client_links`, `billingDetails`, `custCurrency`, `custCurrencySymbol`, `serviceMaster`, `package`, `os_template`, `serviceExtra`, `extraInfoTables`, `cpu_graph_data`, `bandwidth_xaxis`, `bandwidth_yaxis`, `module`, `token`, `service_disk_used`, `service_disk_total`, `disk_percentage`, `memory`, `hdd`, `service_overview_extra`, ...) {
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
      if (!missing(`os_template`)) {
        if (!(is.character(`os_template`) && length(`os_template`) == 1)) {
          stop(paste("Error! Invalid data for `os_template`. Must be a string:", `os_template`))
        }
        self$`os_template` <- `os_template`
      }
      if (!missing(`serviceExtra`)) {
        stopifnot(R6::is.R6(`serviceExtra`))
        self$`serviceExtra` <- `serviceExtra`
      }
      if (!missing(`extraInfoTables`)) {
        stopifnot(R6::is.R6(`extraInfoTables`))
        self$`extraInfoTables` <- `extraInfoTables`
      }
      if (!missing(`cpu_graph_data`)) {
        if (!(is.character(`cpu_graph_data`) && length(`cpu_graph_data`) == 1)) {
          stop(paste("Error! Invalid data for `cpu_graph_data`. Must be a string:", `cpu_graph_data`))
        }
        self$`cpu_graph_data` <- `cpu_graph_data`
      }
      if (!missing(`bandwidth_xaxis`)) {
        if (!(is.character(`bandwidth_xaxis`) && length(`bandwidth_xaxis`) == 1)) {
          stop(paste("Error! Invalid data for `bandwidth_xaxis`. Must be a string:", `bandwidth_xaxis`))
        }
        self$`bandwidth_xaxis` <- `bandwidth_xaxis`
      }
      if (!missing(`bandwidth_yaxis`)) {
        if (!(is.character(`bandwidth_yaxis`) && length(`bandwidth_yaxis`) == 1)) {
          stop(paste("Error! Invalid data for `bandwidth_yaxis`. Must be a string:", `bandwidth_yaxis`))
        }
        self$`bandwidth_yaxis` <- `bandwidth_yaxis`
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
      if (!missing(`service_disk_used`)) {
        if (!(is.character(`service_disk_used`) && length(`service_disk_used`) == 1)) {
          stop(paste("Error! Invalid data for `service_disk_used`. Must be a string:", `service_disk_used`))
        }
        self$`service_disk_used` <- `service_disk_used`
      }
      if (!missing(`service_disk_total`)) {
        if (!(is.character(`service_disk_total`) && length(`service_disk_total`) == 1)) {
          stop(paste("Error! Invalid data for `service_disk_total`. Must be a string:", `service_disk_total`))
        }
        self$`service_disk_total` <- `service_disk_total`
      }
      if (!missing(`disk_percentage`)) {
        self$`disk_percentage` <- `disk_percentage`
      }
      if (!missing(`memory`)) {
        if (!(is.character(`memory`) && length(`memory`) == 1)) {
          stop(paste("Error! Invalid data for `memory`. Must be a string:", `memory`))
        }
        self$`memory` <- `memory`
      }
      if (!missing(`hdd`)) {
        if (!(is.character(`hdd`) && length(`hdd`) == 1)) {
          stop(paste("Error! Invalid data for `hdd`. Must be a string:", `hdd`))
        }
        self$`hdd` <- `hdd`
      }
      if (!missing(`service_overview_extra`)) {
        stopifnot(is.vector(`service_overview_extra`), length(`service_overview_extra`) != 0)
        sapply(`service_overview_extra`, function(x) stopifnot(is.character(x)))
        self$`service_overview_extra` <- `service_overview_extra`
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
    #' @return Quickserver as a base R list.
    #' @examples
    #' # convert array of Quickserver (x) to a data frame
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
    #' Convert Quickserver to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      QuickserverObject <- list()
      if (!is.null(self$`serviceInfo`)) {
        QuickserverObject[["serviceInfo"]] <-
          self$extractSimpleType(self$`serviceInfo`)
      }
      if (!is.null(self$`client_links`)) {
        QuickserverObject[["client_links"]] <-
          self$extractSimpleType(self$`client_links`)
      }
      if (!is.null(self$`billingDetails`)) {
        QuickserverObject[["billingDetails"]] <-
          self$extractSimpleType(self$`billingDetails`)
      }
      if (!is.null(self$`custCurrency`)) {
        QuickserverObject[["custCurrency"]] <-
          self$`custCurrency`
      }
      if (!is.null(self$`custCurrencySymbol`)) {
        QuickserverObject[["custCurrencySymbol"]] <-
          self$`custCurrencySymbol`
      }
      if (!is.null(self$`serviceMaster`)) {
        QuickserverObject[["serviceMaster"]] <-
          self$extractSimpleType(self$`serviceMaster`)
      }
      if (!is.null(self$`package`)) {
        QuickserverObject[["package"]] <-
          self$`package`
      }
      if (!is.null(self$`os_template`)) {
        QuickserverObject[["os_template"]] <-
          self$`os_template`
      }
      if (!is.null(self$`serviceExtra`)) {
        QuickserverObject[["serviceExtra"]] <-
          self$extractSimpleType(self$`serviceExtra`)
      }
      if (!is.null(self$`extraInfoTables`)) {
        QuickserverObject[["extraInfoTables"]] <-
          self$extractSimpleType(self$`extraInfoTables`)
      }
      if (!is.null(self$`cpu_graph_data`)) {
        QuickserverObject[["cpu_graph_data"]] <-
          self$`cpu_graph_data`
      }
      if (!is.null(self$`bandwidth_xaxis`)) {
        QuickserverObject[["bandwidth_xaxis"]] <-
          self$`bandwidth_xaxis`
      }
      if (!is.null(self$`bandwidth_yaxis`)) {
        QuickserverObject[["bandwidth_yaxis"]] <-
          self$`bandwidth_yaxis`
      }
      if (!is.null(self$`module`)) {
        QuickserverObject[["module"]] <-
          self$`module`
      }
      if (!is.null(self$`token`)) {
        QuickserverObject[["token"]] <-
          self$`token`
      }
      if (!is.null(self$`service_disk_used`)) {
        QuickserverObject[["service_disk_used"]] <-
          self$`service_disk_used`
      }
      if (!is.null(self$`service_disk_total`)) {
        QuickserverObject[["service_disk_total"]] <-
          self$`service_disk_total`
      }
      if (!is.null(self$`disk_percentage`)) {
        QuickserverObject[["disk_percentage"]] <-
          self$`disk_percentage`
      }
      if (!is.null(self$`memory`)) {
        QuickserverObject[["memory"]] <-
          self$`memory`
      }
      if (!is.null(self$`hdd`)) {
        QuickserverObject[["hdd"]] <-
          self$`hdd`
      }
      if (!is.null(self$`service_overview_extra`)) {
        QuickserverObject[["service_overview_extra"]] <-
          self$`service_overview_extra`
      }
      return(QuickserverObject)
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
    #' Deserialize JSON string into an instance of Quickserver
    #'
    #' @param input_json the JSON input
    #' @return the instance of Quickserver
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`serviceInfo`)) {
        `serviceinfo_object` <- QuickserverServiceInfo$new()
        `serviceinfo_object`$fromJSON(jsonlite::toJSON(this_object$`serviceInfo`, auto_unbox = TRUE, digits = NA))
        self$`serviceInfo` <- `serviceinfo_object`
      }
      if (!is.null(this_object$`client_links`)) {
        self$`client_links` <- ApiClient$new()$deserializeObj(this_object$`client_links`, "array[QuickserverClientLink]", loadNamespace("interserverapi"))
      }
      if (!is.null(this_object$`billingDetails`)) {
        `billingdetails_object` <- QuickserverBillingDetails$new()
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
        `servicemaster_object` <- QuickserverServiceMaster$new()
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
        `serviceextra_object` <- QuickserverServiceExtra$new()
        `serviceextra_object`$fromJSON(jsonlite::toJSON(this_object$`serviceExtra`, auto_unbox = TRUE, digits = NA))
        self$`serviceExtra` <- `serviceextra_object`
      }
      if (!is.null(this_object$`extraInfoTables`)) {
        `extrainfotables_object` <- QuickserverExtraInfoTables$new()
        `extrainfotables_object`$fromJSON(jsonlite::toJSON(this_object$`extraInfoTables`, auto_unbox = TRUE, digits = NA))
        self$`extraInfoTables` <- `extrainfotables_object`
      }
      if (!is.null(this_object$`cpu_graph_data`)) {
        self$`cpu_graph_data` <- this_object$`cpu_graph_data`
      }
      if (!is.null(this_object$`bandwidth_xaxis`)) {
        self$`bandwidth_xaxis` <- this_object$`bandwidth_xaxis`
      }
      if (!is.null(this_object$`bandwidth_yaxis`)) {
        self$`bandwidth_yaxis` <- this_object$`bandwidth_yaxis`
      }
      if (!is.null(this_object$`module`)) {
        self$`module` <- this_object$`module`
      }
      if (!is.null(this_object$`token`)) {
        self$`token` <- this_object$`token`
      }
      if (!is.null(this_object$`service_disk_used`)) {
        self$`service_disk_used` <- this_object$`service_disk_used`
      }
      if (!is.null(this_object$`service_disk_total`)) {
        self$`service_disk_total` <- this_object$`service_disk_total`
      }
      if (!is.null(this_object$`disk_percentage`)) {
        self$`disk_percentage` <- this_object$`disk_percentage`
      }
      if (!is.null(this_object$`memory`)) {
        self$`memory` <- this_object$`memory`
      }
      if (!is.null(this_object$`hdd`)) {
        self$`hdd` <- this_object$`hdd`
      }
      if (!is.null(this_object$`service_overview_extra`)) {
        self$`service_overview_extra` <- ApiClient$new()$deserializeObj(this_object$`service_overview_extra`, "array[character]", loadNamespace("interserverapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Quickserver in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Quickserver
    #'
    #' @param input_json the JSON input
    #' @return the instance of Quickserver
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`serviceInfo` <- QuickserverServiceInfo$new()$fromJSON(jsonlite::toJSON(this_object$`serviceInfo`, auto_unbox = TRUE, digits = NA))
      self$`client_links` <- ApiClient$new()$deserializeObj(this_object$`client_links`, "array[QuickserverClientLink]", loadNamespace("interserverapi"))
      self$`billingDetails` <- QuickserverBillingDetails$new()$fromJSON(jsonlite::toJSON(this_object$`billingDetails`, auto_unbox = TRUE, digits = NA))
      self$`custCurrency` <- this_object$`custCurrency`
      self$`custCurrencySymbol` <- this_object$`custCurrencySymbol`
      self$`serviceMaster` <- QuickserverServiceMaster$new()$fromJSON(jsonlite::toJSON(this_object$`serviceMaster`, auto_unbox = TRUE, digits = NA))
      self$`package` <- this_object$`package`
      self$`os_template` <- this_object$`os_template`
      self$`serviceExtra` <- QuickserverServiceExtra$new()$fromJSON(jsonlite::toJSON(this_object$`serviceExtra`, auto_unbox = TRUE, digits = NA))
      self$`extraInfoTables` <- QuickserverExtraInfoTables$new()$fromJSON(jsonlite::toJSON(this_object$`extraInfoTables`, auto_unbox = TRUE, digits = NA))
      self$`cpu_graph_data` <- this_object$`cpu_graph_data`
      self$`bandwidth_xaxis` <- this_object$`bandwidth_xaxis`
      self$`bandwidth_yaxis` <- this_object$`bandwidth_yaxis`
      self$`module` <- this_object$`module`
      self$`token` <- this_object$`token`
      self$`service_disk_used` <- this_object$`service_disk_used`
      self$`service_disk_total` <- this_object$`service_disk_total`
      self$`disk_percentage` <- this_object$`disk_percentage`
      self$`memory` <- this_object$`memory`
      self$`hdd` <- this_object$`hdd`
      self$`service_overview_extra` <- ApiClient$new()$deserializeObj(this_object$`service_overview_extra`, "array[character]", loadNamespace("interserverapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to Quickserver and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `serviceInfo`
      if (!is.null(input_json$`serviceInfo`)) {
        stopifnot(R6::is.R6(input_json$`serviceInfo`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Quickserver: the required field `serviceInfo` is missing."))
      }
      # check the required field `client_links`
      if (!is.null(input_json$`client_links`)) {
        stopifnot(is.vector(input_json$`client_links`), length(input_json$`client_links`) != 0)
        tmp <- sapply(input_json$`client_links`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Quickserver: the required field `client_links` is missing."))
      }
      # check the required field `billingDetails`
      if (!is.null(input_json$`billingDetails`)) {
        stopifnot(R6::is.R6(input_json$`billingDetails`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Quickserver: the required field `billingDetails` is missing."))
      }
      # check the required field `custCurrency`
      if (!is.null(input_json$`custCurrency`)) {
        if (!(is.character(input_json$`custCurrency`) && length(input_json$`custCurrency`) == 1)) {
          stop(paste("Error! Invalid data for `custCurrency`. Must be a string:", input_json$`custCurrency`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Quickserver: the required field `custCurrency` is missing."))
      }
      # check the required field `custCurrencySymbol`
      if (!is.null(input_json$`custCurrencySymbol`)) {
        if (!(is.character(input_json$`custCurrencySymbol`) && length(input_json$`custCurrencySymbol`) == 1)) {
          stop(paste("Error! Invalid data for `custCurrencySymbol`. Must be a string:", input_json$`custCurrencySymbol`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Quickserver: the required field `custCurrencySymbol` is missing."))
      }
      # check the required field `serviceMaster`
      if (!is.null(input_json$`serviceMaster`)) {
        stopifnot(R6::is.R6(input_json$`serviceMaster`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Quickserver: the required field `serviceMaster` is missing."))
      }
      # check the required field `package`
      if (!is.null(input_json$`package`)) {
        if (!(is.character(input_json$`package`) && length(input_json$`package`) == 1)) {
          stop(paste("Error! Invalid data for `package`. Must be a string:", input_json$`package`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Quickserver: the required field `package` is missing."))
      }
      # check the required field `os_template`
      if (!is.null(input_json$`os_template`)) {
        if (!(is.character(input_json$`os_template`) && length(input_json$`os_template`) == 1)) {
          stop(paste("Error! Invalid data for `os_template`. Must be a string:", input_json$`os_template`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Quickserver: the required field `os_template` is missing."))
      }
      # check the required field `serviceExtra`
      if (!is.null(input_json$`serviceExtra`)) {
        stopifnot(R6::is.R6(input_json$`serviceExtra`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Quickserver: the required field `serviceExtra` is missing."))
      }
      # check the required field `extraInfoTables`
      if (!is.null(input_json$`extraInfoTables`)) {
        stopifnot(R6::is.R6(input_json$`extraInfoTables`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Quickserver: the required field `extraInfoTables` is missing."))
      }
      # check the required field `cpu_graph_data`
      if (!is.null(input_json$`cpu_graph_data`)) {
        if (!(is.character(input_json$`cpu_graph_data`) && length(input_json$`cpu_graph_data`) == 1)) {
          stop(paste("Error! Invalid data for `cpu_graph_data`. Must be a string:", input_json$`cpu_graph_data`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Quickserver: the required field `cpu_graph_data` is missing."))
      }
      # check the required field `bandwidth_xaxis`
      if (!is.null(input_json$`bandwidth_xaxis`)) {
        if (!(is.character(input_json$`bandwidth_xaxis`) && length(input_json$`bandwidth_xaxis`) == 1)) {
          stop(paste("Error! Invalid data for `bandwidth_xaxis`. Must be a string:", input_json$`bandwidth_xaxis`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Quickserver: the required field `bandwidth_xaxis` is missing."))
      }
      # check the required field `bandwidth_yaxis`
      if (!is.null(input_json$`bandwidth_yaxis`)) {
        if (!(is.character(input_json$`bandwidth_yaxis`) && length(input_json$`bandwidth_yaxis`) == 1)) {
          stop(paste("Error! Invalid data for `bandwidth_yaxis`. Must be a string:", input_json$`bandwidth_yaxis`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Quickserver: the required field `bandwidth_yaxis` is missing."))
      }
      # check the required field `module`
      if (!is.null(input_json$`module`)) {
        if (!(is.character(input_json$`module`) && length(input_json$`module`) == 1)) {
          stop(paste("Error! Invalid data for `module`. Must be a string:", input_json$`module`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Quickserver: the required field `module` is missing."))
      }
      # check the required field `token`
      if (!is.null(input_json$`token`)) {
        if (!(is.character(input_json$`token`) && length(input_json$`token`) == 1)) {
          stop(paste("Error! Invalid data for `token`. Must be a string:", input_json$`token`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Quickserver: the required field `token` is missing."))
      }
      # check the required field `service_disk_used`
      if (!is.null(input_json$`service_disk_used`)) {
        if (!(is.character(input_json$`service_disk_used`) && length(input_json$`service_disk_used`) == 1)) {
          stop(paste("Error! Invalid data for `service_disk_used`. Must be a string:", input_json$`service_disk_used`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Quickserver: the required field `service_disk_used` is missing."))
      }
      # check the required field `service_disk_total`
      if (!is.null(input_json$`service_disk_total`)) {
        if (!(is.character(input_json$`service_disk_total`) && length(input_json$`service_disk_total`) == 1)) {
          stop(paste("Error! Invalid data for `service_disk_total`. Must be a string:", input_json$`service_disk_total`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Quickserver: the required field `service_disk_total` is missing."))
      }
      # check the required field `disk_percentage`
      if (!is.null(input_json$`disk_percentage`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Quickserver: the required field `disk_percentage` is missing."))
      }
      # check the required field `memory`
      if (!is.null(input_json$`memory`)) {
        if (!(is.character(input_json$`memory`) && length(input_json$`memory`) == 1)) {
          stop(paste("Error! Invalid data for `memory`. Must be a string:", input_json$`memory`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Quickserver: the required field `memory` is missing."))
      }
      # check the required field `hdd`
      if (!is.null(input_json$`hdd`)) {
        if (!(is.character(input_json$`hdd`) && length(input_json$`hdd`) == 1)) {
          stop(paste("Error! Invalid data for `hdd`. Must be a string:", input_json$`hdd`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Quickserver: the required field `hdd` is missing."))
      }
      # check the required field `service_overview_extra`
      if (!is.null(input_json$`service_overview_extra`)) {
        stopifnot(is.vector(input_json$`service_overview_extra`), length(input_json$`service_overview_extra`) != 0)
        tmp <- sapply(input_json$`service_overview_extra`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Quickserver: the required field `service_overview_extra` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Quickserver
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

      # check if the required `os_template` is null
      if (is.null(self$`os_template`)) {
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

      # check if the required `cpu_graph_data` is null
      if (is.null(self$`cpu_graph_data`)) {
        return(FALSE)
      }

      # check if the required `bandwidth_xaxis` is null
      if (is.null(self$`bandwidth_xaxis`)) {
        return(FALSE)
      }

      # check if the required `bandwidth_yaxis` is null
      if (is.null(self$`bandwidth_yaxis`)) {
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

      # check if the required `service_disk_used` is null
      if (is.null(self$`service_disk_used`)) {
        return(FALSE)
      }

      # check if the required `service_disk_total` is null
      if (is.null(self$`service_disk_total`)) {
        return(FALSE)
      }

      # check if the required `disk_percentage` is null
      if (is.null(self$`disk_percentage`)) {
        return(FALSE)
      }

      # check if the required `memory` is null
      if (is.null(self$`memory`)) {
        return(FALSE)
      }

      # check if the required `hdd` is null
      if (is.null(self$`hdd`)) {
        return(FALSE)
      }

      # check if the required `service_overview_extra` is null
      if (is.null(self$`service_overview_extra`)) {
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

      # check if the required `os_template` is null
      if (is.null(self$`os_template`)) {
        invalid_fields["os_template"] <- "Non-nullable required field `os_template` cannot be null."
      }

      # check if the required `serviceExtra` is null
      if (is.null(self$`serviceExtra`)) {
        invalid_fields["serviceExtra"] <- "Non-nullable required field `serviceExtra` cannot be null."
      }

      # check if the required `extraInfoTables` is null
      if (is.null(self$`extraInfoTables`)) {
        invalid_fields["extraInfoTables"] <- "Non-nullable required field `extraInfoTables` cannot be null."
      }

      # check if the required `cpu_graph_data` is null
      if (is.null(self$`cpu_graph_data`)) {
        invalid_fields["cpu_graph_data"] <- "Non-nullable required field `cpu_graph_data` cannot be null."
      }

      # check if the required `bandwidth_xaxis` is null
      if (is.null(self$`bandwidth_xaxis`)) {
        invalid_fields["bandwidth_xaxis"] <- "Non-nullable required field `bandwidth_xaxis` cannot be null."
      }

      # check if the required `bandwidth_yaxis` is null
      if (is.null(self$`bandwidth_yaxis`)) {
        invalid_fields["bandwidth_yaxis"] <- "Non-nullable required field `bandwidth_yaxis` cannot be null."
      }

      # check if the required `module` is null
      if (is.null(self$`module`)) {
        invalid_fields["module"] <- "Non-nullable required field `module` cannot be null."
      }

      # check if the required `token` is null
      if (is.null(self$`token`)) {
        invalid_fields["token"] <- "Non-nullable required field `token` cannot be null."
      }

      # check if the required `service_disk_used` is null
      if (is.null(self$`service_disk_used`)) {
        invalid_fields["service_disk_used"] <- "Non-nullable required field `service_disk_used` cannot be null."
      }

      # check if the required `service_disk_total` is null
      if (is.null(self$`service_disk_total`)) {
        invalid_fields["service_disk_total"] <- "Non-nullable required field `service_disk_total` cannot be null."
      }

      # check if the required `disk_percentage` is null
      if (is.null(self$`disk_percentage`)) {
        invalid_fields["disk_percentage"] <- "Non-nullable required field `disk_percentage` cannot be null."
      }

      # check if the required `memory` is null
      if (is.null(self$`memory`)) {
        invalid_fields["memory"] <- "Non-nullable required field `memory` cannot be null."
      }

      # check if the required `hdd` is null
      if (is.null(self$`hdd`)) {
        invalid_fields["hdd"] <- "Non-nullable required field `hdd` cannot be null."
      }

      # check if the required `service_overview_extra` is null
      if (is.null(self$`service_overview_extra`)) {
        invalid_fields["service_overview_extra"] <- "Non-nullable required field `service_overview_extra` cannot be null."
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
# Quickserver$unlock()
#
## Below is an example to define the print function
# Quickserver$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Quickserver$lock()

