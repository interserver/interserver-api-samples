#' Create a new ServerOrder
#'
#' @description
#' Object representing a server order.
#'
#' @docType class
#' @title ServerOrder
#' @description ServerOrder Class
#' @format An \code{R6Class} generator object
#' @field form_values  \link{ServerOrderFormValues} [optional]
#' @field config_ids  \link{ServerOrderConfigIds} [optional]
#' @field cpu Number of CPUs for the server order. integer [optional]
#' @field field_label  \link{ServerOrderFieldLabels} [optional]
#' @field cpu_li  \link{ServerOrderCpuLi} [optional]
#' @field memory_li  \link{ServerOrderMemoryLi} [optional]
#' @field bandwidth_li  \link{ServerOrderBandwidthLi} [optional]
#' @field ips_li  \link{ServerOrderIpsLi} [optional]
#' @field os_li  \link{ServerOrderOsLi} [optional]
#' @field cp_li  \link{ServerOrderCpLi} [optional]
#' @field raid_li RAID options for the server order. list(\link{ServerOrderRAID}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ServerOrder <- R6::R6Class(
  "ServerOrder",
  public = list(
    `form_values` = NULL,
    `config_ids` = NULL,
    `cpu` = NULL,
    `field_label` = NULL,
    `cpu_li` = NULL,
    `memory_li` = NULL,
    `bandwidth_li` = NULL,
    `ips_li` = NULL,
    `os_li` = NULL,
    `cp_li` = NULL,
    `raid_li` = NULL,

    #' @description
    #' Initialize a new ServerOrder class.
    #'
    #' @param form_values form_values
    #' @param config_ids config_ids
    #' @param cpu Number of CPUs for the server order.
    #' @param field_label field_label
    #' @param cpu_li cpu_li
    #' @param memory_li memory_li
    #' @param bandwidth_li bandwidth_li
    #' @param ips_li ips_li
    #' @param os_li os_li
    #' @param cp_li cp_li
    #' @param raid_li RAID options for the server order.
    #' @param ... Other optional arguments.
    initialize = function(`form_values` = NULL, `config_ids` = NULL, `cpu` = NULL, `field_label` = NULL, `cpu_li` = NULL, `memory_li` = NULL, `bandwidth_li` = NULL, `ips_li` = NULL, `os_li` = NULL, `cp_li` = NULL, `raid_li` = NULL, ...) {
      if (!is.null(`form_values`)) {
        stopifnot(R6::is.R6(`form_values`))
        self$`form_values` <- `form_values`
      }
      if (!is.null(`config_ids`)) {
        stopifnot(R6::is.R6(`config_ids`))
        self$`config_ids` <- `config_ids`
      }
      if (!is.null(`cpu`)) {
        if (!(is.numeric(`cpu`) && length(`cpu`) == 1)) {
          stop(paste("Error! Invalid data for `cpu`. Must be an integer:", `cpu`))
        }
        self$`cpu` <- `cpu`
      }
      if (!is.null(`field_label`)) {
        stopifnot(R6::is.R6(`field_label`))
        self$`field_label` <- `field_label`
      }
      if (!is.null(`cpu_li`)) {
        stopifnot(R6::is.R6(`cpu_li`))
        self$`cpu_li` <- `cpu_li`
      }
      if (!is.null(`memory_li`)) {
        stopifnot(R6::is.R6(`memory_li`))
        self$`memory_li` <- `memory_li`
      }
      if (!is.null(`bandwidth_li`)) {
        stopifnot(R6::is.R6(`bandwidth_li`))
        self$`bandwidth_li` <- `bandwidth_li`
      }
      if (!is.null(`ips_li`)) {
        stopifnot(R6::is.R6(`ips_li`))
        self$`ips_li` <- `ips_li`
      }
      if (!is.null(`os_li`)) {
        stopifnot(R6::is.R6(`os_li`))
        self$`os_li` <- `os_li`
      }
      if (!is.null(`cp_li`)) {
        stopifnot(R6::is.R6(`cp_li`))
        self$`cp_li` <- `cp_li`
      }
      if (!is.null(`raid_li`)) {
        stopifnot(is.vector(`raid_li`), length(`raid_li`) != 0)
        sapply(`raid_li`, function(x) stopifnot(R6::is.R6(x)))
        self$`raid_li` <- `raid_li`
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
    #' @return ServerOrder as a base R list.
    #' @examples
    #' # convert array of ServerOrder (x) to a data frame
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
    #' Convert ServerOrder to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ServerOrderObject <- list()
      if (!is.null(self$`form_values`)) {
        ServerOrderObject[["form_values"]] <-
          self$extractSimpleType(self$`form_values`)
      }
      if (!is.null(self$`config_ids`)) {
        ServerOrderObject[["config_ids"]] <-
          self$extractSimpleType(self$`config_ids`)
      }
      if (!is.null(self$`cpu`)) {
        ServerOrderObject[["cpu"]] <-
          self$`cpu`
      }
      if (!is.null(self$`field_label`)) {
        ServerOrderObject[["field_label"]] <-
          self$extractSimpleType(self$`field_label`)
      }
      if (!is.null(self$`cpu_li`)) {
        ServerOrderObject[["cpu_li"]] <-
          self$extractSimpleType(self$`cpu_li`)
      }
      if (!is.null(self$`memory_li`)) {
        ServerOrderObject[["memory_li"]] <-
          self$extractSimpleType(self$`memory_li`)
      }
      if (!is.null(self$`bandwidth_li`)) {
        ServerOrderObject[["bandwidth_li"]] <-
          self$extractSimpleType(self$`bandwidth_li`)
      }
      if (!is.null(self$`ips_li`)) {
        ServerOrderObject[["ips_li"]] <-
          self$extractSimpleType(self$`ips_li`)
      }
      if (!is.null(self$`os_li`)) {
        ServerOrderObject[["os_li"]] <-
          self$extractSimpleType(self$`os_li`)
      }
      if (!is.null(self$`cp_li`)) {
        ServerOrderObject[["cp_li"]] <-
          self$extractSimpleType(self$`cp_li`)
      }
      if (!is.null(self$`raid_li`)) {
        ServerOrderObject[["raid_li"]] <-
          self$extractSimpleType(self$`raid_li`)
      }
      return(ServerOrderObject)
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
    #' Deserialize JSON string into an instance of ServerOrder
    #'
    #' @param input_json the JSON input
    #' @return the instance of ServerOrder
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`form_values`)) {
        `form_values_object` <- ServerOrderFormValues$new()
        `form_values_object`$fromJSON(jsonlite::toJSON(this_object$`form_values`, auto_unbox = TRUE, digits = NA))
        self$`form_values` <- `form_values_object`
      }
      if (!is.null(this_object$`config_ids`)) {
        `config_ids_object` <- ServerOrderConfigIds$new()
        `config_ids_object`$fromJSON(jsonlite::toJSON(this_object$`config_ids`, auto_unbox = TRUE, digits = NA))
        self$`config_ids` <- `config_ids_object`
      }
      if (!is.null(this_object$`cpu`)) {
        self$`cpu` <- this_object$`cpu`
      }
      if (!is.null(this_object$`field_label`)) {
        `field_label_object` <- ServerOrderFieldLabels$new()
        `field_label_object`$fromJSON(jsonlite::toJSON(this_object$`field_label`, auto_unbox = TRUE, digits = NA))
        self$`field_label` <- `field_label_object`
      }
      if (!is.null(this_object$`cpu_li`)) {
        `cpu_li_object` <- ServerOrderCpuLi$new()
        `cpu_li_object`$fromJSON(jsonlite::toJSON(this_object$`cpu_li`, auto_unbox = TRUE, digits = NA))
        self$`cpu_li` <- `cpu_li_object`
      }
      if (!is.null(this_object$`memory_li`)) {
        `memory_li_object` <- ServerOrderMemoryLi$new()
        `memory_li_object`$fromJSON(jsonlite::toJSON(this_object$`memory_li`, auto_unbox = TRUE, digits = NA))
        self$`memory_li` <- `memory_li_object`
      }
      if (!is.null(this_object$`bandwidth_li`)) {
        `bandwidth_li_object` <- ServerOrderBandwidthLi$new()
        `bandwidth_li_object`$fromJSON(jsonlite::toJSON(this_object$`bandwidth_li`, auto_unbox = TRUE, digits = NA))
        self$`bandwidth_li` <- `bandwidth_li_object`
      }
      if (!is.null(this_object$`ips_li`)) {
        `ips_li_object` <- ServerOrderIpsLi$new()
        `ips_li_object`$fromJSON(jsonlite::toJSON(this_object$`ips_li`, auto_unbox = TRUE, digits = NA))
        self$`ips_li` <- `ips_li_object`
      }
      if (!is.null(this_object$`os_li`)) {
        `os_li_object` <- ServerOrderOsLi$new()
        `os_li_object`$fromJSON(jsonlite::toJSON(this_object$`os_li`, auto_unbox = TRUE, digits = NA))
        self$`os_li` <- `os_li_object`
      }
      if (!is.null(this_object$`cp_li`)) {
        `cp_li_object` <- ServerOrderCpLi$new()
        `cp_li_object`$fromJSON(jsonlite::toJSON(this_object$`cp_li`, auto_unbox = TRUE, digits = NA))
        self$`cp_li` <- `cp_li_object`
      }
      if (!is.null(this_object$`raid_li`)) {
        self$`raid_li` <- ApiClient$new()$deserializeObj(this_object$`raid_li`, "array[ServerOrderRAID]", loadNamespace("interserverapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ServerOrder in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ServerOrder
    #'
    #' @param input_json the JSON input
    #' @return the instance of ServerOrder
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`form_values` <- ServerOrderFormValues$new()$fromJSON(jsonlite::toJSON(this_object$`form_values`, auto_unbox = TRUE, digits = NA))
      self$`config_ids` <- ServerOrderConfigIds$new()$fromJSON(jsonlite::toJSON(this_object$`config_ids`, auto_unbox = TRUE, digits = NA))
      self$`cpu` <- this_object$`cpu`
      self$`field_label` <- ServerOrderFieldLabels$new()$fromJSON(jsonlite::toJSON(this_object$`field_label`, auto_unbox = TRUE, digits = NA))
      self$`cpu_li` <- ServerOrderCpuLi$new()$fromJSON(jsonlite::toJSON(this_object$`cpu_li`, auto_unbox = TRUE, digits = NA))
      self$`memory_li` <- ServerOrderMemoryLi$new()$fromJSON(jsonlite::toJSON(this_object$`memory_li`, auto_unbox = TRUE, digits = NA))
      self$`bandwidth_li` <- ServerOrderBandwidthLi$new()$fromJSON(jsonlite::toJSON(this_object$`bandwidth_li`, auto_unbox = TRUE, digits = NA))
      self$`ips_li` <- ServerOrderIpsLi$new()$fromJSON(jsonlite::toJSON(this_object$`ips_li`, auto_unbox = TRUE, digits = NA))
      self$`os_li` <- ServerOrderOsLi$new()$fromJSON(jsonlite::toJSON(this_object$`os_li`, auto_unbox = TRUE, digits = NA))
      self$`cp_li` <- ServerOrderCpLi$new()$fromJSON(jsonlite::toJSON(this_object$`cp_li`, auto_unbox = TRUE, digits = NA))
      self$`raid_li` <- ApiClient$new()$deserializeObj(this_object$`raid_li`, "array[ServerOrderRAID]", loadNamespace("interserverapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to ServerOrder and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ServerOrder
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
# ServerOrder$unlock()
#
## Below is an example to define the print function
# ServerOrder$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ServerOrder$lock()

