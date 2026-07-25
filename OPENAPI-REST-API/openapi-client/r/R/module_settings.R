#' Create a new ModuleSettings
#'
#' @description
#' The settings for a module.
#'
#' @docType class
#' @title ModuleSettings
#' @description ModuleSettings Class
#' @format An \code{R6Class} generator object
#' @field SERVICE_ID_OFFSET  integer
#' @field USE_REPEAT_INVOICE  character
#' @field USE_PACKAGES  character
#' @field BILLING_DAYS_OFFSET  integer
#' @field IMGNAME  character
#' @field REPEAT_BILLING_METHOD  integer
#' @field DELETE_PENDING_DAYS  integer
#' @field SUSPEND_DAYS  integer
#' @field SUSPEND_WARNING_DAYS  integer
#' @field TITLE  character
#' @field MENUNAME  character
#' @field EMAIL_FROM  character
#' @field TBLNAME  character
#' @field TABLE  character
#' @field TITLE_FIELD  character
#' @field PREFIX  character
#' @field TITLE_FIELD2  character [optional]
#' @field TITLE_FIELD3  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ModuleSettings <- R6::R6Class(
  "ModuleSettings",
  public = list(
    `SERVICE_ID_OFFSET` = NULL,
    `USE_REPEAT_INVOICE` = NULL,
    `USE_PACKAGES` = NULL,
    `BILLING_DAYS_OFFSET` = NULL,
    `IMGNAME` = NULL,
    `REPEAT_BILLING_METHOD` = NULL,
    `DELETE_PENDING_DAYS` = NULL,
    `SUSPEND_DAYS` = NULL,
    `SUSPEND_WARNING_DAYS` = NULL,
    `TITLE` = NULL,
    `MENUNAME` = NULL,
    `EMAIL_FROM` = NULL,
    `TBLNAME` = NULL,
    `TABLE` = NULL,
    `TITLE_FIELD` = NULL,
    `PREFIX` = NULL,
    `TITLE_FIELD2` = NULL,
    `TITLE_FIELD3` = NULL,

    #' @description
    #' Initialize a new ModuleSettings class.
    #'
    #' @param SERVICE_ID_OFFSET SERVICE_ID_OFFSET
    #' @param USE_REPEAT_INVOICE USE_REPEAT_INVOICE
    #' @param USE_PACKAGES USE_PACKAGES
    #' @param BILLING_DAYS_OFFSET BILLING_DAYS_OFFSET
    #' @param IMGNAME IMGNAME
    #' @param REPEAT_BILLING_METHOD REPEAT_BILLING_METHOD
    #' @param DELETE_PENDING_DAYS DELETE_PENDING_DAYS
    #' @param SUSPEND_DAYS SUSPEND_DAYS
    #' @param SUSPEND_WARNING_DAYS SUSPEND_WARNING_DAYS
    #' @param TITLE TITLE
    #' @param MENUNAME MENUNAME
    #' @param EMAIL_FROM EMAIL_FROM
    #' @param TBLNAME TBLNAME
    #' @param TABLE TABLE
    #' @param TITLE_FIELD TITLE_FIELD
    #' @param PREFIX PREFIX
    #' @param TITLE_FIELD2 TITLE_FIELD2
    #' @param TITLE_FIELD3 TITLE_FIELD3
    #' @param ... Other optional arguments.
    initialize = function(`SERVICE_ID_OFFSET`, `USE_REPEAT_INVOICE`, `USE_PACKAGES`, `BILLING_DAYS_OFFSET`, `IMGNAME`, `REPEAT_BILLING_METHOD`, `DELETE_PENDING_DAYS`, `SUSPEND_DAYS`, `SUSPEND_WARNING_DAYS`, `TITLE`, `MENUNAME`, `EMAIL_FROM`, `TBLNAME`, `TABLE`, `TITLE_FIELD`, `PREFIX`, `TITLE_FIELD2` = NULL, `TITLE_FIELD3` = NULL, ...) {
      if (!missing(`SERVICE_ID_OFFSET`)) {
        if (!(is.numeric(`SERVICE_ID_OFFSET`) && length(`SERVICE_ID_OFFSET`) == 1)) {
          stop(paste("Error! Invalid data for `SERVICE_ID_OFFSET`. Must be an integer:", `SERVICE_ID_OFFSET`))
        }
        self$`SERVICE_ID_OFFSET` <- `SERVICE_ID_OFFSET`
      }
      if (!missing(`USE_REPEAT_INVOICE`)) {
        if (!(is.logical(`USE_REPEAT_INVOICE`) && length(`USE_REPEAT_INVOICE`) == 1)) {
          stop(paste("Error! Invalid data for `USE_REPEAT_INVOICE`. Must be a boolean:", `USE_REPEAT_INVOICE`))
        }
        self$`USE_REPEAT_INVOICE` <- `USE_REPEAT_INVOICE`
      }
      if (!missing(`USE_PACKAGES`)) {
        if (!(is.logical(`USE_PACKAGES`) && length(`USE_PACKAGES`) == 1)) {
          stop(paste("Error! Invalid data for `USE_PACKAGES`. Must be a boolean:", `USE_PACKAGES`))
        }
        self$`USE_PACKAGES` <- `USE_PACKAGES`
      }
      if (!missing(`BILLING_DAYS_OFFSET`)) {
        if (!(is.numeric(`BILLING_DAYS_OFFSET`) && length(`BILLING_DAYS_OFFSET`) == 1)) {
          stop(paste("Error! Invalid data for `BILLING_DAYS_OFFSET`. Must be an integer:", `BILLING_DAYS_OFFSET`))
        }
        self$`BILLING_DAYS_OFFSET` <- `BILLING_DAYS_OFFSET`
      }
      if (!missing(`IMGNAME`)) {
        if (!(is.character(`IMGNAME`) && length(`IMGNAME`) == 1)) {
          stop(paste("Error! Invalid data for `IMGNAME`. Must be a string:", `IMGNAME`))
        }
        self$`IMGNAME` <- `IMGNAME`
      }
      if (!missing(`REPEAT_BILLING_METHOD`)) {
        if (!(is.numeric(`REPEAT_BILLING_METHOD`) && length(`REPEAT_BILLING_METHOD`) == 1)) {
          stop(paste("Error! Invalid data for `REPEAT_BILLING_METHOD`. Must be an integer:", `REPEAT_BILLING_METHOD`))
        }
        self$`REPEAT_BILLING_METHOD` <- `REPEAT_BILLING_METHOD`
      }
      if (!missing(`DELETE_PENDING_DAYS`)) {
        if (!(is.numeric(`DELETE_PENDING_DAYS`) && length(`DELETE_PENDING_DAYS`) == 1)) {
          stop(paste("Error! Invalid data for `DELETE_PENDING_DAYS`. Must be an integer:", `DELETE_PENDING_DAYS`))
        }
        self$`DELETE_PENDING_DAYS` <- `DELETE_PENDING_DAYS`
      }
      if (!missing(`SUSPEND_DAYS`)) {
        if (!(is.numeric(`SUSPEND_DAYS`) && length(`SUSPEND_DAYS`) == 1)) {
          stop(paste("Error! Invalid data for `SUSPEND_DAYS`. Must be an integer:", `SUSPEND_DAYS`))
        }
        self$`SUSPEND_DAYS` <- `SUSPEND_DAYS`
      }
      if (!missing(`SUSPEND_WARNING_DAYS`)) {
        if (!(is.numeric(`SUSPEND_WARNING_DAYS`) && length(`SUSPEND_WARNING_DAYS`) == 1)) {
          stop(paste("Error! Invalid data for `SUSPEND_WARNING_DAYS`. Must be an integer:", `SUSPEND_WARNING_DAYS`))
        }
        self$`SUSPEND_WARNING_DAYS` <- `SUSPEND_WARNING_DAYS`
      }
      if (!missing(`TITLE`)) {
        if (!(is.character(`TITLE`) && length(`TITLE`) == 1)) {
          stop(paste("Error! Invalid data for `TITLE`. Must be a string:", `TITLE`))
        }
        self$`TITLE` <- `TITLE`
      }
      if (!missing(`MENUNAME`)) {
        if (!(is.character(`MENUNAME`) && length(`MENUNAME`) == 1)) {
          stop(paste("Error! Invalid data for `MENUNAME`. Must be a string:", `MENUNAME`))
        }
        self$`MENUNAME` <- `MENUNAME`
      }
      if (!missing(`EMAIL_FROM`)) {
        if (!(is.character(`EMAIL_FROM`) && length(`EMAIL_FROM`) == 1)) {
          stop(paste("Error! Invalid data for `EMAIL_FROM`. Must be a string:", `EMAIL_FROM`))
        }
        self$`EMAIL_FROM` <- `EMAIL_FROM`
      }
      if (!missing(`TBLNAME`)) {
        if (!(is.character(`TBLNAME`) && length(`TBLNAME`) == 1)) {
          stop(paste("Error! Invalid data for `TBLNAME`. Must be a string:", `TBLNAME`))
        }
        self$`TBLNAME` <- `TBLNAME`
      }
      if (!missing(`TABLE`)) {
        if (!(is.character(`TABLE`) && length(`TABLE`) == 1)) {
          stop(paste("Error! Invalid data for `TABLE`. Must be a string:", `TABLE`))
        }
        self$`TABLE` <- `TABLE`
      }
      if (!missing(`TITLE_FIELD`)) {
        if (!(is.character(`TITLE_FIELD`) && length(`TITLE_FIELD`) == 1)) {
          stop(paste("Error! Invalid data for `TITLE_FIELD`. Must be a string:", `TITLE_FIELD`))
        }
        self$`TITLE_FIELD` <- `TITLE_FIELD`
      }
      if (!missing(`PREFIX`)) {
        if (!(is.character(`PREFIX`) && length(`PREFIX`) == 1)) {
          stop(paste("Error! Invalid data for `PREFIX`. Must be a string:", `PREFIX`))
        }
        self$`PREFIX` <- `PREFIX`
      }
      if (!is.null(`TITLE_FIELD2`)) {
        if (!(is.character(`TITLE_FIELD2`) && length(`TITLE_FIELD2`) == 1)) {
          stop(paste("Error! Invalid data for `TITLE_FIELD2`. Must be a string:", `TITLE_FIELD2`))
        }
        self$`TITLE_FIELD2` <- `TITLE_FIELD2`
      }
      if (!is.null(`TITLE_FIELD3`)) {
        if (!(is.character(`TITLE_FIELD3`) && length(`TITLE_FIELD3`) == 1)) {
          stop(paste("Error! Invalid data for `TITLE_FIELD3`. Must be a string:", `TITLE_FIELD3`))
        }
        self$`TITLE_FIELD3` <- `TITLE_FIELD3`
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
    #' @return ModuleSettings as a base R list.
    #' @examples
    #' # convert array of ModuleSettings (x) to a data frame
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
    #' Convert ModuleSettings to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ModuleSettingsObject <- list()
      if (!is.null(self$`SERVICE_ID_OFFSET`)) {
        ModuleSettingsObject[["SERVICE_ID_OFFSET"]] <-
          self$`SERVICE_ID_OFFSET`
      }
      if (!is.null(self$`USE_REPEAT_INVOICE`)) {
        ModuleSettingsObject[["USE_REPEAT_INVOICE"]] <-
          self$`USE_REPEAT_INVOICE`
      }
      if (!is.null(self$`USE_PACKAGES`)) {
        ModuleSettingsObject[["USE_PACKAGES"]] <-
          self$`USE_PACKAGES`
      }
      if (!is.null(self$`BILLING_DAYS_OFFSET`)) {
        ModuleSettingsObject[["BILLING_DAYS_OFFSET"]] <-
          self$`BILLING_DAYS_OFFSET`
      }
      if (!is.null(self$`IMGNAME`)) {
        ModuleSettingsObject[["IMGNAME"]] <-
          self$`IMGNAME`
      }
      if (!is.null(self$`REPEAT_BILLING_METHOD`)) {
        ModuleSettingsObject[["REPEAT_BILLING_METHOD"]] <-
          self$`REPEAT_BILLING_METHOD`
      }
      if (!is.null(self$`DELETE_PENDING_DAYS`)) {
        ModuleSettingsObject[["DELETE_PENDING_DAYS"]] <-
          self$`DELETE_PENDING_DAYS`
      }
      if (!is.null(self$`SUSPEND_DAYS`)) {
        ModuleSettingsObject[["SUSPEND_DAYS"]] <-
          self$`SUSPEND_DAYS`
      }
      if (!is.null(self$`SUSPEND_WARNING_DAYS`)) {
        ModuleSettingsObject[["SUSPEND_WARNING_DAYS"]] <-
          self$`SUSPEND_WARNING_DAYS`
      }
      if (!is.null(self$`TITLE`)) {
        ModuleSettingsObject[["TITLE"]] <-
          self$`TITLE`
      }
      if (!is.null(self$`MENUNAME`)) {
        ModuleSettingsObject[["MENUNAME"]] <-
          self$`MENUNAME`
      }
      if (!is.null(self$`EMAIL_FROM`)) {
        ModuleSettingsObject[["EMAIL_FROM"]] <-
          self$`EMAIL_FROM`
      }
      if (!is.null(self$`TBLNAME`)) {
        ModuleSettingsObject[["TBLNAME"]] <-
          self$`TBLNAME`
      }
      if (!is.null(self$`TABLE`)) {
        ModuleSettingsObject[["TABLE"]] <-
          self$`TABLE`
      }
      if (!is.null(self$`TITLE_FIELD`)) {
        ModuleSettingsObject[["TITLE_FIELD"]] <-
          self$`TITLE_FIELD`
      }
      if (!is.null(self$`PREFIX`)) {
        ModuleSettingsObject[["PREFIX"]] <-
          self$`PREFIX`
      }
      if (!is.null(self$`TITLE_FIELD2`)) {
        ModuleSettingsObject[["TITLE_FIELD2"]] <-
          self$`TITLE_FIELD2`
      }
      if (!is.null(self$`TITLE_FIELD3`)) {
        ModuleSettingsObject[["TITLE_FIELD3"]] <-
          self$`TITLE_FIELD3`
      }
      return(ModuleSettingsObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ModuleSettings
    #'
    #' @param input_json the JSON input
    #' @return the instance of ModuleSettings
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`SERVICE_ID_OFFSET`)) {
        self$`SERVICE_ID_OFFSET` <- this_object$`SERVICE_ID_OFFSET`
      }
      if (!is.null(this_object$`USE_REPEAT_INVOICE`)) {
        self$`USE_REPEAT_INVOICE` <- this_object$`USE_REPEAT_INVOICE`
      }
      if (!is.null(this_object$`USE_PACKAGES`)) {
        self$`USE_PACKAGES` <- this_object$`USE_PACKAGES`
      }
      if (!is.null(this_object$`BILLING_DAYS_OFFSET`)) {
        self$`BILLING_DAYS_OFFSET` <- this_object$`BILLING_DAYS_OFFSET`
      }
      if (!is.null(this_object$`IMGNAME`)) {
        self$`IMGNAME` <- this_object$`IMGNAME`
      }
      if (!is.null(this_object$`REPEAT_BILLING_METHOD`)) {
        self$`REPEAT_BILLING_METHOD` <- this_object$`REPEAT_BILLING_METHOD`
      }
      if (!is.null(this_object$`DELETE_PENDING_DAYS`)) {
        self$`DELETE_PENDING_DAYS` <- this_object$`DELETE_PENDING_DAYS`
      }
      if (!is.null(this_object$`SUSPEND_DAYS`)) {
        self$`SUSPEND_DAYS` <- this_object$`SUSPEND_DAYS`
      }
      if (!is.null(this_object$`SUSPEND_WARNING_DAYS`)) {
        self$`SUSPEND_WARNING_DAYS` <- this_object$`SUSPEND_WARNING_DAYS`
      }
      if (!is.null(this_object$`TITLE`)) {
        self$`TITLE` <- this_object$`TITLE`
      }
      if (!is.null(this_object$`MENUNAME`)) {
        self$`MENUNAME` <- this_object$`MENUNAME`
      }
      if (!is.null(this_object$`EMAIL_FROM`)) {
        self$`EMAIL_FROM` <- this_object$`EMAIL_FROM`
      }
      if (!is.null(this_object$`TBLNAME`)) {
        self$`TBLNAME` <- this_object$`TBLNAME`
      }
      if (!is.null(this_object$`TABLE`)) {
        self$`TABLE` <- this_object$`TABLE`
      }
      if (!is.null(this_object$`TITLE_FIELD`)) {
        self$`TITLE_FIELD` <- this_object$`TITLE_FIELD`
      }
      if (!is.null(this_object$`PREFIX`)) {
        self$`PREFIX` <- this_object$`PREFIX`
      }
      if (!is.null(this_object$`TITLE_FIELD2`)) {
        self$`TITLE_FIELD2` <- this_object$`TITLE_FIELD2`
      }
      if (!is.null(this_object$`TITLE_FIELD3`)) {
        self$`TITLE_FIELD3` <- this_object$`TITLE_FIELD3`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ModuleSettings in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ModuleSettings
    #'
    #' @param input_json the JSON input
    #' @return the instance of ModuleSettings
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`SERVICE_ID_OFFSET` <- this_object$`SERVICE_ID_OFFSET`
      self$`USE_REPEAT_INVOICE` <- this_object$`USE_REPEAT_INVOICE`
      self$`USE_PACKAGES` <- this_object$`USE_PACKAGES`
      self$`BILLING_DAYS_OFFSET` <- this_object$`BILLING_DAYS_OFFSET`
      self$`IMGNAME` <- this_object$`IMGNAME`
      self$`REPEAT_BILLING_METHOD` <- this_object$`REPEAT_BILLING_METHOD`
      self$`DELETE_PENDING_DAYS` <- this_object$`DELETE_PENDING_DAYS`
      self$`SUSPEND_DAYS` <- this_object$`SUSPEND_DAYS`
      self$`SUSPEND_WARNING_DAYS` <- this_object$`SUSPEND_WARNING_DAYS`
      self$`TITLE` <- this_object$`TITLE`
      self$`MENUNAME` <- this_object$`MENUNAME`
      self$`EMAIL_FROM` <- this_object$`EMAIL_FROM`
      self$`TBLNAME` <- this_object$`TBLNAME`
      self$`TABLE` <- this_object$`TABLE`
      self$`TITLE_FIELD` <- this_object$`TITLE_FIELD`
      self$`PREFIX` <- this_object$`PREFIX`
      self$`TITLE_FIELD2` <- this_object$`TITLE_FIELD2`
      self$`TITLE_FIELD3` <- this_object$`TITLE_FIELD3`
      self
    },

    #' @description
    #' Validate JSON input with respect to ModuleSettings and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `SERVICE_ID_OFFSET`
      if (!is.null(input_json$`SERVICE_ID_OFFSET`)) {
        if (!(is.numeric(input_json$`SERVICE_ID_OFFSET`) && length(input_json$`SERVICE_ID_OFFSET`) == 1)) {
          stop(paste("Error! Invalid data for `SERVICE_ID_OFFSET`. Must be an integer:", input_json$`SERVICE_ID_OFFSET`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ModuleSettings: the required field `SERVICE_ID_OFFSET` is missing."))
      }
      # check the required field `USE_REPEAT_INVOICE`
      if (!is.null(input_json$`USE_REPEAT_INVOICE`)) {
        if (!(is.logical(input_json$`USE_REPEAT_INVOICE`) && length(input_json$`USE_REPEAT_INVOICE`) == 1)) {
          stop(paste("Error! Invalid data for `USE_REPEAT_INVOICE`. Must be a boolean:", input_json$`USE_REPEAT_INVOICE`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ModuleSettings: the required field `USE_REPEAT_INVOICE` is missing."))
      }
      # check the required field `USE_PACKAGES`
      if (!is.null(input_json$`USE_PACKAGES`)) {
        if (!(is.logical(input_json$`USE_PACKAGES`) && length(input_json$`USE_PACKAGES`) == 1)) {
          stop(paste("Error! Invalid data for `USE_PACKAGES`. Must be a boolean:", input_json$`USE_PACKAGES`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ModuleSettings: the required field `USE_PACKAGES` is missing."))
      }
      # check the required field `BILLING_DAYS_OFFSET`
      if (!is.null(input_json$`BILLING_DAYS_OFFSET`)) {
        if (!(is.numeric(input_json$`BILLING_DAYS_OFFSET`) && length(input_json$`BILLING_DAYS_OFFSET`) == 1)) {
          stop(paste("Error! Invalid data for `BILLING_DAYS_OFFSET`. Must be an integer:", input_json$`BILLING_DAYS_OFFSET`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ModuleSettings: the required field `BILLING_DAYS_OFFSET` is missing."))
      }
      # check the required field `IMGNAME`
      if (!is.null(input_json$`IMGNAME`)) {
        if (!(is.character(input_json$`IMGNAME`) && length(input_json$`IMGNAME`) == 1)) {
          stop(paste("Error! Invalid data for `IMGNAME`. Must be a string:", input_json$`IMGNAME`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ModuleSettings: the required field `IMGNAME` is missing."))
      }
      # check the required field `REPEAT_BILLING_METHOD`
      if (!is.null(input_json$`REPEAT_BILLING_METHOD`)) {
        if (!(is.numeric(input_json$`REPEAT_BILLING_METHOD`) && length(input_json$`REPEAT_BILLING_METHOD`) == 1)) {
          stop(paste("Error! Invalid data for `REPEAT_BILLING_METHOD`. Must be an integer:", input_json$`REPEAT_BILLING_METHOD`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ModuleSettings: the required field `REPEAT_BILLING_METHOD` is missing."))
      }
      # check the required field `DELETE_PENDING_DAYS`
      if (!is.null(input_json$`DELETE_PENDING_DAYS`)) {
        if (!(is.numeric(input_json$`DELETE_PENDING_DAYS`) && length(input_json$`DELETE_PENDING_DAYS`) == 1)) {
          stop(paste("Error! Invalid data for `DELETE_PENDING_DAYS`. Must be an integer:", input_json$`DELETE_PENDING_DAYS`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ModuleSettings: the required field `DELETE_PENDING_DAYS` is missing."))
      }
      # check the required field `SUSPEND_DAYS`
      if (!is.null(input_json$`SUSPEND_DAYS`)) {
        if (!(is.numeric(input_json$`SUSPEND_DAYS`) && length(input_json$`SUSPEND_DAYS`) == 1)) {
          stop(paste("Error! Invalid data for `SUSPEND_DAYS`. Must be an integer:", input_json$`SUSPEND_DAYS`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ModuleSettings: the required field `SUSPEND_DAYS` is missing."))
      }
      # check the required field `SUSPEND_WARNING_DAYS`
      if (!is.null(input_json$`SUSPEND_WARNING_DAYS`)) {
        if (!(is.numeric(input_json$`SUSPEND_WARNING_DAYS`) && length(input_json$`SUSPEND_WARNING_DAYS`) == 1)) {
          stop(paste("Error! Invalid data for `SUSPEND_WARNING_DAYS`. Must be an integer:", input_json$`SUSPEND_WARNING_DAYS`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ModuleSettings: the required field `SUSPEND_WARNING_DAYS` is missing."))
      }
      # check the required field `TITLE`
      if (!is.null(input_json$`TITLE`)) {
        if (!(is.character(input_json$`TITLE`) && length(input_json$`TITLE`) == 1)) {
          stop(paste("Error! Invalid data for `TITLE`. Must be a string:", input_json$`TITLE`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ModuleSettings: the required field `TITLE` is missing."))
      }
      # check the required field `MENUNAME`
      if (!is.null(input_json$`MENUNAME`)) {
        if (!(is.character(input_json$`MENUNAME`) && length(input_json$`MENUNAME`) == 1)) {
          stop(paste("Error! Invalid data for `MENUNAME`. Must be a string:", input_json$`MENUNAME`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ModuleSettings: the required field `MENUNAME` is missing."))
      }
      # check the required field `EMAIL_FROM`
      if (!is.null(input_json$`EMAIL_FROM`)) {
        if (!(is.character(input_json$`EMAIL_FROM`) && length(input_json$`EMAIL_FROM`) == 1)) {
          stop(paste("Error! Invalid data for `EMAIL_FROM`. Must be a string:", input_json$`EMAIL_FROM`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ModuleSettings: the required field `EMAIL_FROM` is missing."))
      }
      # check the required field `TBLNAME`
      if (!is.null(input_json$`TBLNAME`)) {
        if (!(is.character(input_json$`TBLNAME`) && length(input_json$`TBLNAME`) == 1)) {
          stop(paste("Error! Invalid data for `TBLNAME`. Must be a string:", input_json$`TBLNAME`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ModuleSettings: the required field `TBLNAME` is missing."))
      }
      # check the required field `TABLE`
      if (!is.null(input_json$`TABLE`)) {
        if (!(is.character(input_json$`TABLE`) && length(input_json$`TABLE`) == 1)) {
          stop(paste("Error! Invalid data for `TABLE`. Must be a string:", input_json$`TABLE`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ModuleSettings: the required field `TABLE` is missing."))
      }
      # check the required field `TITLE_FIELD`
      if (!is.null(input_json$`TITLE_FIELD`)) {
        if (!(is.character(input_json$`TITLE_FIELD`) && length(input_json$`TITLE_FIELD`) == 1)) {
          stop(paste("Error! Invalid data for `TITLE_FIELD`. Must be a string:", input_json$`TITLE_FIELD`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ModuleSettings: the required field `TITLE_FIELD` is missing."))
      }
      # check the required field `PREFIX`
      if (!is.null(input_json$`PREFIX`)) {
        if (!(is.character(input_json$`PREFIX`) && length(input_json$`PREFIX`) == 1)) {
          stop(paste("Error! Invalid data for `PREFIX`. Must be a string:", input_json$`PREFIX`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ModuleSettings: the required field `PREFIX` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ModuleSettings
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `SERVICE_ID_OFFSET` is null
      if (is.null(self$`SERVICE_ID_OFFSET`)) {
        return(FALSE)
      }

      # check if the required `USE_REPEAT_INVOICE` is null
      if (is.null(self$`USE_REPEAT_INVOICE`)) {
        return(FALSE)
      }

      # check if the required `USE_PACKAGES` is null
      if (is.null(self$`USE_PACKAGES`)) {
        return(FALSE)
      }

      # check if the required `BILLING_DAYS_OFFSET` is null
      if (is.null(self$`BILLING_DAYS_OFFSET`)) {
        return(FALSE)
      }

      # check if the required `IMGNAME` is null
      if (is.null(self$`IMGNAME`)) {
        return(FALSE)
      }

      # check if the required `REPEAT_BILLING_METHOD` is null
      if (is.null(self$`REPEAT_BILLING_METHOD`)) {
        return(FALSE)
      }

      # check if the required `DELETE_PENDING_DAYS` is null
      if (is.null(self$`DELETE_PENDING_DAYS`)) {
        return(FALSE)
      }

      # check if the required `SUSPEND_DAYS` is null
      if (is.null(self$`SUSPEND_DAYS`)) {
        return(FALSE)
      }

      # check if the required `SUSPEND_WARNING_DAYS` is null
      if (is.null(self$`SUSPEND_WARNING_DAYS`)) {
        return(FALSE)
      }

      # check if the required `TITLE` is null
      if (is.null(self$`TITLE`)) {
        return(FALSE)
      }

      # check if the required `MENUNAME` is null
      if (is.null(self$`MENUNAME`)) {
        return(FALSE)
      }

      # check if the required `EMAIL_FROM` is null
      if (is.null(self$`EMAIL_FROM`)) {
        return(FALSE)
      }

      # check if the required `TBLNAME` is null
      if (is.null(self$`TBLNAME`)) {
        return(FALSE)
      }

      # check if the required `TABLE` is null
      if (is.null(self$`TABLE`)) {
        return(FALSE)
      }

      # check if the required `TITLE_FIELD` is null
      if (is.null(self$`TITLE_FIELD`)) {
        return(FALSE)
      }

      # check if the required `PREFIX` is null
      if (is.null(self$`PREFIX`)) {
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
      # check if the required `SERVICE_ID_OFFSET` is null
      if (is.null(self$`SERVICE_ID_OFFSET`)) {
        invalid_fields["SERVICE_ID_OFFSET"] <- "Non-nullable required field `SERVICE_ID_OFFSET` cannot be null."
      }

      # check if the required `USE_REPEAT_INVOICE` is null
      if (is.null(self$`USE_REPEAT_INVOICE`)) {
        invalid_fields["USE_REPEAT_INVOICE"] <- "Non-nullable required field `USE_REPEAT_INVOICE` cannot be null."
      }

      # check if the required `USE_PACKAGES` is null
      if (is.null(self$`USE_PACKAGES`)) {
        invalid_fields["USE_PACKAGES"] <- "Non-nullable required field `USE_PACKAGES` cannot be null."
      }

      # check if the required `BILLING_DAYS_OFFSET` is null
      if (is.null(self$`BILLING_DAYS_OFFSET`)) {
        invalid_fields["BILLING_DAYS_OFFSET"] <- "Non-nullable required field `BILLING_DAYS_OFFSET` cannot be null."
      }

      # check if the required `IMGNAME` is null
      if (is.null(self$`IMGNAME`)) {
        invalid_fields["IMGNAME"] <- "Non-nullable required field `IMGNAME` cannot be null."
      }

      # check if the required `REPEAT_BILLING_METHOD` is null
      if (is.null(self$`REPEAT_BILLING_METHOD`)) {
        invalid_fields["REPEAT_BILLING_METHOD"] <- "Non-nullable required field `REPEAT_BILLING_METHOD` cannot be null."
      }

      # check if the required `DELETE_PENDING_DAYS` is null
      if (is.null(self$`DELETE_PENDING_DAYS`)) {
        invalid_fields["DELETE_PENDING_DAYS"] <- "Non-nullable required field `DELETE_PENDING_DAYS` cannot be null."
      }

      # check if the required `SUSPEND_DAYS` is null
      if (is.null(self$`SUSPEND_DAYS`)) {
        invalid_fields["SUSPEND_DAYS"] <- "Non-nullable required field `SUSPEND_DAYS` cannot be null."
      }

      # check if the required `SUSPEND_WARNING_DAYS` is null
      if (is.null(self$`SUSPEND_WARNING_DAYS`)) {
        invalid_fields["SUSPEND_WARNING_DAYS"] <- "Non-nullable required field `SUSPEND_WARNING_DAYS` cannot be null."
      }

      # check if the required `TITLE` is null
      if (is.null(self$`TITLE`)) {
        invalid_fields["TITLE"] <- "Non-nullable required field `TITLE` cannot be null."
      }

      # check if the required `MENUNAME` is null
      if (is.null(self$`MENUNAME`)) {
        invalid_fields["MENUNAME"] <- "Non-nullable required field `MENUNAME` cannot be null."
      }

      # check if the required `EMAIL_FROM` is null
      if (is.null(self$`EMAIL_FROM`)) {
        invalid_fields["EMAIL_FROM"] <- "Non-nullable required field `EMAIL_FROM` cannot be null."
      }

      # check if the required `TBLNAME` is null
      if (is.null(self$`TBLNAME`)) {
        invalid_fields["TBLNAME"] <- "Non-nullable required field `TBLNAME` cannot be null."
      }

      # check if the required `TABLE` is null
      if (is.null(self$`TABLE`)) {
        invalid_fields["TABLE"] <- "Non-nullable required field `TABLE` cannot be null."
      }

      # check if the required `TITLE_FIELD` is null
      if (is.null(self$`TITLE_FIELD`)) {
        invalid_fields["TITLE_FIELD"] <- "Non-nullable required field `TITLE_FIELD` cannot be null."
      }

      # check if the required `PREFIX` is null
      if (is.null(self$`PREFIX`)) {
        invalid_fields["PREFIX"] <- "Non-nullable required field `PREFIX` cannot be null."
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
# ModuleSettings$unlock()
#
## Below is an example to define the print function
# ModuleSettings$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ModuleSettings$lock()

