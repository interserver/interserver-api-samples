#' Create a new ServerOrderPostRequest
#'
#' @description
#' Request body to place a custom dedicated server order. All ids come from getNewServer's config_li / regions.
#'
#' @docType class
#' @title ServerOrderPostRequest
#' @description ServerOrderPostRequest Class
#' @format An \code{R6Class} generator object
#' @field cpu CPU configuration id from config_li.cpu_li. Constrains valid hd/memory options. integer
#' @field hd  \link{ServerOrderPostRequestHd}
#' @field memory Memory configuration id from config_li.memory_li[cpu]. integer
#' @field bandwidth Bandwidth configuration id from config_li.bandwidth_li. integer
#' @field ips IP block configuration id from config_li.ips_li. integer
#' @field os Operating System configuration id from config_li.os_li. integer
#' @field cp Control Panel configuration id from config_li.cp_li. integer
#' @field raid RAID configuration id from config_li.raid_li. integer
#' @field region Region id from the regions list. integer
#' @field servername Server hostname. Must pass valid_hostname(). character
#' @field rootpass Root password for the server. character
#' @field tos Terms-of-service acceptance. Must be true to place the order. character
#' @field comment Optional free-form order comment. character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ServerOrderPostRequest <- R6::R6Class(
  "ServerOrderPostRequest",
  public = list(
    `cpu` = NULL,
    `hd` = NULL,
    `memory` = NULL,
    `bandwidth` = NULL,
    `ips` = NULL,
    `os` = NULL,
    `cp` = NULL,
    `raid` = NULL,
    `region` = NULL,
    `servername` = NULL,
    `rootpass` = NULL,
    `tos` = NULL,
    `comment` = NULL,

    #' @description
    #' Initialize a new ServerOrderPostRequest class.
    #'
    #' @param cpu CPU configuration id from config_li.cpu_li. Constrains valid hd/memory options.
    #' @param hd hd
    #' @param memory Memory configuration id from config_li.memory_li[cpu].
    #' @param bandwidth Bandwidth configuration id from config_li.bandwidth_li.
    #' @param ips IP block configuration id from config_li.ips_li.
    #' @param os Operating System configuration id from config_li.os_li.
    #' @param cp Control Panel configuration id from config_li.cp_li.
    #' @param raid RAID configuration id from config_li.raid_li.
    #' @param region Region id from the regions list.
    #' @param servername Server hostname. Must pass valid_hostname().
    #' @param rootpass Root password for the server.
    #' @param tos Terms-of-service acceptance. Must be true to place the order.
    #' @param comment Optional free-form order comment.. Default to "".
    #' @param ... Other optional arguments.
    initialize = function(`cpu`, `hd`, `memory`, `bandwidth`, `ips`, `os`, `cp`, `raid`, `region`, `servername`, `rootpass`, `tos`, `comment` = "", ...) {
      if (!missing(`cpu`)) {
        if (!(is.numeric(`cpu`) && length(`cpu`) == 1)) {
          stop(paste("Error! Invalid data for `cpu`. Must be an integer:", `cpu`))
        }
        self$`cpu` <- `cpu`
      }
      if (!missing(`hd`)) {
        stopifnot(R6::is.R6(`hd`))
        self$`hd` <- `hd`
      }
      if (!missing(`memory`)) {
        if (!(is.numeric(`memory`) && length(`memory`) == 1)) {
          stop(paste("Error! Invalid data for `memory`. Must be an integer:", `memory`))
        }
        self$`memory` <- `memory`
      }
      if (!missing(`bandwidth`)) {
        if (!(is.numeric(`bandwidth`) && length(`bandwidth`) == 1)) {
          stop(paste("Error! Invalid data for `bandwidth`. Must be an integer:", `bandwidth`))
        }
        self$`bandwidth` <- `bandwidth`
      }
      if (!missing(`ips`)) {
        if (!(is.numeric(`ips`) && length(`ips`) == 1)) {
          stop(paste("Error! Invalid data for `ips`. Must be an integer:", `ips`))
        }
        self$`ips` <- `ips`
      }
      if (!missing(`os`)) {
        if (!(is.numeric(`os`) && length(`os`) == 1)) {
          stop(paste("Error! Invalid data for `os`. Must be an integer:", `os`))
        }
        self$`os` <- `os`
      }
      if (!missing(`cp`)) {
        if (!(is.numeric(`cp`) && length(`cp`) == 1)) {
          stop(paste("Error! Invalid data for `cp`. Must be an integer:", `cp`))
        }
        self$`cp` <- `cp`
      }
      if (!missing(`raid`)) {
        if (!(is.numeric(`raid`) && length(`raid`) == 1)) {
          stop(paste("Error! Invalid data for `raid`. Must be an integer:", `raid`))
        }
        self$`raid` <- `raid`
      }
      if (!missing(`region`)) {
        if (!(is.numeric(`region`) && length(`region`) == 1)) {
          stop(paste("Error! Invalid data for `region`. Must be an integer:", `region`))
        }
        self$`region` <- `region`
      }
      if (!missing(`servername`)) {
        if (!(is.character(`servername`) && length(`servername`) == 1)) {
          stop(paste("Error! Invalid data for `servername`. Must be a string:", `servername`))
        }
        self$`servername` <- `servername`
      }
      if (!missing(`rootpass`)) {
        if (!(is.character(`rootpass`) && length(`rootpass`) == 1)) {
          stop(paste("Error! Invalid data for `rootpass`. Must be a string:", `rootpass`))
        }
        self$`rootpass` <- `rootpass`
      }
      if (!missing(`tos`)) {
        if (!(is.logical(`tos`) && length(`tos`) == 1)) {
          stop(paste("Error! Invalid data for `tos`. Must be a boolean:", `tos`))
        }
        self$`tos` <- `tos`
      }
      if (!is.null(`comment`)) {
        if (!(is.character(`comment`) && length(`comment`) == 1)) {
          stop(paste("Error! Invalid data for `comment`. Must be a string:", `comment`))
        }
        self$`comment` <- `comment`
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
    #' @return ServerOrderPostRequest as a base R list.
    #' @examples
    #' # convert array of ServerOrderPostRequest (x) to a data frame
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
    #' Convert ServerOrderPostRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ServerOrderPostRequestObject <- list()
      if (!is.null(self$`cpu`)) {
        ServerOrderPostRequestObject[["cpu"]] <-
          self$`cpu`
      }
      if (!is.null(self$`hd`)) {
        ServerOrderPostRequestObject[["hd"]] <-
          self$extractSimpleType(self$`hd`)
      }
      if (!is.null(self$`memory`)) {
        ServerOrderPostRequestObject[["memory"]] <-
          self$`memory`
      }
      if (!is.null(self$`bandwidth`)) {
        ServerOrderPostRequestObject[["bandwidth"]] <-
          self$`bandwidth`
      }
      if (!is.null(self$`ips`)) {
        ServerOrderPostRequestObject[["ips"]] <-
          self$`ips`
      }
      if (!is.null(self$`os`)) {
        ServerOrderPostRequestObject[["os"]] <-
          self$`os`
      }
      if (!is.null(self$`cp`)) {
        ServerOrderPostRequestObject[["cp"]] <-
          self$`cp`
      }
      if (!is.null(self$`raid`)) {
        ServerOrderPostRequestObject[["raid"]] <-
          self$`raid`
      }
      if (!is.null(self$`region`)) {
        ServerOrderPostRequestObject[["region"]] <-
          self$`region`
      }
      if (!is.null(self$`servername`)) {
        ServerOrderPostRequestObject[["servername"]] <-
          self$`servername`
      }
      if (!is.null(self$`rootpass`)) {
        ServerOrderPostRequestObject[["rootpass"]] <-
          self$`rootpass`
      }
      if (!is.null(self$`tos`)) {
        ServerOrderPostRequestObject[["tos"]] <-
          self$`tos`
      }
      if (!is.null(self$`comment`)) {
        ServerOrderPostRequestObject[["comment"]] <-
          self$`comment`
      }
      return(ServerOrderPostRequestObject)
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
    #' Deserialize JSON string into an instance of ServerOrderPostRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of ServerOrderPostRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`cpu`)) {
        self$`cpu` <- this_object$`cpu`
      }
      if (!is.null(this_object$`hd`)) {
        `hd_object` <- ServerOrderPostRequestHd$new()
        `hd_object`$fromJSON(jsonlite::toJSON(this_object$`hd`, auto_unbox = TRUE, digits = NA))
        self$`hd` <- `hd_object`
      }
      if (!is.null(this_object$`memory`)) {
        self$`memory` <- this_object$`memory`
      }
      if (!is.null(this_object$`bandwidth`)) {
        self$`bandwidth` <- this_object$`bandwidth`
      }
      if (!is.null(this_object$`ips`)) {
        self$`ips` <- this_object$`ips`
      }
      if (!is.null(this_object$`os`)) {
        self$`os` <- this_object$`os`
      }
      if (!is.null(this_object$`cp`)) {
        self$`cp` <- this_object$`cp`
      }
      if (!is.null(this_object$`raid`)) {
        self$`raid` <- this_object$`raid`
      }
      if (!is.null(this_object$`region`)) {
        self$`region` <- this_object$`region`
      }
      if (!is.null(this_object$`servername`)) {
        self$`servername` <- this_object$`servername`
      }
      if (!is.null(this_object$`rootpass`)) {
        self$`rootpass` <- this_object$`rootpass`
      }
      if (!is.null(this_object$`tos`)) {
        self$`tos` <- this_object$`tos`
      }
      if (!is.null(this_object$`comment`)) {
        self$`comment` <- this_object$`comment`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ServerOrderPostRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ServerOrderPostRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of ServerOrderPostRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`cpu` <- this_object$`cpu`
      self$`hd` <- ServerOrderPostRequestHd$new()$fromJSON(jsonlite::toJSON(this_object$`hd`, auto_unbox = TRUE, digits = NA))
      self$`memory` <- this_object$`memory`
      self$`bandwidth` <- this_object$`bandwidth`
      self$`ips` <- this_object$`ips`
      self$`os` <- this_object$`os`
      self$`cp` <- this_object$`cp`
      self$`raid` <- this_object$`raid`
      self$`region` <- this_object$`region`
      self$`servername` <- this_object$`servername`
      self$`rootpass` <- this_object$`rootpass`
      self$`tos` <- this_object$`tos`
      self$`comment` <- this_object$`comment`
      self
    },

    #' @description
    #' Validate JSON input with respect to ServerOrderPostRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `cpu`
      if (!is.null(input_json$`cpu`)) {
        if (!(is.numeric(input_json$`cpu`) && length(input_json$`cpu`) == 1)) {
          stop(paste("Error! Invalid data for `cpu`. Must be an integer:", input_json$`cpu`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ServerOrderPostRequest: the required field `cpu` is missing."))
      }
      # check the required field `hd`
      if (!is.null(input_json$`hd`)) {
        stopifnot(R6::is.R6(input_json$`hd`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ServerOrderPostRequest: the required field `hd` is missing."))
      }
      # check the required field `memory`
      if (!is.null(input_json$`memory`)) {
        if (!(is.numeric(input_json$`memory`) && length(input_json$`memory`) == 1)) {
          stop(paste("Error! Invalid data for `memory`. Must be an integer:", input_json$`memory`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ServerOrderPostRequest: the required field `memory` is missing."))
      }
      # check the required field `bandwidth`
      if (!is.null(input_json$`bandwidth`)) {
        if (!(is.numeric(input_json$`bandwidth`) && length(input_json$`bandwidth`) == 1)) {
          stop(paste("Error! Invalid data for `bandwidth`. Must be an integer:", input_json$`bandwidth`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ServerOrderPostRequest: the required field `bandwidth` is missing."))
      }
      # check the required field `ips`
      if (!is.null(input_json$`ips`)) {
        if (!(is.numeric(input_json$`ips`) && length(input_json$`ips`) == 1)) {
          stop(paste("Error! Invalid data for `ips`. Must be an integer:", input_json$`ips`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ServerOrderPostRequest: the required field `ips` is missing."))
      }
      # check the required field `os`
      if (!is.null(input_json$`os`)) {
        if (!(is.numeric(input_json$`os`) && length(input_json$`os`) == 1)) {
          stop(paste("Error! Invalid data for `os`. Must be an integer:", input_json$`os`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ServerOrderPostRequest: the required field `os` is missing."))
      }
      # check the required field `cp`
      if (!is.null(input_json$`cp`)) {
        if (!(is.numeric(input_json$`cp`) && length(input_json$`cp`) == 1)) {
          stop(paste("Error! Invalid data for `cp`. Must be an integer:", input_json$`cp`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ServerOrderPostRequest: the required field `cp` is missing."))
      }
      # check the required field `raid`
      if (!is.null(input_json$`raid`)) {
        if (!(is.numeric(input_json$`raid`) && length(input_json$`raid`) == 1)) {
          stop(paste("Error! Invalid data for `raid`. Must be an integer:", input_json$`raid`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ServerOrderPostRequest: the required field `raid` is missing."))
      }
      # check the required field `region`
      if (!is.null(input_json$`region`)) {
        if (!(is.numeric(input_json$`region`) && length(input_json$`region`) == 1)) {
          stop(paste("Error! Invalid data for `region`. Must be an integer:", input_json$`region`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ServerOrderPostRequest: the required field `region` is missing."))
      }
      # check the required field `servername`
      if (!is.null(input_json$`servername`)) {
        if (!(is.character(input_json$`servername`) && length(input_json$`servername`) == 1)) {
          stop(paste("Error! Invalid data for `servername`. Must be a string:", input_json$`servername`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ServerOrderPostRequest: the required field `servername` is missing."))
      }
      # check the required field `rootpass`
      if (!is.null(input_json$`rootpass`)) {
        if (!(is.character(input_json$`rootpass`) && length(input_json$`rootpass`) == 1)) {
          stop(paste("Error! Invalid data for `rootpass`. Must be a string:", input_json$`rootpass`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ServerOrderPostRequest: the required field `rootpass` is missing."))
      }
      # check the required field `tos`
      if (!is.null(input_json$`tos`)) {
        if (!(is.logical(input_json$`tos`) && length(input_json$`tos`) == 1)) {
          stop(paste("Error! Invalid data for `tos`. Must be a boolean:", input_json$`tos`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ServerOrderPostRequest: the required field `tos` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ServerOrderPostRequest
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `cpu` is null
      if (is.null(self$`cpu`)) {
        return(FALSE)
      }

      # check if the required `hd` is null
      if (is.null(self$`hd`)) {
        return(FALSE)
      }

      # check if the required `memory` is null
      if (is.null(self$`memory`)) {
        return(FALSE)
      }

      # check if the required `bandwidth` is null
      if (is.null(self$`bandwidth`)) {
        return(FALSE)
      }

      # check if the required `ips` is null
      if (is.null(self$`ips`)) {
        return(FALSE)
      }

      # check if the required `os` is null
      if (is.null(self$`os`)) {
        return(FALSE)
      }

      # check if the required `cp` is null
      if (is.null(self$`cp`)) {
        return(FALSE)
      }

      # check if the required `raid` is null
      if (is.null(self$`raid`)) {
        return(FALSE)
      }

      # check if the required `region` is null
      if (is.null(self$`region`)) {
        return(FALSE)
      }

      # check if the required `servername` is null
      if (is.null(self$`servername`)) {
        return(FALSE)
      }

      # check if the required `rootpass` is null
      if (is.null(self$`rootpass`)) {
        return(FALSE)
      }

      # check if the required `tos` is null
      if (is.null(self$`tos`)) {
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
      # check if the required `cpu` is null
      if (is.null(self$`cpu`)) {
        invalid_fields["cpu"] <- "Non-nullable required field `cpu` cannot be null."
      }

      # check if the required `hd` is null
      if (is.null(self$`hd`)) {
        invalid_fields["hd"] <- "Non-nullable required field `hd` cannot be null."
      }

      # check if the required `memory` is null
      if (is.null(self$`memory`)) {
        invalid_fields["memory"] <- "Non-nullable required field `memory` cannot be null."
      }

      # check if the required `bandwidth` is null
      if (is.null(self$`bandwidth`)) {
        invalid_fields["bandwidth"] <- "Non-nullable required field `bandwidth` cannot be null."
      }

      # check if the required `ips` is null
      if (is.null(self$`ips`)) {
        invalid_fields["ips"] <- "Non-nullable required field `ips` cannot be null."
      }

      # check if the required `os` is null
      if (is.null(self$`os`)) {
        invalid_fields["os"] <- "Non-nullable required field `os` cannot be null."
      }

      # check if the required `cp` is null
      if (is.null(self$`cp`)) {
        invalid_fields["cp"] <- "Non-nullable required field `cp` cannot be null."
      }

      # check if the required `raid` is null
      if (is.null(self$`raid`)) {
        invalid_fields["raid"] <- "Non-nullable required field `raid` cannot be null."
      }

      # check if the required `region` is null
      if (is.null(self$`region`)) {
        invalid_fields["region"] <- "Non-nullable required field `region` cannot be null."
      }

      # check if the required `servername` is null
      if (is.null(self$`servername`)) {
        invalid_fields["servername"] <- "Non-nullable required field `servername` cannot be null."
      }

      # check if the required `rootpass` is null
      if (is.null(self$`rootpass`)) {
        invalid_fields["rootpass"] <- "Non-nullable required field `rootpass` cannot be null."
      }

      # check if the required `tos` is null
      if (is.null(self$`tos`)) {
        invalid_fields["tos"] <- "Non-nullable required field `tos` cannot be null."
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
# ServerOrderPostRequest$unlock()
#
## Below is an example to define the print function
# ServerOrderPostRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ServerOrderPostRequest$lock()

