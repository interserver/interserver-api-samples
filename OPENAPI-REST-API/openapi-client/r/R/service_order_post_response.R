#' Create a new ServiceOrderPostResponse
#'
#' @description
#' Generic response returned after placing a service order. Contains invoice IDs for payment and the new service ID.
#'
#' @docType class
#' @title ServiceOrderPostResponse
#' @description ServiceOrderPostResponse Class
#' @format An \code{R6Class} generator object
#' @field continue Whether the order was accepted and can proceed to payment. character [optional]
#' @field errors List of validation errors (empty on success). list(character) [optional]
#' @field total_cost Total cost of the order. character [optional]
#' @field iid Primary invoice ID for payment. character [optional]
#' @field iids All invoice identifiers associated with the order. list(character) [optional]
#' @field real_iids Numeric invoice IDs for use with billing endpoints. list(character) [optional]
#' @field serviceId The new service ID created by the order. integer [optional]
#' @field invoice_description Human-readable description of the invoice. character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ServiceOrderPostResponse <- R6::R6Class(
  "ServiceOrderPostResponse",
  public = list(
    `continue` = NULL,
    `errors` = NULL,
    `total_cost` = NULL,
    `iid` = NULL,
    `iids` = NULL,
    `real_iids` = NULL,
    `serviceId` = NULL,
    `invoice_description` = NULL,

    #' @description
    #' Initialize a new ServiceOrderPostResponse class.
    #'
    #' @param continue Whether the order was accepted and can proceed to payment.
    #' @param errors List of validation errors (empty on success).
    #' @param total_cost Total cost of the order.
    #' @param iid Primary invoice ID for payment.
    #' @param iids All invoice identifiers associated with the order.
    #' @param real_iids Numeric invoice IDs for use with billing endpoints.
    #' @param serviceId The new service ID created by the order.
    #' @param invoice_description Human-readable description of the invoice.
    #' @param ... Other optional arguments.
    initialize = function(`continue` = NULL, `errors` = NULL, `total_cost` = NULL, `iid` = NULL, `iids` = NULL, `real_iids` = NULL, `serviceId` = NULL, `invoice_description` = NULL, ...) {
      if (!is.null(`continue`)) {
        if (!(is.logical(`continue`) && length(`continue`) == 1)) {
          stop(paste("Error! Invalid data for `continue`. Must be a boolean:", `continue`))
        }
        self$`continue` <- `continue`
      }
      if (!is.null(`errors`)) {
        stopifnot(is.vector(`errors`), length(`errors`) != 0)
        sapply(`errors`, function(x) stopifnot(is.character(x)))
        self$`errors` <- `errors`
      }
      if (!is.null(`total_cost`)) {
        if (!(is.character(`total_cost`) && length(`total_cost`) == 1)) {
          stop(paste("Error! Invalid data for `total_cost`. Must be a string:", `total_cost`))
        }
        self$`total_cost` <- `total_cost`
      }
      if (!is.null(`iid`)) {
        if (!(is.character(`iid`) && length(`iid`) == 1)) {
          stop(paste("Error! Invalid data for `iid`. Must be a string:", `iid`))
        }
        self$`iid` <- `iid`
      }
      if (!is.null(`iids`)) {
        stopifnot(is.vector(`iids`), length(`iids`) != 0)
        sapply(`iids`, function(x) stopifnot(is.character(x)))
        self$`iids` <- `iids`
      }
      if (!is.null(`real_iids`)) {
        stopifnot(is.vector(`real_iids`), length(`real_iids`) != 0)
        sapply(`real_iids`, function(x) stopifnot(is.character(x)))
        self$`real_iids` <- `real_iids`
      }
      if (!is.null(`serviceId`)) {
        if (!(is.numeric(`serviceId`) && length(`serviceId`) == 1)) {
          stop(paste("Error! Invalid data for `serviceId`. Must be an integer:", `serviceId`))
        }
        self$`serviceId` <- `serviceId`
      }
      if (!is.null(`invoice_description`)) {
        if (!(is.character(`invoice_description`) && length(`invoice_description`) == 1)) {
          stop(paste("Error! Invalid data for `invoice_description`. Must be a string:", `invoice_description`))
        }
        self$`invoice_description` <- `invoice_description`
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
    #' @return ServiceOrderPostResponse as a base R list.
    #' @examples
    #' # convert array of ServiceOrderPostResponse (x) to a data frame
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
    #' Convert ServiceOrderPostResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ServiceOrderPostResponseObject <- list()
      if (!is.null(self$`continue`)) {
        ServiceOrderPostResponseObject[["continue"]] <-
          self$`continue`
      }
      if (!is.null(self$`errors`)) {
        ServiceOrderPostResponseObject[["errors"]] <-
          self$`errors`
      }
      if (!is.null(self$`total_cost`)) {
        ServiceOrderPostResponseObject[["total_cost"]] <-
          self$`total_cost`
      }
      if (!is.null(self$`iid`)) {
        ServiceOrderPostResponseObject[["iid"]] <-
          self$`iid`
      }
      if (!is.null(self$`iids`)) {
        ServiceOrderPostResponseObject[["iids"]] <-
          self$`iids`
      }
      if (!is.null(self$`real_iids`)) {
        ServiceOrderPostResponseObject[["real_iids"]] <-
          self$`real_iids`
      }
      if (!is.null(self$`serviceId`)) {
        ServiceOrderPostResponseObject[["serviceId"]] <-
          self$`serviceId`
      }
      if (!is.null(self$`invoice_description`)) {
        ServiceOrderPostResponseObject[["invoice_description"]] <-
          self$`invoice_description`
      }
      return(ServiceOrderPostResponseObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ServiceOrderPostResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of ServiceOrderPostResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`continue`)) {
        self$`continue` <- this_object$`continue`
      }
      if (!is.null(this_object$`errors`)) {
        self$`errors` <- ApiClient$new()$deserializeObj(this_object$`errors`, "array[character]", loadNamespace("interserverapi"))
      }
      if (!is.null(this_object$`total_cost`)) {
        self$`total_cost` <- this_object$`total_cost`
      }
      if (!is.null(this_object$`iid`)) {
        self$`iid` <- this_object$`iid`
      }
      if (!is.null(this_object$`iids`)) {
        self$`iids` <- ApiClient$new()$deserializeObj(this_object$`iids`, "array[character]", loadNamespace("interserverapi"))
      }
      if (!is.null(this_object$`real_iids`)) {
        self$`real_iids` <- ApiClient$new()$deserializeObj(this_object$`real_iids`, "array[character]", loadNamespace("interserverapi"))
      }
      if (!is.null(this_object$`serviceId`)) {
        self$`serviceId` <- this_object$`serviceId`
      }
      if (!is.null(this_object$`invoice_description`)) {
        self$`invoice_description` <- this_object$`invoice_description`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ServiceOrderPostResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ServiceOrderPostResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of ServiceOrderPostResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`continue` <- this_object$`continue`
      self$`errors` <- ApiClient$new()$deserializeObj(this_object$`errors`, "array[character]", loadNamespace("interserverapi"))
      self$`total_cost` <- this_object$`total_cost`
      self$`iid` <- this_object$`iid`
      self$`iids` <- ApiClient$new()$deserializeObj(this_object$`iids`, "array[character]", loadNamespace("interserverapi"))
      self$`real_iids` <- ApiClient$new()$deserializeObj(this_object$`real_iids`, "array[character]", loadNamespace("interserverapi"))
      self$`serviceId` <- this_object$`serviceId`
      self$`invoice_description` <- this_object$`invoice_description`
      self
    },

    #' @description
    #' Validate JSON input with respect to ServiceOrderPostResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ServiceOrderPostResponse
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
# ServiceOrderPostResponse$unlock()
#
## Below is an example to define the print function
# ServiceOrderPostResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ServiceOrderPostResponse$lock()

