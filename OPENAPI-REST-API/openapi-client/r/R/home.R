#' Create a new Home
#'
#' @description
#' Home Class
#'
#' @docType class
#' @title Home
#' @description Home Class
#' @format An \code{R6Class} generator object
#' @field last_login_ip Last login IP. character
#' @field last_login Last login time. character
#' @field currency Currency symbol. character
#' @field amount Amount with currency. character
#' @field invoice_list Number of invoices. integer
#' @field balance Balance with currency. character
#' @field full_name Users full name. character
#' @field email User email address. character
#' @field tickets List of tickets. list(character)
#' @field ticketStatus  \link{HomeTicketStatus}
#' @field ticketStatusView  \link{HomeTicketStatusView}
#' @field details  \link{HomeDetails}
#' @field services  \link{HomeServices}
#' @field AFFILIATE_AMOUNT Affiliate amount with currency. character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Home <- R6::R6Class(
  "Home",
  public = list(
    `last_login_ip` = NULL,
    `last_login` = NULL,
    `currency` = NULL,
    `amount` = NULL,
    `invoice_list` = NULL,
    `balance` = NULL,
    `full_name` = NULL,
    `email` = NULL,
    `tickets` = NULL,
    `ticketStatus` = NULL,
    `ticketStatusView` = NULL,
    `details` = NULL,
    `services` = NULL,
    `AFFILIATE_AMOUNT` = NULL,

    #' @description
    #' Initialize a new Home class.
    #'
    #' @param last_login_ip Last login IP.
    #' @param last_login Last login time.
    #' @param currency Currency symbol.
    #' @param amount Amount with currency.
    #' @param invoice_list Number of invoices.
    #' @param balance Balance with currency.
    #' @param full_name Users full name.
    #' @param email User email address.
    #' @param tickets List of tickets.
    #' @param ticketStatus ticketStatus
    #' @param ticketStatusView ticketStatusView
    #' @param details details
    #' @param services services
    #' @param AFFILIATE_AMOUNT Affiliate amount with currency.
    #' @param ... Other optional arguments.
    initialize = function(`last_login_ip`, `last_login`, `currency`, `amount`, `invoice_list`, `balance`, `full_name`, `email`, `tickets`, `ticketStatus`, `ticketStatusView`, `details`, `services`, `AFFILIATE_AMOUNT`, ...) {
      if (!missing(`last_login_ip`)) {
        if (!(is.character(`last_login_ip`) && length(`last_login_ip`) == 1)) {
          stop(paste("Error! Invalid data for `last_login_ip`. Must be a string:", `last_login_ip`))
        }
        self$`last_login_ip` <- `last_login_ip`
      }
      if (!missing(`last_login`)) {
        if (!(is.character(`last_login`) && length(`last_login`) == 1)) {
          stop(paste("Error! Invalid data for `last_login`. Must be a string:", `last_login`))
        }
        self$`last_login` <- `last_login`
      }
      if (!missing(`currency`)) {
        if (!(is.character(`currency`) && length(`currency`) == 1)) {
          stop(paste("Error! Invalid data for `currency`. Must be a string:", `currency`))
        }
        self$`currency` <- `currency`
      }
      if (!missing(`amount`)) {
        if (!(is.character(`amount`) && length(`amount`) == 1)) {
          stop(paste("Error! Invalid data for `amount`. Must be a string:", `amount`))
        }
        self$`amount` <- `amount`
      }
      if (!missing(`invoice_list`)) {
        if (!(is.numeric(`invoice_list`) && length(`invoice_list`) == 1)) {
          stop(paste("Error! Invalid data for `invoice_list`. Must be an integer:", `invoice_list`))
        }
        self$`invoice_list` <- `invoice_list`
      }
      if (!missing(`balance`)) {
        if (!(is.character(`balance`) && length(`balance`) == 1)) {
          stop(paste("Error! Invalid data for `balance`. Must be a string:", `balance`))
        }
        self$`balance` <- `balance`
      }
      if (!missing(`full_name`)) {
        if (!(is.character(`full_name`) && length(`full_name`) == 1)) {
          stop(paste("Error! Invalid data for `full_name`. Must be a string:", `full_name`))
        }
        self$`full_name` <- `full_name`
      }
      if (!missing(`email`)) {
        if (!(is.character(`email`) && length(`email`) == 1)) {
          stop(paste("Error! Invalid data for `email`. Must be a string:", `email`))
        }
        self$`email` <- `email`
      }
      if (!missing(`tickets`)) {
        stopifnot(is.vector(`tickets`), length(`tickets`) != 0)
        sapply(`tickets`, function(x) stopifnot(is.character(x)))
        self$`tickets` <- `tickets`
      }
      if (!missing(`ticketStatus`)) {
        stopifnot(R6::is.R6(`ticketStatus`))
        self$`ticketStatus` <- `ticketStatus`
      }
      if (!missing(`ticketStatusView`)) {
        stopifnot(R6::is.R6(`ticketStatusView`))
        self$`ticketStatusView` <- `ticketStatusView`
      }
      if (!missing(`details`)) {
        stopifnot(R6::is.R6(`details`))
        self$`details` <- `details`
      }
      if (!missing(`services`)) {
        stopifnot(R6::is.R6(`services`))
        self$`services` <- `services`
      }
      if (!missing(`AFFILIATE_AMOUNT`)) {
        if (!(is.character(`AFFILIATE_AMOUNT`) && length(`AFFILIATE_AMOUNT`) == 1)) {
          stop(paste("Error! Invalid data for `AFFILIATE_AMOUNT`. Must be a string:", `AFFILIATE_AMOUNT`))
        }
        self$`AFFILIATE_AMOUNT` <- `AFFILIATE_AMOUNT`
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
    #' @return Home as a base R list.
    #' @examples
    #' # convert array of Home (x) to a data frame
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
    #' Convert Home to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      HomeObject <- list()
      if (!is.null(self$`last_login_ip`)) {
        HomeObject[["last_login_ip"]] <-
          self$`last_login_ip`
      }
      if (!is.null(self$`last_login`)) {
        HomeObject[["last_login"]] <-
          self$`last_login`
      }
      if (!is.null(self$`currency`)) {
        HomeObject[["currency"]] <-
          self$`currency`
      }
      if (!is.null(self$`amount`)) {
        HomeObject[["amount"]] <-
          self$`amount`
      }
      if (!is.null(self$`invoice_list`)) {
        HomeObject[["invoice_list"]] <-
          self$`invoice_list`
      }
      if (!is.null(self$`balance`)) {
        HomeObject[["balance"]] <-
          self$`balance`
      }
      if (!is.null(self$`full_name`)) {
        HomeObject[["full_name"]] <-
          self$`full_name`
      }
      if (!is.null(self$`email`)) {
        HomeObject[["email"]] <-
          self$`email`
      }
      if (!is.null(self$`tickets`)) {
        HomeObject[["tickets"]] <-
          self$`tickets`
      }
      if (!is.null(self$`ticketStatus`)) {
        HomeObject[["ticketStatus"]] <-
          self$extractSimpleType(self$`ticketStatus`)
      }
      if (!is.null(self$`ticketStatusView`)) {
        HomeObject[["ticketStatusView"]] <-
          self$extractSimpleType(self$`ticketStatusView`)
      }
      if (!is.null(self$`details`)) {
        HomeObject[["details"]] <-
          self$extractSimpleType(self$`details`)
      }
      if (!is.null(self$`services`)) {
        HomeObject[["services"]] <-
          self$extractSimpleType(self$`services`)
      }
      if (!is.null(self$`AFFILIATE_AMOUNT`)) {
        HomeObject[["AFFILIATE_AMOUNT"]] <-
          self$`AFFILIATE_AMOUNT`
      }
      return(HomeObject)
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
    #' Deserialize JSON string into an instance of Home
    #'
    #' @param input_json the JSON input
    #' @return the instance of Home
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`last_login_ip`)) {
        self$`last_login_ip` <- this_object$`last_login_ip`
      }
      if (!is.null(this_object$`last_login`)) {
        self$`last_login` <- this_object$`last_login`
      }
      if (!is.null(this_object$`currency`)) {
        self$`currency` <- this_object$`currency`
      }
      if (!is.null(this_object$`amount`)) {
        self$`amount` <- this_object$`amount`
      }
      if (!is.null(this_object$`invoice_list`)) {
        self$`invoice_list` <- this_object$`invoice_list`
      }
      if (!is.null(this_object$`balance`)) {
        self$`balance` <- this_object$`balance`
      }
      if (!is.null(this_object$`full_name`)) {
        self$`full_name` <- this_object$`full_name`
      }
      if (!is.null(this_object$`email`)) {
        self$`email` <- this_object$`email`
      }
      if (!is.null(this_object$`tickets`)) {
        self$`tickets` <- ApiClient$new()$deserializeObj(this_object$`tickets`, "array[character]", loadNamespace("interserverapi"))
      }
      if (!is.null(this_object$`ticketStatus`)) {
        `ticketstatus_object` <- HomeTicketStatus$new()
        `ticketstatus_object`$fromJSON(jsonlite::toJSON(this_object$`ticketStatus`, auto_unbox = TRUE, digits = NA))
        self$`ticketStatus` <- `ticketstatus_object`
      }
      if (!is.null(this_object$`ticketStatusView`)) {
        `ticketstatusview_object` <- HomeTicketStatusView$new()
        `ticketstatusview_object`$fromJSON(jsonlite::toJSON(this_object$`ticketStatusView`, auto_unbox = TRUE, digits = NA))
        self$`ticketStatusView` <- `ticketstatusview_object`
      }
      if (!is.null(this_object$`details`)) {
        `details_object` <- HomeDetails$new()
        `details_object`$fromJSON(jsonlite::toJSON(this_object$`details`, auto_unbox = TRUE, digits = NA))
        self$`details` <- `details_object`
      }
      if (!is.null(this_object$`services`)) {
        `services_object` <- HomeServices$new()
        `services_object`$fromJSON(jsonlite::toJSON(this_object$`services`, auto_unbox = TRUE, digits = NA))
        self$`services` <- `services_object`
      }
      if (!is.null(this_object$`AFFILIATE_AMOUNT`)) {
        self$`AFFILIATE_AMOUNT` <- this_object$`AFFILIATE_AMOUNT`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Home in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Home
    #'
    #' @param input_json the JSON input
    #' @return the instance of Home
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`last_login_ip` <- this_object$`last_login_ip`
      self$`last_login` <- this_object$`last_login`
      self$`currency` <- this_object$`currency`
      self$`amount` <- this_object$`amount`
      self$`invoice_list` <- this_object$`invoice_list`
      self$`balance` <- this_object$`balance`
      self$`full_name` <- this_object$`full_name`
      self$`email` <- this_object$`email`
      self$`tickets` <- ApiClient$new()$deserializeObj(this_object$`tickets`, "array[character]", loadNamespace("interserverapi"))
      self$`ticketStatus` <- HomeTicketStatus$new()$fromJSON(jsonlite::toJSON(this_object$`ticketStatus`, auto_unbox = TRUE, digits = NA))
      self$`ticketStatusView` <- HomeTicketStatusView$new()$fromJSON(jsonlite::toJSON(this_object$`ticketStatusView`, auto_unbox = TRUE, digits = NA))
      self$`details` <- HomeDetails$new()$fromJSON(jsonlite::toJSON(this_object$`details`, auto_unbox = TRUE, digits = NA))
      self$`services` <- HomeServices$new()$fromJSON(jsonlite::toJSON(this_object$`services`, auto_unbox = TRUE, digits = NA))
      self$`AFFILIATE_AMOUNT` <- this_object$`AFFILIATE_AMOUNT`
      self
    },

    #' @description
    #' Validate JSON input with respect to Home and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `last_login_ip`
      if (!is.null(input_json$`last_login_ip`)) {
        if (!(is.character(input_json$`last_login_ip`) && length(input_json$`last_login_ip`) == 1)) {
          stop(paste("Error! Invalid data for `last_login_ip`. Must be a string:", input_json$`last_login_ip`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Home: the required field `last_login_ip` is missing."))
      }
      # check the required field `last_login`
      if (!is.null(input_json$`last_login`)) {
        if (!(is.character(input_json$`last_login`) && length(input_json$`last_login`) == 1)) {
          stop(paste("Error! Invalid data for `last_login`. Must be a string:", input_json$`last_login`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Home: the required field `last_login` is missing."))
      }
      # check the required field `currency`
      if (!is.null(input_json$`currency`)) {
        if (!(is.character(input_json$`currency`) && length(input_json$`currency`) == 1)) {
          stop(paste("Error! Invalid data for `currency`. Must be a string:", input_json$`currency`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Home: the required field `currency` is missing."))
      }
      # check the required field `amount`
      if (!is.null(input_json$`amount`)) {
        if (!(is.character(input_json$`amount`) && length(input_json$`amount`) == 1)) {
          stop(paste("Error! Invalid data for `amount`. Must be a string:", input_json$`amount`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Home: the required field `amount` is missing."))
      }
      # check the required field `invoice_list`
      if (!is.null(input_json$`invoice_list`)) {
        if (!(is.numeric(input_json$`invoice_list`) && length(input_json$`invoice_list`) == 1)) {
          stop(paste("Error! Invalid data for `invoice_list`. Must be an integer:", input_json$`invoice_list`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Home: the required field `invoice_list` is missing."))
      }
      # check the required field `balance`
      if (!is.null(input_json$`balance`)) {
        if (!(is.character(input_json$`balance`) && length(input_json$`balance`) == 1)) {
          stop(paste("Error! Invalid data for `balance`. Must be a string:", input_json$`balance`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Home: the required field `balance` is missing."))
      }
      # check the required field `full_name`
      if (!is.null(input_json$`full_name`)) {
        if (!(is.character(input_json$`full_name`) && length(input_json$`full_name`) == 1)) {
          stop(paste("Error! Invalid data for `full_name`. Must be a string:", input_json$`full_name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Home: the required field `full_name` is missing."))
      }
      # check the required field `email`
      if (!is.null(input_json$`email`)) {
        if (!(is.character(input_json$`email`) && length(input_json$`email`) == 1)) {
          stop(paste("Error! Invalid data for `email`. Must be a string:", input_json$`email`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Home: the required field `email` is missing."))
      }
      # check the required field `tickets`
      if (!is.null(input_json$`tickets`)) {
        stopifnot(is.vector(input_json$`tickets`), length(input_json$`tickets`) != 0)
        tmp <- sapply(input_json$`tickets`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Home: the required field `tickets` is missing."))
      }
      # check the required field `ticketStatus`
      if (!is.null(input_json$`ticketStatus`)) {
        stopifnot(R6::is.R6(input_json$`ticketStatus`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Home: the required field `ticketStatus` is missing."))
      }
      # check the required field `ticketStatusView`
      if (!is.null(input_json$`ticketStatusView`)) {
        stopifnot(R6::is.R6(input_json$`ticketStatusView`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Home: the required field `ticketStatusView` is missing."))
      }
      # check the required field `details`
      if (!is.null(input_json$`details`)) {
        stopifnot(R6::is.R6(input_json$`details`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Home: the required field `details` is missing."))
      }
      # check the required field `services`
      if (!is.null(input_json$`services`)) {
        stopifnot(R6::is.R6(input_json$`services`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Home: the required field `services` is missing."))
      }
      # check the required field `AFFILIATE_AMOUNT`
      if (!is.null(input_json$`AFFILIATE_AMOUNT`)) {
        if (!(is.character(input_json$`AFFILIATE_AMOUNT`) && length(input_json$`AFFILIATE_AMOUNT`) == 1)) {
          stop(paste("Error! Invalid data for `AFFILIATE_AMOUNT`. Must be a string:", input_json$`AFFILIATE_AMOUNT`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Home: the required field `AFFILIATE_AMOUNT` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Home
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `last_login_ip` is null
      if (is.null(self$`last_login_ip`)) {
        return(FALSE)
      }

      # check if the required `last_login` is null
      if (is.null(self$`last_login`)) {
        return(FALSE)
      }

      # check if the required `currency` is null
      if (is.null(self$`currency`)) {
        return(FALSE)
      }

      # check if the required `amount` is null
      if (is.null(self$`amount`)) {
        return(FALSE)
      }

      # check if the required `invoice_list` is null
      if (is.null(self$`invoice_list`)) {
        return(FALSE)
      }

      # check if the required `balance` is null
      if (is.null(self$`balance`)) {
        return(FALSE)
      }

      # check if the required `full_name` is null
      if (is.null(self$`full_name`)) {
        return(FALSE)
      }

      # check if the required `email` is null
      if (is.null(self$`email`)) {
        return(FALSE)
      }

      # check if the required `tickets` is null
      if (is.null(self$`tickets`)) {
        return(FALSE)
      }

      # check if the required `ticketStatus` is null
      if (is.null(self$`ticketStatus`)) {
        return(FALSE)
      }

      # check if the required `ticketStatusView` is null
      if (is.null(self$`ticketStatusView`)) {
        return(FALSE)
      }

      # check if the required `details` is null
      if (is.null(self$`details`)) {
        return(FALSE)
      }

      # check if the required `services` is null
      if (is.null(self$`services`)) {
        return(FALSE)
      }

      # check if the required `AFFILIATE_AMOUNT` is null
      if (is.null(self$`AFFILIATE_AMOUNT`)) {
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
      # check if the required `last_login_ip` is null
      if (is.null(self$`last_login_ip`)) {
        invalid_fields["last_login_ip"] <- "Non-nullable required field `last_login_ip` cannot be null."
      }

      # check if the required `last_login` is null
      if (is.null(self$`last_login`)) {
        invalid_fields["last_login"] <- "Non-nullable required field `last_login` cannot be null."
      }

      # check if the required `currency` is null
      if (is.null(self$`currency`)) {
        invalid_fields["currency"] <- "Non-nullable required field `currency` cannot be null."
      }

      # check if the required `amount` is null
      if (is.null(self$`amount`)) {
        invalid_fields["amount"] <- "Non-nullable required field `amount` cannot be null."
      }

      # check if the required `invoice_list` is null
      if (is.null(self$`invoice_list`)) {
        invalid_fields["invoice_list"] <- "Non-nullable required field `invoice_list` cannot be null."
      }

      # check if the required `balance` is null
      if (is.null(self$`balance`)) {
        invalid_fields["balance"] <- "Non-nullable required field `balance` cannot be null."
      }

      # check if the required `full_name` is null
      if (is.null(self$`full_name`)) {
        invalid_fields["full_name"] <- "Non-nullable required field `full_name` cannot be null."
      }

      # check if the required `email` is null
      if (is.null(self$`email`)) {
        invalid_fields["email"] <- "Non-nullable required field `email` cannot be null."
      }

      # check if the required `tickets` is null
      if (is.null(self$`tickets`)) {
        invalid_fields["tickets"] <- "Non-nullable required field `tickets` cannot be null."
      }

      # check if the required `ticketStatus` is null
      if (is.null(self$`ticketStatus`)) {
        invalid_fields["ticketStatus"] <- "Non-nullable required field `ticketStatus` cannot be null."
      }

      # check if the required `ticketStatusView` is null
      if (is.null(self$`ticketStatusView`)) {
        invalid_fields["ticketStatusView"] <- "Non-nullable required field `ticketStatusView` cannot be null."
      }

      # check if the required `details` is null
      if (is.null(self$`details`)) {
        invalid_fields["details"] <- "Non-nullable required field `details` cannot be null."
      }

      # check if the required `services` is null
      if (is.null(self$`services`)) {
        invalid_fields["services"] <- "Non-nullable required field `services` cannot be null."
      }

      # check if the required `AFFILIATE_AMOUNT` is null
      if (is.null(self$`AFFILIATE_AMOUNT`)) {
        invalid_fields["AFFILIATE_AMOUNT"] <- "Non-nullable required field `AFFILIATE_AMOUNT` cannot be null."
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
# Home$unlock()
#
## Below is an example to define the print function
# Home$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Home$lock()

