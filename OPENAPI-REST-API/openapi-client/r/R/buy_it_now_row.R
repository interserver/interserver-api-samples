#' Create a new BuyItNowRow
#'
#' @description
#' A buy-it-now dedicated server listing from the marketplace, with hardware specs and pricing.
#'
#' @docType class
#' @title BuyItNowRow
#' @description BuyItNowRow Class
#' @format An \code{R6Class} generator object
#' @field server_id Unique server ID. Use this as `server_id` in `POST /servers/order/buy_now_server`. character [optional]
#' @field cpu  list(\link{BuyItNowRowCpuInner}) [optional]
#' @field memory  character [optional]
#' @field disk  named list(character) [optional]
#' @field bandwidth  character [optional]
#' @field ips  character [optional]
#' @field location  character [optional]
#' @field price  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
BuyItNowRow <- R6::R6Class(
  "BuyItNowRow",
  public = list(
    `server_id` = NULL,
    `cpu` = NULL,
    `memory` = NULL,
    `disk` = NULL,
    `bandwidth` = NULL,
    `ips` = NULL,
    `location` = NULL,
    `price` = NULL,

    #' @description
    #' Initialize a new BuyItNowRow class.
    #'
    #' @param server_id Unique server ID. Use this as `server_id` in `POST /servers/order/buy_now_server`.
    #' @param cpu cpu
    #' @param memory memory
    #' @param disk disk
    #' @param bandwidth bandwidth
    #' @param ips ips
    #' @param location location
    #' @param price price
    #' @param ... Other optional arguments.
    initialize = function(`server_id` = NULL, `cpu` = NULL, `memory` = NULL, `disk` = NULL, `bandwidth` = NULL, `ips` = NULL, `location` = NULL, `price` = NULL, ...) {
      if (!is.null(`server_id`)) {
        if (!(is.character(`server_id`) && length(`server_id`) == 1)) {
          stop(paste("Error! Invalid data for `server_id`. Must be a string:", `server_id`))
        }
        self$`server_id` <- `server_id`
      }
      if (!is.null(`cpu`)) {
        stopifnot(is.vector(`cpu`), length(`cpu`) != 0)
        sapply(`cpu`, function(x) stopifnot(R6::is.R6(x)))
        self$`cpu` <- `cpu`
      }
      if (!is.null(`memory`)) {
        if (!(is.character(`memory`) && length(`memory`) == 1)) {
          stop(paste("Error! Invalid data for `memory`. Must be a string:", `memory`))
        }
        self$`memory` <- `memory`
      }
      if (!is.null(`disk`)) {
        stopifnot(is.vector(`disk`), length(`disk`) != 0)
        sapply(`disk`, function(x) stopifnot(is.character(x)))
        self$`disk` <- `disk`
      }
      if (!is.null(`bandwidth`)) {
        if (!(is.character(`bandwidth`) && length(`bandwidth`) == 1)) {
          stop(paste("Error! Invalid data for `bandwidth`. Must be a string:", `bandwidth`))
        }
        self$`bandwidth` <- `bandwidth`
      }
      if (!is.null(`ips`)) {
        if (!(is.character(`ips`) && length(`ips`) == 1)) {
          stop(paste("Error! Invalid data for `ips`. Must be a string:", `ips`))
        }
        self$`ips` <- `ips`
      }
      if (!is.null(`location`)) {
        if (!(is.character(`location`) && length(`location`) == 1)) {
          stop(paste("Error! Invalid data for `location`. Must be a string:", `location`))
        }
        self$`location` <- `location`
      }
      if (!is.null(`price`)) {
        if (!(is.numeric(`price`) && length(`price`) == 1)) {
          stop(paste("Error! Invalid data for `price`. Must be an integer:", `price`))
        }
        self$`price` <- `price`
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
    #' @return BuyItNowRow as a base R list.
    #' @examples
    #' # convert array of BuyItNowRow (x) to a data frame
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
    #' Convert BuyItNowRow to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      BuyItNowRowObject <- list()
      if (!is.null(self$`server_id`)) {
        BuyItNowRowObject[["server_id"]] <-
          self$`server_id`
      }
      if (!is.null(self$`cpu`)) {
        BuyItNowRowObject[["cpu"]] <-
          self$extractSimpleType(self$`cpu`)
      }
      if (!is.null(self$`memory`)) {
        BuyItNowRowObject[["memory"]] <-
          self$`memory`
      }
      if (!is.null(self$`disk`)) {
        BuyItNowRowObject[["disk"]] <-
          self$`disk`
      }
      if (!is.null(self$`bandwidth`)) {
        BuyItNowRowObject[["bandwidth"]] <-
          self$`bandwidth`
      }
      if (!is.null(self$`ips`)) {
        BuyItNowRowObject[["ips"]] <-
          self$`ips`
      }
      if (!is.null(self$`location`)) {
        BuyItNowRowObject[["location"]] <-
          self$`location`
      }
      if (!is.null(self$`price`)) {
        BuyItNowRowObject[["price"]] <-
          self$`price`
      }
      return(BuyItNowRowObject)
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
    #' Deserialize JSON string into an instance of BuyItNowRow
    #'
    #' @param input_json the JSON input
    #' @return the instance of BuyItNowRow
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`server_id`)) {
        self$`server_id` <- this_object$`server_id`
      }
      if (!is.null(this_object$`cpu`)) {
        self$`cpu` <- ApiClient$new()$deserializeObj(this_object$`cpu`, "array[BuyItNowRowCpuInner]", loadNamespace("interserverapi"))
      }
      if (!is.null(this_object$`memory`)) {
        self$`memory` <- this_object$`memory`
      }
      if (!is.null(this_object$`disk`)) {
        self$`disk` <- ApiClient$new()$deserializeObj(this_object$`disk`, "map(character)", loadNamespace("interserverapi"))
      }
      if (!is.null(this_object$`bandwidth`)) {
        self$`bandwidth` <- this_object$`bandwidth`
      }
      if (!is.null(this_object$`ips`)) {
        self$`ips` <- this_object$`ips`
      }
      if (!is.null(this_object$`location`)) {
        self$`location` <- this_object$`location`
      }
      if (!is.null(this_object$`price`)) {
        self$`price` <- this_object$`price`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return BuyItNowRow in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of BuyItNowRow
    #'
    #' @param input_json the JSON input
    #' @return the instance of BuyItNowRow
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`server_id` <- this_object$`server_id`
      self$`cpu` <- ApiClient$new()$deserializeObj(this_object$`cpu`, "array[BuyItNowRowCpuInner]", loadNamespace("interserverapi"))
      self$`memory` <- this_object$`memory`
      self$`disk` <- ApiClient$new()$deserializeObj(this_object$`disk`, "map(character)", loadNamespace("interserverapi"))
      self$`bandwidth` <- this_object$`bandwidth`
      self$`ips` <- this_object$`ips`
      self$`location` <- this_object$`location`
      self$`price` <- this_object$`price`
      self
    },

    #' @description
    #' Validate JSON input with respect to BuyItNowRow and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of BuyItNowRow
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
# BuyItNowRow$unlock()
#
## Below is an example to define the print function
# BuyItNowRow$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# BuyItNowRow$lock()

