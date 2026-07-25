#' Create a new Tickets
#'
#' @description
#' A listing of support tickets.
#'
#' @docType class
#' @title Tickets
#' @description Tickets Class
#' @format An \code{R6Class} generator object
#' @field ima  character
#' @field custid  character
#' @field view  character
#' @field currentPage  integer
#' @field limit  integer
#' @field sortcol  integer
#' @field sortdir  integer
#' @field rowsOffset  integer
#' @field tickets  list(\link{TicketsRow})
#' @field pages  integer
#' @field rowsTotal  integer
#' @field inboxCount  integer
#' @field countArray  \link{TicketsCountArray}
#' @field viewText  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Tickets <- R6::R6Class(
  "Tickets",
  public = list(
    `ima` = NULL,
    `custid` = NULL,
    `view` = NULL,
    `currentPage` = NULL,
    `limit` = NULL,
    `sortcol` = NULL,
    `sortdir` = NULL,
    `rowsOffset` = NULL,
    `tickets` = NULL,
    `pages` = NULL,
    `rowsTotal` = NULL,
    `inboxCount` = NULL,
    `countArray` = NULL,
    `viewText` = NULL,

    #' @description
    #' Initialize a new Tickets class.
    #'
    #' @param ima ima
    #' @param custid custid
    #' @param view view
    #' @param currentPage currentPage
    #' @param limit limit
    #' @param sortcol sortcol
    #' @param sortdir sortdir
    #' @param rowsOffset rowsOffset
    #' @param tickets tickets
    #' @param pages pages
    #' @param rowsTotal rowsTotal
    #' @param inboxCount inboxCount
    #' @param countArray countArray
    #' @param viewText viewText
    #' @param ... Other optional arguments.
    initialize = function(`ima`, `custid`, `view`, `currentPage`, `limit`, `sortcol`, `sortdir`, `rowsOffset`, `tickets`, `pages`, `rowsTotal`, `inboxCount`, `countArray`, `viewText`, ...) {
      if (!missing(`ima`)) {
        if (!(is.character(`ima`) && length(`ima`) == 1)) {
          stop(paste("Error! Invalid data for `ima`. Must be a string:", `ima`))
        }
        self$`ima` <- `ima`
      }
      if (!missing(`custid`)) {
        if (!(is.character(`custid`) && length(`custid`) == 1)) {
          stop(paste("Error! Invalid data for `custid`. Must be a string:", `custid`))
        }
        self$`custid` <- `custid`
      }
      if (!missing(`view`)) {
        if (!(is.character(`view`) && length(`view`) == 1)) {
          stop(paste("Error! Invalid data for `view`. Must be a string:", `view`))
        }
        self$`view` <- `view`
      }
      if (!missing(`currentPage`)) {
        if (!(is.numeric(`currentPage`) && length(`currentPage`) == 1)) {
          stop(paste("Error! Invalid data for `currentPage`. Must be an integer:", `currentPage`))
        }
        self$`currentPage` <- `currentPage`
      }
      if (!missing(`limit`)) {
        if (!(is.numeric(`limit`) && length(`limit`) == 1)) {
          stop(paste("Error! Invalid data for `limit`. Must be an integer:", `limit`))
        }
        self$`limit` <- `limit`
      }
      if (!missing(`sortcol`)) {
        if (!(is.numeric(`sortcol`) && length(`sortcol`) == 1)) {
          stop(paste("Error! Invalid data for `sortcol`. Must be an integer:", `sortcol`))
        }
        self$`sortcol` <- `sortcol`
      }
      if (!missing(`sortdir`)) {
        if (!(is.numeric(`sortdir`) && length(`sortdir`) == 1)) {
          stop(paste("Error! Invalid data for `sortdir`. Must be an integer:", `sortdir`))
        }
        self$`sortdir` <- `sortdir`
      }
      if (!missing(`rowsOffset`)) {
        if (!(is.numeric(`rowsOffset`) && length(`rowsOffset`) == 1)) {
          stop(paste("Error! Invalid data for `rowsOffset`. Must be an integer:", `rowsOffset`))
        }
        self$`rowsOffset` <- `rowsOffset`
      }
      if (!missing(`tickets`)) {
        stopifnot(is.vector(`tickets`), length(`tickets`) != 0)
        sapply(`tickets`, function(x) stopifnot(R6::is.R6(x)))
        self$`tickets` <- `tickets`
      }
      if (!missing(`pages`)) {
        if (!(is.numeric(`pages`) && length(`pages`) == 1)) {
          stop(paste("Error! Invalid data for `pages`. Must be an integer:", `pages`))
        }
        self$`pages` <- `pages`
      }
      if (!missing(`rowsTotal`)) {
        if (!(is.numeric(`rowsTotal`) && length(`rowsTotal`) == 1)) {
          stop(paste("Error! Invalid data for `rowsTotal`. Must be an integer:", `rowsTotal`))
        }
        self$`rowsTotal` <- `rowsTotal`
      }
      if (!missing(`inboxCount`)) {
        if (!(is.numeric(`inboxCount`) && length(`inboxCount`) == 1)) {
          stop(paste("Error! Invalid data for `inboxCount`. Must be an integer:", `inboxCount`))
        }
        self$`inboxCount` <- `inboxCount`
      }
      if (!missing(`countArray`)) {
        stopifnot(R6::is.R6(`countArray`))
        self$`countArray` <- `countArray`
      }
      if (!missing(`viewText`)) {
        if (!(is.character(`viewText`) && length(`viewText`) == 1)) {
          stop(paste("Error! Invalid data for `viewText`. Must be a string:", `viewText`))
        }
        self$`viewText` <- `viewText`
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
    #' @return Tickets as a base R list.
    #' @examples
    #' # convert array of Tickets (x) to a data frame
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
    #' Convert Tickets to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      TicketsObject <- list()
      if (!is.null(self$`ima`)) {
        TicketsObject[["ima"]] <-
          self$`ima`
      }
      if (!is.null(self$`custid`)) {
        TicketsObject[["custid"]] <-
          self$`custid`
      }
      if (!is.null(self$`view`)) {
        TicketsObject[["view"]] <-
          self$`view`
      }
      if (!is.null(self$`currentPage`)) {
        TicketsObject[["currentPage"]] <-
          self$`currentPage`
      }
      if (!is.null(self$`limit`)) {
        TicketsObject[["limit"]] <-
          self$`limit`
      }
      if (!is.null(self$`sortcol`)) {
        TicketsObject[["sortcol"]] <-
          self$`sortcol`
      }
      if (!is.null(self$`sortdir`)) {
        TicketsObject[["sortdir"]] <-
          self$`sortdir`
      }
      if (!is.null(self$`rowsOffset`)) {
        TicketsObject[["rowsOffset"]] <-
          self$`rowsOffset`
      }
      if (!is.null(self$`tickets`)) {
        TicketsObject[["tickets"]] <-
          self$extractSimpleType(self$`tickets`)
      }
      if (!is.null(self$`pages`)) {
        TicketsObject[["pages"]] <-
          self$`pages`
      }
      if (!is.null(self$`rowsTotal`)) {
        TicketsObject[["rowsTotal"]] <-
          self$`rowsTotal`
      }
      if (!is.null(self$`inboxCount`)) {
        TicketsObject[["inboxCount"]] <-
          self$`inboxCount`
      }
      if (!is.null(self$`countArray`)) {
        TicketsObject[["countArray"]] <-
          self$extractSimpleType(self$`countArray`)
      }
      if (!is.null(self$`viewText`)) {
        TicketsObject[["viewText"]] <-
          self$`viewText`
      }
      return(TicketsObject)
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
    #' Deserialize JSON string into an instance of Tickets
    #'
    #' @param input_json the JSON input
    #' @return the instance of Tickets
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`ima`)) {
        self$`ima` <- this_object$`ima`
      }
      if (!is.null(this_object$`custid`)) {
        self$`custid` <- this_object$`custid`
      }
      if (!is.null(this_object$`view`)) {
        self$`view` <- this_object$`view`
      }
      if (!is.null(this_object$`currentPage`)) {
        self$`currentPage` <- this_object$`currentPage`
      }
      if (!is.null(this_object$`limit`)) {
        self$`limit` <- this_object$`limit`
      }
      if (!is.null(this_object$`sortcol`)) {
        self$`sortcol` <- this_object$`sortcol`
      }
      if (!is.null(this_object$`sortdir`)) {
        self$`sortdir` <- this_object$`sortdir`
      }
      if (!is.null(this_object$`rowsOffset`)) {
        self$`rowsOffset` <- this_object$`rowsOffset`
      }
      if (!is.null(this_object$`tickets`)) {
        self$`tickets` <- ApiClient$new()$deserializeObj(this_object$`tickets`, "array[TicketsRow]", loadNamespace("interserverapi"))
      }
      if (!is.null(this_object$`pages`)) {
        self$`pages` <- this_object$`pages`
      }
      if (!is.null(this_object$`rowsTotal`)) {
        self$`rowsTotal` <- this_object$`rowsTotal`
      }
      if (!is.null(this_object$`inboxCount`)) {
        self$`inboxCount` <- this_object$`inboxCount`
      }
      if (!is.null(this_object$`countArray`)) {
        `countarray_object` <- TicketsCountArray$new()
        `countarray_object`$fromJSON(jsonlite::toJSON(this_object$`countArray`, auto_unbox = TRUE, digits = NA))
        self$`countArray` <- `countarray_object`
      }
      if (!is.null(this_object$`viewText`)) {
        self$`viewText` <- this_object$`viewText`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Tickets in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Tickets
    #'
    #' @param input_json the JSON input
    #' @return the instance of Tickets
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`ima` <- this_object$`ima`
      self$`custid` <- this_object$`custid`
      self$`view` <- this_object$`view`
      self$`currentPage` <- this_object$`currentPage`
      self$`limit` <- this_object$`limit`
      self$`sortcol` <- this_object$`sortcol`
      self$`sortdir` <- this_object$`sortdir`
      self$`rowsOffset` <- this_object$`rowsOffset`
      self$`tickets` <- ApiClient$new()$deserializeObj(this_object$`tickets`, "array[TicketsRow]", loadNamespace("interserverapi"))
      self$`pages` <- this_object$`pages`
      self$`rowsTotal` <- this_object$`rowsTotal`
      self$`inboxCount` <- this_object$`inboxCount`
      self$`countArray` <- TicketsCountArray$new()$fromJSON(jsonlite::toJSON(this_object$`countArray`, auto_unbox = TRUE, digits = NA))
      self$`viewText` <- this_object$`viewText`
      self
    },

    #' @description
    #' Validate JSON input with respect to Tickets and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `ima`
      if (!is.null(input_json$`ima`)) {
        if (!(is.character(input_json$`ima`) && length(input_json$`ima`) == 1)) {
          stop(paste("Error! Invalid data for `ima`. Must be a string:", input_json$`ima`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Tickets: the required field `ima` is missing."))
      }
      # check the required field `custid`
      if (!is.null(input_json$`custid`)) {
        if (!(is.character(input_json$`custid`) && length(input_json$`custid`) == 1)) {
          stop(paste("Error! Invalid data for `custid`. Must be a string:", input_json$`custid`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Tickets: the required field `custid` is missing."))
      }
      # check the required field `view`
      if (!is.null(input_json$`view`)) {
        if (!(is.character(input_json$`view`) && length(input_json$`view`) == 1)) {
          stop(paste("Error! Invalid data for `view`. Must be a string:", input_json$`view`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Tickets: the required field `view` is missing."))
      }
      # check the required field `currentPage`
      if (!is.null(input_json$`currentPage`)) {
        if (!(is.numeric(input_json$`currentPage`) && length(input_json$`currentPage`) == 1)) {
          stop(paste("Error! Invalid data for `currentPage`. Must be an integer:", input_json$`currentPage`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Tickets: the required field `currentPage` is missing."))
      }
      # check the required field `limit`
      if (!is.null(input_json$`limit`)) {
        if (!(is.numeric(input_json$`limit`) && length(input_json$`limit`) == 1)) {
          stop(paste("Error! Invalid data for `limit`. Must be an integer:", input_json$`limit`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Tickets: the required field `limit` is missing."))
      }
      # check the required field `sortcol`
      if (!is.null(input_json$`sortcol`)) {
        if (!(is.numeric(input_json$`sortcol`) && length(input_json$`sortcol`) == 1)) {
          stop(paste("Error! Invalid data for `sortcol`. Must be an integer:", input_json$`sortcol`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Tickets: the required field `sortcol` is missing."))
      }
      # check the required field `sortdir`
      if (!is.null(input_json$`sortdir`)) {
        if (!(is.numeric(input_json$`sortdir`) && length(input_json$`sortdir`) == 1)) {
          stop(paste("Error! Invalid data for `sortdir`. Must be an integer:", input_json$`sortdir`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Tickets: the required field `sortdir` is missing."))
      }
      # check the required field `rowsOffset`
      if (!is.null(input_json$`rowsOffset`)) {
        if (!(is.numeric(input_json$`rowsOffset`) && length(input_json$`rowsOffset`) == 1)) {
          stop(paste("Error! Invalid data for `rowsOffset`. Must be an integer:", input_json$`rowsOffset`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Tickets: the required field `rowsOffset` is missing."))
      }
      # check the required field `tickets`
      if (!is.null(input_json$`tickets`)) {
        stopifnot(is.vector(input_json$`tickets`), length(input_json$`tickets`) != 0)
        tmp <- sapply(input_json$`tickets`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Tickets: the required field `tickets` is missing."))
      }
      # check the required field `pages`
      if (!is.null(input_json$`pages`)) {
        if (!(is.numeric(input_json$`pages`) && length(input_json$`pages`) == 1)) {
          stop(paste("Error! Invalid data for `pages`. Must be an integer:", input_json$`pages`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Tickets: the required field `pages` is missing."))
      }
      # check the required field `rowsTotal`
      if (!is.null(input_json$`rowsTotal`)) {
        if (!(is.numeric(input_json$`rowsTotal`) && length(input_json$`rowsTotal`) == 1)) {
          stop(paste("Error! Invalid data for `rowsTotal`. Must be an integer:", input_json$`rowsTotal`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Tickets: the required field `rowsTotal` is missing."))
      }
      # check the required field `inboxCount`
      if (!is.null(input_json$`inboxCount`)) {
        if (!(is.numeric(input_json$`inboxCount`) && length(input_json$`inboxCount`) == 1)) {
          stop(paste("Error! Invalid data for `inboxCount`. Must be an integer:", input_json$`inboxCount`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Tickets: the required field `inboxCount` is missing."))
      }
      # check the required field `countArray`
      if (!is.null(input_json$`countArray`)) {
        stopifnot(R6::is.R6(input_json$`countArray`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Tickets: the required field `countArray` is missing."))
      }
      # check the required field `viewText`
      if (!is.null(input_json$`viewText`)) {
        if (!(is.character(input_json$`viewText`) && length(input_json$`viewText`) == 1)) {
          stop(paste("Error! Invalid data for `viewText`. Must be a string:", input_json$`viewText`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Tickets: the required field `viewText` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Tickets
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `ima` is null
      if (is.null(self$`ima`)) {
        return(FALSE)
      }

      # check if the required `custid` is null
      if (is.null(self$`custid`)) {
        return(FALSE)
      }

      # check if the required `view` is null
      if (is.null(self$`view`)) {
        return(FALSE)
      }

      # check if the required `currentPage` is null
      if (is.null(self$`currentPage`)) {
        return(FALSE)
      }

      # check if the required `limit` is null
      if (is.null(self$`limit`)) {
        return(FALSE)
      }

      # check if the required `sortcol` is null
      if (is.null(self$`sortcol`)) {
        return(FALSE)
      }

      # check if the required `sortdir` is null
      if (is.null(self$`sortdir`)) {
        return(FALSE)
      }

      # check if the required `rowsOffset` is null
      if (is.null(self$`rowsOffset`)) {
        return(FALSE)
      }

      # check if the required `tickets` is null
      if (is.null(self$`tickets`)) {
        return(FALSE)
      }

      # check if the required `pages` is null
      if (is.null(self$`pages`)) {
        return(FALSE)
      }

      # check if the required `rowsTotal` is null
      if (is.null(self$`rowsTotal`)) {
        return(FALSE)
      }

      # check if the required `inboxCount` is null
      if (is.null(self$`inboxCount`)) {
        return(FALSE)
      }

      # check if the required `countArray` is null
      if (is.null(self$`countArray`)) {
        return(FALSE)
      }

      # check if the required `viewText` is null
      if (is.null(self$`viewText`)) {
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
      # check if the required `ima` is null
      if (is.null(self$`ima`)) {
        invalid_fields["ima"] <- "Non-nullable required field `ima` cannot be null."
      }

      # check if the required `custid` is null
      if (is.null(self$`custid`)) {
        invalid_fields["custid"] <- "Non-nullable required field `custid` cannot be null."
      }

      # check if the required `view` is null
      if (is.null(self$`view`)) {
        invalid_fields["view"] <- "Non-nullable required field `view` cannot be null."
      }

      # check if the required `currentPage` is null
      if (is.null(self$`currentPage`)) {
        invalid_fields["currentPage"] <- "Non-nullable required field `currentPage` cannot be null."
      }

      # check if the required `limit` is null
      if (is.null(self$`limit`)) {
        invalid_fields["limit"] <- "Non-nullable required field `limit` cannot be null."
      }

      # check if the required `sortcol` is null
      if (is.null(self$`sortcol`)) {
        invalid_fields["sortcol"] <- "Non-nullable required field `sortcol` cannot be null."
      }

      # check if the required `sortdir` is null
      if (is.null(self$`sortdir`)) {
        invalid_fields["sortdir"] <- "Non-nullable required field `sortdir` cannot be null."
      }

      # check if the required `rowsOffset` is null
      if (is.null(self$`rowsOffset`)) {
        invalid_fields["rowsOffset"] <- "Non-nullable required field `rowsOffset` cannot be null."
      }

      # check if the required `tickets` is null
      if (is.null(self$`tickets`)) {
        invalid_fields["tickets"] <- "Non-nullable required field `tickets` cannot be null."
      }

      # check if the required `pages` is null
      if (is.null(self$`pages`)) {
        invalid_fields["pages"] <- "Non-nullable required field `pages` cannot be null."
      }

      # check if the required `rowsTotal` is null
      if (is.null(self$`rowsTotal`)) {
        invalid_fields["rowsTotal"] <- "Non-nullable required field `rowsTotal` cannot be null."
      }

      # check if the required `inboxCount` is null
      if (is.null(self$`inboxCount`)) {
        invalid_fields["inboxCount"] <- "Non-nullable required field `inboxCount` cannot be null."
      }

      # check if the required `countArray` is null
      if (is.null(self$`countArray`)) {
        invalid_fields["countArray"] <- "Non-nullable required field `countArray` cannot be null."
      }

      # check if the required `viewText` is null
      if (is.null(self$`viewText`)) {
        invalid_fields["viewText"] <- "Non-nullable required field `viewText` cannot be null."
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
# Tickets$unlock()
#
## Below is an example to define the print function
# Tickets$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Tickets$lock()

