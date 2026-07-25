#' Create a new VpsTrafficResponse
#'
#' @description
#' VPS Traffic Information
#'
#' @docType class
#' @title VpsTrafficResponse
#' @description VpsTrafficResponse Class
#' @format An \code{R6Class} generator object
#' @field name  character
#' @field target  character
#' @field interval  integer
#' @field history  \link{VpsTrafficHistoryResponse}
#' @field last  character
#' @field times  list(character)
#' @field totals  \link{VpsTrafficTotalsResposne}
#' @field usage  \link{VpsTrafficUsageResponse}
#' @field data  list(\link{VpsTrafficDataSectionResponse})
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
VpsTrafficResponse <- R6::R6Class(
  "VpsTrafficResponse",
  public = list(
    `name` = NULL,
    `target` = NULL,
    `interval` = NULL,
    `history` = NULL,
    `last` = NULL,
    `times` = NULL,
    `totals` = NULL,
    `usage` = NULL,
    `data` = NULL,

    #' @description
    #' Initialize a new VpsTrafficResponse class.
    #'
    #' @param name name
    #' @param target target
    #' @param interval interval
    #' @param history history
    #' @param last last
    #' @param times times
    #' @param totals totals
    #' @param usage usage
    #' @param data data
    #' @param ... Other optional arguments.
    initialize = function(`name`, `target`, `interval`, `history`, `last`, `times`, `totals`, `usage`, `data`, ...) {
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!missing(`target`)) {
        if (!(is.character(`target`) && length(`target`) == 1)) {
          stop(paste("Error! Invalid data for `target`. Must be a string:", `target`))
        }
        self$`target` <- `target`
      }
      if (!missing(`interval`)) {
        if (!(is.numeric(`interval`) && length(`interval`) == 1)) {
          stop(paste("Error! Invalid data for `interval`. Must be an integer:", `interval`))
        }
        self$`interval` <- `interval`
      }
      if (!missing(`history`)) {
        stopifnot(R6::is.R6(`history`))
        self$`history` <- `history`
      }
      if (!missing(`last`)) {
        if (!(is.character(`last`) && length(`last`) == 1)) {
          stop(paste("Error! Invalid data for `last`. Must be a string:", `last`))
        }
        self$`last` <- `last`
      }
      if (!missing(`times`)) {
        stopifnot(is.vector(`times`), length(`times`) != 0)
        sapply(`times`, function(x) stopifnot(is.character(x)))
        self$`times` <- `times`
      }
      if (!missing(`totals`)) {
        stopifnot(R6::is.R6(`totals`))
        self$`totals` <- `totals`
      }
      if (!missing(`usage`)) {
        stopifnot(R6::is.R6(`usage`))
        self$`usage` <- `usage`
      }
      if (!missing(`data`)) {
        stopifnot(is.vector(`data`), length(`data`) != 0)
        sapply(`data`, function(x) stopifnot(R6::is.R6(x)))
        self$`data` <- `data`
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
    #' @return VpsTrafficResponse as a base R list.
    #' @examples
    #' # convert array of VpsTrafficResponse (x) to a data frame
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
    #' Convert VpsTrafficResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      VpsTrafficResponseObject <- list()
      if (!is.null(self$`name`)) {
        VpsTrafficResponseObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`target`)) {
        VpsTrafficResponseObject[["target"]] <-
          self$`target`
      }
      if (!is.null(self$`interval`)) {
        VpsTrafficResponseObject[["interval"]] <-
          self$`interval`
      }
      if (!is.null(self$`history`)) {
        VpsTrafficResponseObject[["history"]] <-
          self$extractSimpleType(self$`history`)
      }
      if (!is.null(self$`last`)) {
        VpsTrafficResponseObject[["last"]] <-
          self$`last`
      }
      if (!is.null(self$`times`)) {
        VpsTrafficResponseObject[["times"]] <-
          self$`times`
      }
      if (!is.null(self$`totals`)) {
        VpsTrafficResponseObject[["totals"]] <-
          self$extractSimpleType(self$`totals`)
      }
      if (!is.null(self$`usage`)) {
        VpsTrafficResponseObject[["usage"]] <-
          self$extractSimpleType(self$`usage`)
      }
      if (!is.null(self$`data`)) {
        VpsTrafficResponseObject[["data"]] <-
          self$extractSimpleType(self$`data`)
      }
      return(VpsTrafficResponseObject)
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
    #' Deserialize JSON string into an instance of VpsTrafficResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of VpsTrafficResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`target`)) {
        self$`target` <- this_object$`target`
      }
      if (!is.null(this_object$`interval`)) {
        self$`interval` <- this_object$`interval`
      }
      if (!is.null(this_object$`history`)) {
        `history_object` <- VpsTrafficHistoryResponse$new()
        `history_object`$fromJSON(jsonlite::toJSON(this_object$`history`, auto_unbox = TRUE, digits = NA))
        self$`history` <- `history_object`
      }
      if (!is.null(this_object$`last`)) {
        self$`last` <- this_object$`last`
      }
      if (!is.null(this_object$`times`)) {
        self$`times` <- ApiClient$new()$deserializeObj(this_object$`times`, "array[character]", loadNamespace("interserverapi"))
      }
      if (!is.null(this_object$`totals`)) {
        `totals_object` <- VpsTrafficTotalsResposne$new()
        `totals_object`$fromJSON(jsonlite::toJSON(this_object$`totals`, auto_unbox = TRUE, digits = NA))
        self$`totals` <- `totals_object`
      }
      if (!is.null(this_object$`usage`)) {
        `usage_object` <- VpsTrafficUsageResponse$new()
        `usage_object`$fromJSON(jsonlite::toJSON(this_object$`usage`, auto_unbox = TRUE, digits = NA))
        self$`usage` <- `usage_object`
      }
      if (!is.null(this_object$`data`)) {
        self$`data` <- ApiClient$new()$deserializeObj(this_object$`data`, "array[VpsTrafficDataSectionResponse]", loadNamespace("interserverapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return VpsTrafficResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of VpsTrafficResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of VpsTrafficResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`name` <- this_object$`name`
      self$`target` <- this_object$`target`
      self$`interval` <- this_object$`interval`
      self$`history` <- VpsTrafficHistoryResponse$new()$fromJSON(jsonlite::toJSON(this_object$`history`, auto_unbox = TRUE, digits = NA))
      self$`last` <- this_object$`last`
      self$`times` <- ApiClient$new()$deserializeObj(this_object$`times`, "array[character]", loadNamespace("interserverapi"))
      self$`totals` <- VpsTrafficTotalsResposne$new()$fromJSON(jsonlite::toJSON(this_object$`totals`, auto_unbox = TRUE, digits = NA))
      self$`usage` <- VpsTrafficUsageResponse$new()$fromJSON(jsonlite::toJSON(this_object$`usage`, auto_unbox = TRUE, digits = NA))
      self$`data` <- ApiClient$new()$deserializeObj(this_object$`data`, "array[VpsTrafficDataSectionResponse]", loadNamespace("interserverapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to VpsTrafficResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for VpsTrafficResponse: the required field `name` is missing."))
      }
      # check the required field `target`
      if (!is.null(input_json$`target`)) {
        if (!(is.character(input_json$`target`) && length(input_json$`target`) == 1)) {
          stop(paste("Error! Invalid data for `target`. Must be a string:", input_json$`target`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for VpsTrafficResponse: the required field `target` is missing."))
      }
      # check the required field `interval`
      if (!is.null(input_json$`interval`)) {
        if (!(is.numeric(input_json$`interval`) && length(input_json$`interval`) == 1)) {
          stop(paste("Error! Invalid data for `interval`. Must be an integer:", input_json$`interval`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for VpsTrafficResponse: the required field `interval` is missing."))
      }
      # check the required field `history`
      if (!is.null(input_json$`history`)) {
        stopifnot(R6::is.R6(input_json$`history`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for VpsTrafficResponse: the required field `history` is missing."))
      }
      # check the required field `last`
      if (!is.null(input_json$`last`)) {
        if (!(is.character(input_json$`last`) && length(input_json$`last`) == 1)) {
          stop(paste("Error! Invalid data for `last`. Must be a string:", input_json$`last`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for VpsTrafficResponse: the required field `last` is missing."))
      }
      # check the required field `times`
      if (!is.null(input_json$`times`)) {
        stopifnot(is.vector(input_json$`times`), length(input_json$`times`) != 0)
        tmp <- sapply(input_json$`times`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for VpsTrafficResponse: the required field `times` is missing."))
      }
      # check the required field `totals`
      if (!is.null(input_json$`totals`)) {
        stopifnot(R6::is.R6(input_json$`totals`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for VpsTrafficResponse: the required field `totals` is missing."))
      }
      # check the required field `usage`
      if (!is.null(input_json$`usage`)) {
        stopifnot(R6::is.R6(input_json$`usage`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for VpsTrafficResponse: the required field `usage` is missing."))
      }
      # check the required field `data`
      if (!is.null(input_json$`data`)) {
        stopifnot(is.vector(input_json$`data`), length(input_json$`data`) != 0)
        tmp <- sapply(input_json$`data`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for VpsTrafficResponse: the required field `data` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of VpsTrafficResponse
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `name` is null
      if (is.null(self$`name`)) {
        return(FALSE)
      }

      # check if the required `target` is null
      if (is.null(self$`target`)) {
        return(FALSE)
      }

      # check if the required `interval` is null
      if (is.null(self$`interval`)) {
        return(FALSE)
      }

      # check if the required `history` is null
      if (is.null(self$`history`)) {
        return(FALSE)
      }

      # check if the required `last` is null
      if (is.null(self$`last`)) {
        return(FALSE)
      }

      # check if the required `times` is null
      if (is.null(self$`times`)) {
        return(FALSE)
      }

      # check if the required `totals` is null
      if (is.null(self$`totals`)) {
        return(FALSE)
      }

      # check if the required `usage` is null
      if (is.null(self$`usage`)) {
        return(FALSE)
      }

      # check if the required `data` is null
      if (is.null(self$`data`)) {
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
      # check if the required `name` is null
      if (is.null(self$`name`)) {
        invalid_fields["name"] <- "Non-nullable required field `name` cannot be null."
      }

      # check if the required `target` is null
      if (is.null(self$`target`)) {
        invalid_fields["target"] <- "Non-nullable required field `target` cannot be null."
      }

      # check if the required `interval` is null
      if (is.null(self$`interval`)) {
        invalid_fields["interval"] <- "Non-nullable required field `interval` cannot be null."
      }

      # check if the required `history` is null
      if (is.null(self$`history`)) {
        invalid_fields["history"] <- "Non-nullable required field `history` cannot be null."
      }

      # check if the required `last` is null
      if (is.null(self$`last`)) {
        invalid_fields["last"] <- "Non-nullable required field `last` cannot be null."
      }

      # check if the required `times` is null
      if (is.null(self$`times`)) {
        invalid_fields["times"] <- "Non-nullable required field `times` cannot be null."
      }

      # check if the required `totals` is null
      if (is.null(self$`totals`)) {
        invalid_fields["totals"] <- "Non-nullable required field `totals` cannot be null."
      }

      # check if the required `usage` is null
      if (is.null(self$`usage`)) {
        invalid_fields["usage"] <- "Non-nullable required field `usage` cannot be null."
      }

      # check if the required `data` is null
      if (is.null(self$`data`)) {
        invalid_fields["data"] <- "Non-nullable required field `data` cannot be null."
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
# VpsTrafficResponse$unlock()
#
## Below is an example to define the print function
# VpsTrafficResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# VpsTrafficResponse$lock()

