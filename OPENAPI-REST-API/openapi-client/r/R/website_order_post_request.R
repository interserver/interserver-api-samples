#' Create a new WebsiteOrderPostRequest
#'
#' @description
#' request to place a webhosting order
#'
#' @docType class
#' @title WebsiteOrderPostRequest
#' @description WebsiteOrderPostRequest Class
#' @format An \code{R6Class} generator object
#' @field hostname Primary FQDN for the website. Must pass valid_hostname() and the keyword blocklist. character
#' @field packageId Plan id from getNewWebsite.serviceTypes[].services_id (must be buyable). integer
#' @field rootpass Control-panel admin password. If blank, a random password is generated server-side. character [optional]
#' @field period Billing cycle in months (1 / 6 / 12 / 24 / 36). integer [optional]
#' @field coupon Coupon code. character [optional]
#' @field serviceOfferId Promo bundle id from getNewWebsite.serviceOffers. integer [optional]
#' @field script Auto-installer id (0 = none). integer [optional]
#' @field comment Free-form note saved on the service row. character [optional]
#' @field registerDomain When true and enableDomainRegistering=true from the catalog, also registers/transfers the domain through the order. character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
WebsiteOrderPostRequest <- R6::R6Class(
  "WebsiteOrderPostRequest",
  public = list(
    `hostname` = NULL,
    `packageId` = NULL,
    `rootpass` = NULL,
    `period` = NULL,
    `coupon` = NULL,
    `serviceOfferId` = NULL,
    `script` = NULL,
    `comment` = NULL,
    `registerDomain` = NULL,

    #' @description
    #' Initialize a new WebsiteOrderPostRequest class.
    #'
    #' @param hostname Primary FQDN for the website. Must pass valid_hostname() and the keyword blocklist.
    #' @param packageId Plan id from getNewWebsite.serviceTypes[].services_id (must be buyable).
    #' @param rootpass Control-panel admin password. If blank, a random password is generated server-side.. Default to "".
    #' @param period Billing cycle in months (1 / 6 / 12 / 24 / 36).. Default to 1.
    #' @param coupon Coupon code.. Default to "".
    #' @param serviceOfferId Promo bundle id from getNewWebsite.serviceOffers.. Default to 0.
    #' @param script Auto-installer id (0 = none).. Default to 0.
    #' @param comment Free-form note saved on the service row.. Default to "".
    #' @param registerDomain When true and enableDomainRegistering=true from the catalog, also registers/transfers the domain through the order.. Default to FALSE.
    #' @param ... Other optional arguments.
    initialize = function(`hostname`, `packageId`, `rootpass` = "", `period` = 1, `coupon` = "", `serviceOfferId` = 0, `script` = 0, `comment` = "", `registerDomain` = FALSE, ...) {
      if (!missing(`hostname`)) {
        if (!(is.character(`hostname`) && length(`hostname`) == 1)) {
          stop(paste("Error! Invalid data for `hostname`. Must be a string:", `hostname`))
        }
        self$`hostname` <- `hostname`
      }
      if (!missing(`packageId`)) {
        if (!(is.numeric(`packageId`) && length(`packageId`) == 1)) {
          stop(paste("Error! Invalid data for `packageId`. Must be an integer:", `packageId`))
        }
        self$`packageId` <- `packageId`
      }
      if (!is.null(`rootpass`)) {
        if (!(is.character(`rootpass`) && length(`rootpass`) == 1)) {
          stop(paste("Error! Invalid data for `rootpass`. Must be a string:", `rootpass`))
        }
        self$`rootpass` <- `rootpass`
      }
      if (!is.null(`period`)) {
        if (!(is.numeric(`period`) && length(`period`) == 1)) {
          stop(paste("Error! Invalid data for `period`. Must be an integer:", `period`))
        }
        self$`period` <- `period`
      }
      if (!is.null(`coupon`)) {
        if (!(is.character(`coupon`) && length(`coupon`) == 1)) {
          stop(paste("Error! Invalid data for `coupon`. Must be a string:", `coupon`))
        }
        self$`coupon` <- `coupon`
      }
      if (!is.null(`serviceOfferId`)) {
        if (!(is.numeric(`serviceOfferId`) && length(`serviceOfferId`) == 1)) {
          stop(paste("Error! Invalid data for `serviceOfferId`. Must be an integer:", `serviceOfferId`))
        }
        self$`serviceOfferId` <- `serviceOfferId`
      }
      if (!is.null(`script`)) {
        if (!(is.numeric(`script`) && length(`script`) == 1)) {
          stop(paste("Error! Invalid data for `script`. Must be an integer:", `script`))
        }
        self$`script` <- `script`
      }
      if (!is.null(`comment`)) {
        if (!(is.character(`comment`) && length(`comment`) == 1)) {
          stop(paste("Error! Invalid data for `comment`. Must be a string:", `comment`))
        }
        self$`comment` <- `comment`
      }
      if (!is.null(`registerDomain`)) {
        if (!(is.logical(`registerDomain`) && length(`registerDomain`) == 1)) {
          stop(paste("Error! Invalid data for `registerDomain`. Must be a boolean:", `registerDomain`))
        }
        self$`registerDomain` <- `registerDomain`
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
    #' @return WebsiteOrderPostRequest as a base R list.
    #' @examples
    #' # convert array of WebsiteOrderPostRequest (x) to a data frame
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
    #' Convert WebsiteOrderPostRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      WebsiteOrderPostRequestObject <- list()
      if (!is.null(self$`hostname`)) {
        WebsiteOrderPostRequestObject[["hostname"]] <-
          self$`hostname`
      }
      if (!is.null(self$`packageId`)) {
        WebsiteOrderPostRequestObject[["packageId"]] <-
          self$`packageId`
      }
      if (!is.null(self$`rootpass`)) {
        WebsiteOrderPostRequestObject[["rootpass"]] <-
          self$`rootpass`
      }
      if (!is.null(self$`period`)) {
        WebsiteOrderPostRequestObject[["period"]] <-
          self$`period`
      }
      if (!is.null(self$`coupon`)) {
        WebsiteOrderPostRequestObject[["coupon"]] <-
          self$`coupon`
      }
      if (!is.null(self$`serviceOfferId`)) {
        WebsiteOrderPostRequestObject[["serviceOfferId"]] <-
          self$`serviceOfferId`
      }
      if (!is.null(self$`script`)) {
        WebsiteOrderPostRequestObject[["script"]] <-
          self$`script`
      }
      if (!is.null(self$`comment`)) {
        WebsiteOrderPostRequestObject[["comment"]] <-
          self$`comment`
      }
      if (!is.null(self$`registerDomain`)) {
        WebsiteOrderPostRequestObject[["registerDomain"]] <-
          self$`registerDomain`
      }
      return(WebsiteOrderPostRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of WebsiteOrderPostRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of WebsiteOrderPostRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`hostname`)) {
        self$`hostname` <- this_object$`hostname`
      }
      if (!is.null(this_object$`packageId`)) {
        self$`packageId` <- this_object$`packageId`
      }
      if (!is.null(this_object$`rootpass`)) {
        self$`rootpass` <- this_object$`rootpass`
      }
      if (!is.null(this_object$`period`)) {
        self$`period` <- this_object$`period`
      }
      if (!is.null(this_object$`coupon`)) {
        self$`coupon` <- this_object$`coupon`
      }
      if (!is.null(this_object$`serviceOfferId`)) {
        self$`serviceOfferId` <- this_object$`serviceOfferId`
      }
      if (!is.null(this_object$`script`)) {
        self$`script` <- this_object$`script`
      }
      if (!is.null(this_object$`comment`)) {
        self$`comment` <- this_object$`comment`
      }
      if (!is.null(this_object$`registerDomain`)) {
        self$`registerDomain` <- this_object$`registerDomain`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return WebsiteOrderPostRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of WebsiteOrderPostRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of WebsiteOrderPostRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`hostname` <- this_object$`hostname`
      self$`packageId` <- this_object$`packageId`
      self$`rootpass` <- this_object$`rootpass`
      self$`period` <- this_object$`period`
      self$`coupon` <- this_object$`coupon`
      self$`serviceOfferId` <- this_object$`serviceOfferId`
      self$`script` <- this_object$`script`
      self$`comment` <- this_object$`comment`
      self$`registerDomain` <- this_object$`registerDomain`
      self
    },

    #' @description
    #' Validate JSON input with respect to WebsiteOrderPostRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `hostname`
      if (!is.null(input_json$`hostname`)) {
        if (!(is.character(input_json$`hostname`) && length(input_json$`hostname`) == 1)) {
          stop(paste("Error! Invalid data for `hostname`. Must be a string:", input_json$`hostname`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for WebsiteOrderPostRequest: the required field `hostname` is missing."))
      }
      # check the required field `packageId`
      if (!is.null(input_json$`packageId`)) {
        if (!(is.numeric(input_json$`packageId`) && length(input_json$`packageId`) == 1)) {
          stop(paste("Error! Invalid data for `packageId`. Must be an integer:", input_json$`packageId`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for WebsiteOrderPostRequest: the required field `packageId` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of WebsiteOrderPostRequest
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `hostname` is null
      if (is.null(self$`hostname`)) {
        return(FALSE)
      }

      # check if the required `packageId` is null
      if (is.null(self$`packageId`)) {
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
      # check if the required `hostname` is null
      if (is.null(self$`hostname`)) {
        invalid_fields["hostname"] <- "Non-nullable required field `hostname` cannot be null."
      }

      # check if the required `packageId` is null
      if (is.null(self$`packageId`)) {
        invalid_fields["packageId"] <- "Non-nullable required field `packageId` cannot be null."
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
# WebsiteOrderPostRequest$unlock()
#
## Below is an example to define the print function
# WebsiteOrderPostRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# WebsiteOrderPostRequest$lock()

