#' Create a new PatchBillingCreditCardVerifyRequest
#'
#' @description
#' PatchBillingCreditCardVerifyRequest Class
#'
#' @docType class
#' @title PatchBillingCreditCardVerifyRequest
#' @description PatchBillingCreditCardVerifyRequest Class
#' @format An \code{R6Class} generator object
#' @field cc_ccv2 The CVV/CVC code on the back of the credit card. character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PatchBillingCreditCardVerifyRequest <- R6::R6Class(
  "PatchBillingCreditCardVerifyRequest",
  public = list(
    `cc_ccv2` = NULL,

    #' @description
    #' Initialize a new PatchBillingCreditCardVerifyRequest class.
    #'
    #' @param cc_ccv2 The CVV/CVC code on the back of the credit card.
    #' @param ... Other optional arguments.
    initialize = function(`cc_ccv2`, ...) {
      if (!missing(`cc_ccv2`)) {
        if (!(is.character(`cc_ccv2`) && length(`cc_ccv2`) == 1)) {
          stop(paste("Error! Invalid data for `cc_ccv2`. Must be a string:", `cc_ccv2`))
        }
        self$`cc_ccv2` <- `cc_ccv2`
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
    #' @return PatchBillingCreditCardVerifyRequest as a base R list.
    #' @examples
    #' # convert array of PatchBillingCreditCardVerifyRequest (x) to a data frame
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
    #' Convert PatchBillingCreditCardVerifyRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PatchBillingCreditCardVerifyRequestObject <- list()
      if (!is.null(self$`cc_ccv2`)) {
        PatchBillingCreditCardVerifyRequestObject[["cc_ccv2"]] <-
          self$`cc_ccv2`
      }
      return(PatchBillingCreditCardVerifyRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of PatchBillingCreditCardVerifyRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of PatchBillingCreditCardVerifyRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`cc_ccv2`)) {
        self$`cc_ccv2` <- this_object$`cc_ccv2`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return PatchBillingCreditCardVerifyRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PatchBillingCreditCardVerifyRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of PatchBillingCreditCardVerifyRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`cc_ccv2` <- this_object$`cc_ccv2`
      self
    },

    #' @description
    #' Validate JSON input with respect to PatchBillingCreditCardVerifyRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `cc_ccv2`
      if (!is.null(input_json$`cc_ccv2`)) {
        if (!(is.character(input_json$`cc_ccv2`) && length(input_json$`cc_ccv2`) == 1)) {
          stop(paste("Error! Invalid data for `cc_ccv2`. Must be a string:", input_json$`cc_ccv2`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PatchBillingCreditCardVerifyRequest: the required field `cc_ccv2` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PatchBillingCreditCardVerifyRequest
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `cc_ccv2` is null
      if (is.null(self$`cc_ccv2`)) {
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
      # check if the required `cc_ccv2` is null
      if (is.null(self$`cc_ccv2`)) {
        invalid_fields["cc_ccv2"] <- "Non-nullable required field `cc_ccv2` cannot be null."
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
# PatchBillingCreditCardVerifyRequest$unlock()
#
## Below is an example to define the print function
# PatchBillingCreditCardVerifyRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PatchBillingCreditCardVerifyRequest$lock()

