#' Create a new PutScrubIps200Response
#'
#' @description
#' PutScrubIps200Response Class
#'
#' @docType class
#' @title PutScrubIps200Response
#' @description PutScrubIps200Response Class
#' @format An \code{R6Class} generator object
#' @field continue  character [optional]
#' @field errors  list(character) [optional]
#' @field serviceType  integer [optional]
#' @field serviceCost  numeric [optional]
#' @field originalCost  numeric [optional]
#' @field repeatServiceCost  numeric [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PutScrubIps200Response <- R6::R6Class(
  "PutScrubIps200Response",
  public = list(
    `continue` = NULL,
    `errors` = NULL,
    `serviceType` = NULL,
    `serviceCost` = NULL,
    `originalCost` = NULL,
    `repeatServiceCost` = NULL,

    #' @description
    #' Initialize a new PutScrubIps200Response class.
    #'
    #' @param continue continue
    #' @param errors errors
    #' @param serviceType serviceType
    #' @param serviceCost serviceCost
    #' @param originalCost originalCost
    #' @param repeatServiceCost repeatServiceCost
    #' @param ... Other optional arguments.
    initialize = function(`continue` = NULL, `errors` = NULL, `serviceType` = NULL, `serviceCost` = NULL, `originalCost` = NULL, `repeatServiceCost` = NULL, ...) {
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
      if (!is.null(`serviceType`)) {
        if (!(is.numeric(`serviceType`) && length(`serviceType`) == 1)) {
          stop(paste("Error! Invalid data for `serviceType`. Must be an integer:", `serviceType`))
        }
        self$`serviceType` <- `serviceType`
      }
      if (!is.null(`serviceCost`)) {
        self$`serviceCost` <- `serviceCost`
      }
      if (!is.null(`originalCost`)) {
        self$`originalCost` <- `originalCost`
      }
      if (!is.null(`repeatServiceCost`)) {
        self$`repeatServiceCost` <- `repeatServiceCost`
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
    #' @return PutScrubIps200Response as a base R list.
    #' @examples
    #' # convert array of PutScrubIps200Response (x) to a data frame
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
    #' Convert PutScrubIps200Response to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PutScrubIps200ResponseObject <- list()
      if (!is.null(self$`continue`)) {
        PutScrubIps200ResponseObject[["continue"]] <-
          self$`continue`
      }
      if (!is.null(self$`errors`)) {
        PutScrubIps200ResponseObject[["errors"]] <-
          self$`errors`
      }
      if (!is.null(self$`serviceType`)) {
        PutScrubIps200ResponseObject[["serviceType"]] <-
          self$`serviceType`
      }
      if (!is.null(self$`serviceCost`)) {
        PutScrubIps200ResponseObject[["serviceCost"]] <-
          self$`serviceCost`
      }
      if (!is.null(self$`originalCost`)) {
        PutScrubIps200ResponseObject[["originalCost"]] <-
          self$`originalCost`
      }
      if (!is.null(self$`repeatServiceCost`)) {
        PutScrubIps200ResponseObject[["repeatServiceCost"]] <-
          self$`repeatServiceCost`
      }
      return(PutScrubIps200ResponseObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of PutScrubIps200Response
    #'
    #' @param input_json the JSON input
    #' @return the instance of PutScrubIps200Response
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`continue`)) {
        self$`continue` <- this_object$`continue`
      }
      if (!is.null(this_object$`errors`)) {
        self$`errors` <- ApiClient$new()$deserializeObj(this_object$`errors`, "array[character]", loadNamespace("interserverapi"))
      }
      if (!is.null(this_object$`serviceType`)) {
        self$`serviceType` <- this_object$`serviceType`
      }
      if (!is.null(this_object$`serviceCost`)) {
        self$`serviceCost` <- this_object$`serviceCost`
      }
      if (!is.null(this_object$`originalCost`)) {
        self$`originalCost` <- this_object$`originalCost`
      }
      if (!is.null(this_object$`repeatServiceCost`)) {
        self$`repeatServiceCost` <- this_object$`repeatServiceCost`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return PutScrubIps200Response in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PutScrubIps200Response
    #'
    #' @param input_json the JSON input
    #' @return the instance of PutScrubIps200Response
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`continue` <- this_object$`continue`
      self$`errors` <- ApiClient$new()$deserializeObj(this_object$`errors`, "array[character]", loadNamespace("interserverapi"))
      self$`serviceType` <- this_object$`serviceType`
      self$`serviceCost` <- this_object$`serviceCost`
      self$`originalCost` <- this_object$`originalCost`
      self$`repeatServiceCost` <- this_object$`repeatServiceCost`
      self
    },

    #' @description
    #' Validate JSON input with respect to PutScrubIps200Response and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PutScrubIps200Response
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
# PutScrubIps200Response$unlock()
#
## Below is an example to define the print function
# PutScrubIps200Response$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PutScrubIps200Response$lock()

