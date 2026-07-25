#' Create a new ServerAsset
#'
#' @description
#' ServerAsset Class
#'
#' @docType class
#' @title ServerAsset
#' @description ServerAsset Class
#' @format An \code{R6Class} generator object
#' @field id Unique identifier for the asset. integer
#' @field order_id Order identifier for the asset. character
#' @field hostname Hostname associated with the asset. character
#' @field status Status of the asset. character
#' @field primary_ipv4 Primary IPv4 address of the asset. character
#' @field primary_ipv6 Primary IPv6 address of the asset. character
#' @field mac MAC address associated with the asset. character [optional]
#' @field datacenter Datacenter identifier for the asset. character
#' @field type_id Type identifier for the asset. character
#' @field asset_tag Asset tag associated with the asset. character
#' @field rack Rack identifier for the asset. character
#' @field row Row identifier for the asset. character
#' @field col Column identifier for the asset. character
#' @field unit_start Starting unit identifier for the asset. character
#' @field unit_end Ending unit identifier for the asset. character
#' @field unit_sub Subunit identifier for the asset. character
#' @field ipmi_mac IPMI MAC address associated with the asset. character
#' @field ipmi_ip IPMI IP address associated with the asset. character
#' @field ipmi_admin_username IPMI admin username associated with the asset. character [optional]
#' @field ipmi_admin_password IPMI admin password associated with the asset. character [optional]
#' @field ipmi_client_username IPMI client username associated with the asset. character [optional]
#' @field ipmi_client_password IPMI client password associated with the asset. character [optional]
#' @field ipmi_updated IPMI update status associated with the asset. character [optional]
#' @field ipmi_working IPMI working status associated with the asset. character
#' @field company Company associated with the asset. character
#' @field comments Comments associated with the asset. character
#' @field make Make of the asset. character
#' @field model Model of the asset. character
#' @field description Description of the asset. character
#' @field customer_id Customer identifier for the asset. character
#' @field external_id External identifier for the asset. character
#' @field billing_status Billing status of the asset. character
#' @field overdue Overdue status of the asset. character
#' @field create_timestamp Timestamp of asset creation. character [optional]
#' @field update_timestamp Timestamp of asset update. character [optional]
#' @field asset_id Asset identifier for the asset. character
#' @field asset_name Name of the asset. character
#' @field rack_id Rack identifier for the asset. character
#' @field rack_name Rack name associated with the asset. character
#' @field rack_location Location of the rack associated with the asset. character
#' @field rack_size Size of the rack associated with the asset. character
#' @field rack_x X-coordinate of the asset within the rack. character
#' @field rack_y Y-coordinate of the asset within the rack. character
#' @field comment Comment associated with the asset. character [optional]
#' @field switchports List of switchports associated with the asset. list(integer)
#' @field vlans List of VLANs associated with the asset. list(character)
#' @field vlans6 List of IPv6 VLANs associated with the asset. list(character)
#' @field lease  \link{ServerLease}
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ServerAsset <- R6::R6Class(
  "ServerAsset",
  public = list(
    `id` = NULL,
    `order_id` = NULL,
    `hostname` = NULL,
    `status` = NULL,
    `primary_ipv4` = NULL,
    `primary_ipv6` = NULL,
    `mac` = NULL,
    `datacenter` = NULL,
    `type_id` = NULL,
    `asset_tag` = NULL,
    `rack` = NULL,
    `row` = NULL,
    `col` = NULL,
    `unit_start` = NULL,
    `unit_end` = NULL,
    `unit_sub` = NULL,
    `ipmi_mac` = NULL,
    `ipmi_ip` = NULL,
    `ipmi_admin_username` = NULL,
    `ipmi_admin_password` = NULL,
    `ipmi_client_username` = NULL,
    `ipmi_client_password` = NULL,
    `ipmi_updated` = NULL,
    `ipmi_working` = NULL,
    `company` = NULL,
    `comments` = NULL,
    `make` = NULL,
    `model` = NULL,
    `description` = NULL,
    `customer_id` = NULL,
    `external_id` = NULL,
    `billing_status` = NULL,
    `overdue` = NULL,
    `create_timestamp` = NULL,
    `update_timestamp` = NULL,
    `asset_id` = NULL,
    `asset_name` = NULL,
    `rack_id` = NULL,
    `rack_name` = NULL,
    `rack_location` = NULL,
    `rack_size` = NULL,
    `rack_x` = NULL,
    `rack_y` = NULL,
    `comment` = NULL,
    `switchports` = NULL,
    `vlans` = NULL,
    `vlans6` = NULL,
    `lease` = NULL,

    #' @description
    #' Initialize a new ServerAsset class.
    #'
    #' @param id Unique identifier for the asset.
    #' @param order_id Order identifier for the asset.
    #' @param hostname Hostname associated with the asset.
    #' @param status Status of the asset.
    #' @param primary_ipv4 Primary IPv4 address of the asset.
    #' @param primary_ipv6 Primary IPv6 address of the asset.
    #' @param datacenter Datacenter identifier for the asset.
    #' @param type_id Type identifier for the asset.
    #' @param asset_tag Asset tag associated with the asset.
    #' @param rack Rack identifier for the asset.
    #' @param row Row identifier for the asset.
    #' @param col Column identifier for the asset.
    #' @param unit_start Starting unit identifier for the asset.
    #' @param unit_end Ending unit identifier for the asset.
    #' @param unit_sub Subunit identifier for the asset.
    #' @param ipmi_mac IPMI MAC address associated with the asset.
    #' @param ipmi_ip IPMI IP address associated with the asset.
    #' @param ipmi_working IPMI working status associated with the asset.
    #' @param company Company associated with the asset.
    #' @param comments Comments associated with the asset.
    #' @param make Make of the asset.
    #' @param model Model of the asset.
    #' @param description Description of the asset.
    #' @param customer_id Customer identifier for the asset.
    #' @param external_id External identifier for the asset.
    #' @param billing_status Billing status of the asset.
    #' @param overdue Overdue status of the asset.
    #' @param asset_id Asset identifier for the asset.
    #' @param asset_name Name of the asset.
    #' @param rack_id Rack identifier for the asset.
    #' @param rack_name Rack name associated with the asset.
    #' @param rack_location Location of the rack associated with the asset.
    #' @param rack_size Size of the rack associated with the asset.
    #' @param rack_x X-coordinate of the asset within the rack.
    #' @param rack_y Y-coordinate of the asset within the rack.
    #' @param switchports List of switchports associated with the asset.
    #' @param vlans List of VLANs associated with the asset.
    #' @param vlans6 List of IPv6 VLANs associated with the asset.
    #' @param lease lease
    #' @param mac MAC address associated with the asset.
    #' @param ipmi_admin_username IPMI admin username associated with the asset.
    #' @param ipmi_admin_password IPMI admin password associated with the asset.
    #' @param ipmi_client_username IPMI client username associated with the asset.
    #' @param ipmi_client_password IPMI client password associated with the asset.
    #' @param ipmi_updated IPMI update status associated with the asset.
    #' @param create_timestamp Timestamp of asset creation.
    #' @param update_timestamp Timestamp of asset update.
    #' @param comment Comment associated with the asset.
    #' @param ... Other optional arguments.
    initialize = function(`id`, `order_id`, `hostname`, `status`, `primary_ipv4`, `primary_ipv6`, `datacenter`, `type_id`, `asset_tag`, `rack`, `row`, `col`, `unit_start`, `unit_end`, `unit_sub`, `ipmi_mac`, `ipmi_ip`, `ipmi_working`, `company`, `comments`, `make`, `model`, `description`, `customer_id`, `external_id`, `billing_status`, `overdue`, `asset_id`, `asset_name`, `rack_id`, `rack_name`, `rack_location`, `rack_size`, `rack_x`, `rack_y`, `switchports`, `vlans`, `vlans6`, `lease`, `mac` = NULL, `ipmi_admin_username` = NULL, `ipmi_admin_password` = NULL, `ipmi_client_username` = NULL, `ipmi_client_password` = NULL, `ipmi_updated` = NULL, `create_timestamp` = NULL, `update_timestamp` = NULL, `comment` = NULL, ...) {
      if (!missing(`id`)) {
        if (!(is.numeric(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", `id`))
        }
        self$`id` <- `id`
      }
      if (!missing(`order_id`)) {
        if (!(is.character(`order_id`) && length(`order_id`) == 1)) {
          stop(paste("Error! Invalid data for `order_id`. Must be a string:", `order_id`))
        }
        self$`order_id` <- `order_id`
      }
      if (!missing(`hostname`)) {
        if (!(is.character(`hostname`) && length(`hostname`) == 1)) {
          stop(paste("Error! Invalid data for `hostname`. Must be a string:", `hostname`))
        }
        self$`hostname` <- `hostname`
      }
      if (!missing(`status`)) {
        if (!(is.character(`status`) && length(`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", `status`))
        }
        self$`status` <- `status`
      }
      if (!missing(`primary_ipv4`)) {
        if (!(is.character(`primary_ipv4`) && length(`primary_ipv4`) == 1)) {
          stop(paste("Error! Invalid data for `primary_ipv4`. Must be a string:", `primary_ipv4`))
        }
        self$`primary_ipv4` <- `primary_ipv4`
      }
      if (!missing(`primary_ipv6`)) {
        if (!(is.character(`primary_ipv6`) && length(`primary_ipv6`) == 1)) {
          stop(paste("Error! Invalid data for `primary_ipv6`. Must be a string:", `primary_ipv6`))
        }
        self$`primary_ipv6` <- `primary_ipv6`
      }
      if (!missing(`datacenter`)) {
        if (!(is.character(`datacenter`) && length(`datacenter`) == 1)) {
          stop(paste("Error! Invalid data for `datacenter`. Must be a string:", `datacenter`))
        }
        self$`datacenter` <- `datacenter`
      }
      if (!missing(`type_id`)) {
        if (!(is.character(`type_id`) && length(`type_id`) == 1)) {
          stop(paste("Error! Invalid data for `type_id`. Must be a string:", `type_id`))
        }
        self$`type_id` <- `type_id`
      }
      if (!missing(`asset_tag`)) {
        if (!(is.character(`asset_tag`) && length(`asset_tag`) == 1)) {
          stop(paste("Error! Invalid data for `asset_tag`. Must be a string:", `asset_tag`))
        }
        self$`asset_tag` <- `asset_tag`
      }
      if (!missing(`rack`)) {
        if (!(is.character(`rack`) && length(`rack`) == 1)) {
          stop(paste("Error! Invalid data for `rack`. Must be a string:", `rack`))
        }
        self$`rack` <- `rack`
      }
      if (!missing(`row`)) {
        if (!(is.character(`row`) && length(`row`) == 1)) {
          stop(paste("Error! Invalid data for `row`. Must be a string:", `row`))
        }
        self$`row` <- `row`
      }
      if (!missing(`col`)) {
        if (!(is.character(`col`) && length(`col`) == 1)) {
          stop(paste("Error! Invalid data for `col`. Must be a string:", `col`))
        }
        self$`col` <- `col`
      }
      if (!missing(`unit_start`)) {
        if (!(is.character(`unit_start`) && length(`unit_start`) == 1)) {
          stop(paste("Error! Invalid data for `unit_start`. Must be a string:", `unit_start`))
        }
        self$`unit_start` <- `unit_start`
      }
      if (!missing(`unit_end`)) {
        if (!(is.character(`unit_end`) && length(`unit_end`) == 1)) {
          stop(paste("Error! Invalid data for `unit_end`. Must be a string:", `unit_end`))
        }
        self$`unit_end` <- `unit_end`
      }
      if (!missing(`unit_sub`)) {
        if (!(is.character(`unit_sub`) && length(`unit_sub`) == 1)) {
          stop(paste("Error! Invalid data for `unit_sub`. Must be a string:", `unit_sub`))
        }
        self$`unit_sub` <- `unit_sub`
      }
      if (!missing(`ipmi_mac`)) {
        if (!(is.character(`ipmi_mac`) && length(`ipmi_mac`) == 1)) {
          stop(paste("Error! Invalid data for `ipmi_mac`. Must be a string:", `ipmi_mac`))
        }
        self$`ipmi_mac` <- `ipmi_mac`
      }
      if (!missing(`ipmi_ip`)) {
        if (!(is.character(`ipmi_ip`) && length(`ipmi_ip`) == 1)) {
          stop(paste("Error! Invalid data for `ipmi_ip`. Must be a string:", `ipmi_ip`))
        }
        self$`ipmi_ip` <- `ipmi_ip`
      }
      if (!missing(`ipmi_working`)) {
        if (!(is.character(`ipmi_working`) && length(`ipmi_working`) == 1)) {
          stop(paste("Error! Invalid data for `ipmi_working`. Must be a string:", `ipmi_working`))
        }
        self$`ipmi_working` <- `ipmi_working`
      }
      if (!missing(`company`)) {
        if (!(is.character(`company`) && length(`company`) == 1)) {
          stop(paste("Error! Invalid data for `company`. Must be a string:", `company`))
        }
        self$`company` <- `company`
      }
      if (!missing(`comments`)) {
        if (!(is.character(`comments`) && length(`comments`) == 1)) {
          stop(paste("Error! Invalid data for `comments`. Must be a string:", `comments`))
        }
        self$`comments` <- `comments`
      }
      if (!missing(`make`)) {
        if (!(is.character(`make`) && length(`make`) == 1)) {
          stop(paste("Error! Invalid data for `make`. Must be a string:", `make`))
        }
        self$`make` <- `make`
      }
      if (!missing(`model`)) {
        if (!(is.character(`model`) && length(`model`) == 1)) {
          stop(paste("Error! Invalid data for `model`. Must be a string:", `model`))
        }
        self$`model` <- `model`
      }
      if (!missing(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!missing(`customer_id`)) {
        if (!(is.character(`customer_id`) && length(`customer_id`) == 1)) {
          stop(paste("Error! Invalid data for `customer_id`. Must be a string:", `customer_id`))
        }
        self$`customer_id` <- `customer_id`
      }
      if (!missing(`external_id`)) {
        if (!(is.character(`external_id`) && length(`external_id`) == 1)) {
          stop(paste("Error! Invalid data for `external_id`. Must be a string:", `external_id`))
        }
        self$`external_id` <- `external_id`
      }
      if (!missing(`billing_status`)) {
        if (!(is.character(`billing_status`) && length(`billing_status`) == 1)) {
          stop(paste("Error! Invalid data for `billing_status`. Must be a string:", `billing_status`))
        }
        self$`billing_status` <- `billing_status`
      }
      if (!missing(`overdue`)) {
        if (!(is.character(`overdue`) && length(`overdue`) == 1)) {
          stop(paste("Error! Invalid data for `overdue`. Must be a string:", `overdue`))
        }
        self$`overdue` <- `overdue`
      }
      if (!missing(`asset_id`)) {
        if (!(is.character(`asset_id`) && length(`asset_id`) == 1)) {
          stop(paste("Error! Invalid data for `asset_id`. Must be a string:", `asset_id`))
        }
        self$`asset_id` <- `asset_id`
      }
      if (!missing(`asset_name`)) {
        if (!(is.character(`asset_name`) && length(`asset_name`) == 1)) {
          stop(paste("Error! Invalid data for `asset_name`. Must be a string:", `asset_name`))
        }
        self$`asset_name` <- `asset_name`
      }
      if (!missing(`rack_id`)) {
        if (!(is.character(`rack_id`) && length(`rack_id`) == 1)) {
          stop(paste("Error! Invalid data for `rack_id`. Must be a string:", `rack_id`))
        }
        self$`rack_id` <- `rack_id`
      }
      if (!missing(`rack_name`)) {
        if (!(is.character(`rack_name`) && length(`rack_name`) == 1)) {
          stop(paste("Error! Invalid data for `rack_name`. Must be a string:", `rack_name`))
        }
        self$`rack_name` <- `rack_name`
      }
      if (!missing(`rack_location`)) {
        if (!(is.character(`rack_location`) && length(`rack_location`) == 1)) {
          stop(paste("Error! Invalid data for `rack_location`. Must be a string:", `rack_location`))
        }
        self$`rack_location` <- `rack_location`
      }
      if (!missing(`rack_size`)) {
        if (!(is.character(`rack_size`) && length(`rack_size`) == 1)) {
          stop(paste("Error! Invalid data for `rack_size`. Must be a string:", `rack_size`))
        }
        self$`rack_size` <- `rack_size`
      }
      if (!missing(`rack_x`)) {
        if (!(is.character(`rack_x`) && length(`rack_x`) == 1)) {
          stop(paste("Error! Invalid data for `rack_x`. Must be a string:", `rack_x`))
        }
        self$`rack_x` <- `rack_x`
      }
      if (!missing(`rack_y`)) {
        if (!(is.character(`rack_y`) && length(`rack_y`) == 1)) {
          stop(paste("Error! Invalid data for `rack_y`. Must be a string:", `rack_y`))
        }
        self$`rack_y` <- `rack_y`
      }
      if (!missing(`switchports`)) {
        stopifnot(is.vector(`switchports`), length(`switchports`) != 0)
        sapply(`switchports`, function(x) stopifnot(is.character(x)))
        self$`switchports` <- `switchports`
      }
      if (!missing(`vlans`)) {
        stopifnot(is.vector(`vlans`), length(`vlans`) != 0)
        sapply(`vlans`, function(x) stopifnot(is.character(x)))
        self$`vlans` <- `vlans`
      }
      if (!missing(`vlans6`)) {
        stopifnot(is.vector(`vlans6`), length(`vlans6`) != 0)
        sapply(`vlans6`, function(x) stopifnot(is.character(x)))
        self$`vlans6` <- `vlans6`
      }
      if (!missing(`lease`)) {
        stopifnot(R6::is.R6(`lease`))
        self$`lease` <- `lease`
      }
      if (!is.null(`mac`)) {
        if (!(is.character(`mac`) && length(`mac`) == 1)) {
          stop(paste("Error! Invalid data for `mac`. Must be a string:", `mac`))
        }
        self$`mac` <- `mac`
      }
      if (!is.null(`ipmi_admin_username`)) {
        if (!(is.character(`ipmi_admin_username`) && length(`ipmi_admin_username`) == 1)) {
          stop(paste("Error! Invalid data for `ipmi_admin_username`. Must be a string:", `ipmi_admin_username`))
        }
        self$`ipmi_admin_username` <- `ipmi_admin_username`
      }
      if (!is.null(`ipmi_admin_password`)) {
        if (!(is.character(`ipmi_admin_password`) && length(`ipmi_admin_password`) == 1)) {
          stop(paste("Error! Invalid data for `ipmi_admin_password`. Must be a string:", `ipmi_admin_password`))
        }
        self$`ipmi_admin_password` <- `ipmi_admin_password`
      }
      if (!is.null(`ipmi_client_username`)) {
        if (!(is.character(`ipmi_client_username`) && length(`ipmi_client_username`) == 1)) {
          stop(paste("Error! Invalid data for `ipmi_client_username`. Must be a string:", `ipmi_client_username`))
        }
        self$`ipmi_client_username` <- `ipmi_client_username`
      }
      if (!is.null(`ipmi_client_password`)) {
        if (!(is.character(`ipmi_client_password`) && length(`ipmi_client_password`) == 1)) {
          stop(paste("Error! Invalid data for `ipmi_client_password`. Must be a string:", `ipmi_client_password`))
        }
        self$`ipmi_client_password` <- `ipmi_client_password`
      }
      if (!is.null(`ipmi_updated`)) {
        if (!(is.character(`ipmi_updated`) && length(`ipmi_updated`) == 1)) {
          stop(paste("Error! Invalid data for `ipmi_updated`. Must be a string:", `ipmi_updated`))
        }
        self$`ipmi_updated` <- `ipmi_updated`
      }
      if (!is.null(`create_timestamp`)) {
        if (!(is.character(`create_timestamp`) && length(`create_timestamp`) == 1)) {
          stop(paste("Error! Invalid data for `create_timestamp`. Must be a string:", `create_timestamp`))
        }
        self$`create_timestamp` <- `create_timestamp`
      }
      if (!is.null(`update_timestamp`)) {
        if (!(is.character(`update_timestamp`) && length(`update_timestamp`) == 1)) {
          stop(paste("Error! Invalid data for `update_timestamp`. Must be a string:", `update_timestamp`))
        }
        self$`update_timestamp` <- `update_timestamp`
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
    #' @return ServerAsset as a base R list.
    #' @examples
    #' # convert array of ServerAsset (x) to a data frame
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
    #' Convert ServerAsset to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ServerAssetObject <- list()
      if (!is.null(self$`id`)) {
        ServerAssetObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`order_id`)) {
        ServerAssetObject[["order_id"]] <-
          self$`order_id`
      }
      if (!is.null(self$`hostname`)) {
        ServerAssetObject[["hostname"]] <-
          self$`hostname`
      }
      if (!is.null(self$`status`)) {
        ServerAssetObject[["status"]] <-
          self$`status`
      }
      if (!is.null(self$`primary_ipv4`)) {
        ServerAssetObject[["primary_ipv4"]] <-
          self$`primary_ipv4`
      }
      if (!is.null(self$`primary_ipv6`)) {
        ServerAssetObject[["primary_ipv6"]] <-
          self$`primary_ipv6`
      }
      if (!is.null(self$`mac`)) {
        ServerAssetObject[["mac"]] <-
          self$`mac`
      }
      if (!is.null(self$`datacenter`)) {
        ServerAssetObject[["datacenter"]] <-
          self$`datacenter`
      }
      if (!is.null(self$`type_id`)) {
        ServerAssetObject[["type_id"]] <-
          self$`type_id`
      }
      if (!is.null(self$`asset_tag`)) {
        ServerAssetObject[["asset_tag"]] <-
          self$`asset_tag`
      }
      if (!is.null(self$`rack`)) {
        ServerAssetObject[["rack"]] <-
          self$`rack`
      }
      if (!is.null(self$`row`)) {
        ServerAssetObject[["row"]] <-
          self$`row`
      }
      if (!is.null(self$`col`)) {
        ServerAssetObject[["col"]] <-
          self$`col`
      }
      if (!is.null(self$`unit_start`)) {
        ServerAssetObject[["unit_start"]] <-
          self$`unit_start`
      }
      if (!is.null(self$`unit_end`)) {
        ServerAssetObject[["unit_end"]] <-
          self$`unit_end`
      }
      if (!is.null(self$`unit_sub`)) {
        ServerAssetObject[["unit_sub"]] <-
          self$`unit_sub`
      }
      if (!is.null(self$`ipmi_mac`)) {
        ServerAssetObject[["ipmi_mac"]] <-
          self$`ipmi_mac`
      }
      if (!is.null(self$`ipmi_ip`)) {
        ServerAssetObject[["ipmi_ip"]] <-
          self$`ipmi_ip`
      }
      if (!is.null(self$`ipmi_admin_username`)) {
        ServerAssetObject[["ipmi_admin_username"]] <-
          self$`ipmi_admin_username`
      }
      if (!is.null(self$`ipmi_admin_password`)) {
        ServerAssetObject[["ipmi_admin_password"]] <-
          self$`ipmi_admin_password`
      }
      if (!is.null(self$`ipmi_client_username`)) {
        ServerAssetObject[["ipmi_client_username"]] <-
          self$`ipmi_client_username`
      }
      if (!is.null(self$`ipmi_client_password`)) {
        ServerAssetObject[["ipmi_client_password"]] <-
          self$`ipmi_client_password`
      }
      if (!is.null(self$`ipmi_updated`)) {
        ServerAssetObject[["ipmi_updated"]] <-
          self$`ipmi_updated`
      }
      if (!is.null(self$`ipmi_working`)) {
        ServerAssetObject[["ipmi_working"]] <-
          self$`ipmi_working`
      }
      if (!is.null(self$`company`)) {
        ServerAssetObject[["company"]] <-
          self$`company`
      }
      if (!is.null(self$`comments`)) {
        ServerAssetObject[["comments"]] <-
          self$`comments`
      }
      if (!is.null(self$`make`)) {
        ServerAssetObject[["make"]] <-
          self$`make`
      }
      if (!is.null(self$`model`)) {
        ServerAssetObject[["model"]] <-
          self$`model`
      }
      if (!is.null(self$`description`)) {
        ServerAssetObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`customer_id`)) {
        ServerAssetObject[["customer_id"]] <-
          self$`customer_id`
      }
      if (!is.null(self$`external_id`)) {
        ServerAssetObject[["external_id"]] <-
          self$`external_id`
      }
      if (!is.null(self$`billing_status`)) {
        ServerAssetObject[["billing_status"]] <-
          self$`billing_status`
      }
      if (!is.null(self$`overdue`)) {
        ServerAssetObject[["overdue"]] <-
          self$`overdue`
      }
      if (!is.null(self$`create_timestamp`)) {
        ServerAssetObject[["create_timestamp"]] <-
          self$`create_timestamp`
      }
      if (!is.null(self$`update_timestamp`)) {
        ServerAssetObject[["update_timestamp"]] <-
          self$`update_timestamp`
      }
      if (!is.null(self$`asset_id`)) {
        ServerAssetObject[["asset_id"]] <-
          self$`asset_id`
      }
      if (!is.null(self$`asset_name`)) {
        ServerAssetObject[["asset_name"]] <-
          self$`asset_name`
      }
      if (!is.null(self$`rack_id`)) {
        ServerAssetObject[["rack_id"]] <-
          self$`rack_id`
      }
      if (!is.null(self$`rack_name`)) {
        ServerAssetObject[["rack_name"]] <-
          self$`rack_name`
      }
      if (!is.null(self$`rack_location`)) {
        ServerAssetObject[["rack_location"]] <-
          self$`rack_location`
      }
      if (!is.null(self$`rack_size`)) {
        ServerAssetObject[["rack_size"]] <-
          self$`rack_size`
      }
      if (!is.null(self$`rack_x`)) {
        ServerAssetObject[["rack_x"]] <-
          self$`rack_x`
      }
      if (!is.null(self$`rack_y`)) {
        ServerAssetObject[["rack_y"]] <-
          self$`rack_y`
      }
      if (!is.null(self$`comment`)) {
        ServerAssetObject[["comment"]] <-
          self$`comment`
      }
      if (!is.null(self$`switchports`)) {
        ServerAssetObject[["switchports"]] <-
          self$`switchports`
      }
      if (!is.null(self$`vlans`)) {
        ServerAssetObject[["vlans"]] <-
          self$`vlans`
      }
      if (!is.null(self$`vlans6`)) {
        ServerAssetObject[["vlans6"]] <-
          self$`vlans6`
      }
      if (!is.null(self$`lease`)) {
        ServerAssetObject[["lease"]] <-
          self$extractSimpleType(self$`lease`)
      }
      return(ServerAssetObject)
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
    #' Deserialize JSON string into an instance of ServerAsset
    #'
    #' @param input_json the JSON input
    #' @return the instance of ServerAsset
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`order_id`)) {
        self$`order_id` <- this_object$`order_id`
      }
      if (!is.null(this_object$`hostname`)) {
        self$`hostname` <- this_object$`hostname`
      }
      if (!is.null(this_object$`status`)) {
        self$`status` <- this_object$`status`
      }
      if (!is.null(this_object$`primary_ipv4`)) {
        self$`primary_ipv4` <- this_object$`primary_ipv4`
      }
      if (!is.null(this_object$`primary_ipv6`)) {
        self$`primary_ipv6` <- this_object$`primary_ipv6`
      }
      if (!is.null(this_object$`mac`)) {
        self$`mac` <- this_object$`mac`
      }
      if (!is.null(this_object$`datacenter`)) {
        self$`datacenter` <- this_object$`datacenter`
      }
      if (!is.null(this_object$`type_id`)) {
        self$`type_id` <- this_object$`type_id`
      }
      if (!is.null(this_object$`asset_tag`)) {
        self$`asset_tag` <- this_object$`asset_tag`
      }
      if (!is.null(this_object$`rack`)) {
        self$`rack` <- this_object$`rack`
      }
      if (!is.null(this_object$`row`)) {
        self$`row` <- this_object$`row`
      }
      if (!is.null(this_object$`col`)) {
        self$`col` <- this_object$`col`
      }
      if (!is.null(this_object$`unit_start`)) {
        self$`unit_start` <- this_object$`unit_start`
      }
      if (!is.null(this_object$`unit_end`)) {
        self$`unit_end` <- this_object$`unit_end`
      }
      if (!is.null(this_object$`unit_sub`)) {
        self$`unit_sub` <- this_object$`unit_sub`
      }
      if (!is.null(this_object$`ipmi_mac`)) {
        self$`ipmi_mac` <- this_object$`ipmi_mac`
      }
      if (!is.null(this_object$`ipmi_ip`)) {
        self$`ipmi_ip` <- this_object$`ipmi_ip`
      }
      if (!is.null(this_object$`ipmi_admin_username`)) {
        self$`ipmi_admin_username` <- this_object$`ipmi_admin_username`
      }
      if (!is.null(this_object$`ipmi_admin_password`)) {
        self$`ipmi_admin_password` <- this_object$`ipmi_admin_password`
      }
      if (!is.null(this_object$`ipmi_client_username`)) {
        self$`ipmi_client_username` <- this_object$`ipmi_client_username`
      }
      if (!is.null(this_object$`ipmi_client_password`)) {
        self$`ipmi_client_password` <- this_object$`ipmi_client_password`
      }
      if (!is.null(this_object$`ipmi_updated`)) {
        self$`ipmi_updated` <- this_object$`ipmi_updated`
      }
      if (!is.null(this_object$`ipmi_working`)) {
        self$`ipmi_working` <- this_object$`ipmi_working`
      }
      if (!is.null(this_object$`company`)) {
        self$`company` <- this_object$`company`
      }
      if (!is.null(this_object$`comments`)) {
        self$`comments` <- this_object$`comments`
      }
      if (!is.null(this_object$`make`)) {
        self$`make` <- this_object$`make`
      }
      if (!is.null(this_object$`model`)) {
        self$`model` <- this_object$`model`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`customer_id`)) {
        self$`customer_id` <- this_object$`customer_id`
      }
      if (!is.null(this_object$`external_id`)) {
        self$`external_id` <- this_object$`external_id`
      }
      if (!is.null(this_object$`billing_status`)) {
        self$`billing_status` <- this_object$`billing_status`
      }
      if (!is.null(this_object$`overdue`)) {
        self$`overdue` <- this_object$`overdue`
      }
      if (!is.null(this_object$`create_timestamp`)) {
        self$`create_timestamp` <- this_object$`create_timestamp`
      }
      if (!is.null(this_object$`update_timestamp`)) {
        self$`update_timestamp` <- this_object$`update_timestamp`
      }
      if (!is.null(this_object$`asset_id`)) {
        self$`asset_id` <- this_object$`asset_id`
      }
      if (!is.null(this_object$`asset_name`)) {
        self$`asset_name` <- this_object$`asset_name`
      }
      if (!is.null(this_object$`rack_id`)) {
        self$`rack_id` <- this_object$`rack_id`
      }
      if (!is.null(this_object$`rack_name`)) {
        self$`rack_name` <- this_object$`rack_name`
      }
      if (!is.null(this_object$`rack_location`)) {
        self$`rack_location` <- this_object$`rack_location`
      }
      if (!is.null(this_object$`rack_size`)) {
        self$`rack_size` <- this_object$`rack_size`
      }
      if (!is.null(this_object$`rack_x`)) {
        self$`rack_x` <- this_object$`rack_x`
      }
      if (!is.null(this_object$`rack_y`)) {
        self$`rack_y` <- this_object$`rack_y`
      }
      if (!is.null(this_object$`comment`)) {
        self$`comment` <- this_object$`comment`
      }
      if (!is.null(this_object$`switchports`)) {
        self$`switchports` <- ApiClient$new()$deserializeObj(this_object$`switchports`, "array[integer]", loadNamespace("interserverapi"))
      }
      if (!is.null(this_object$`vlans`)) {
        self$`vlans` <- ApiClient$new()$deserializeObj(this_object$`vlans`, "array[character]", loadNamespace("interserverapi"))
      }
      if (!is.null(this_object$`vlans6`)) {
        self$`vlans6` <- ApiClient$new()$deserializeObj(this_object$`vlans6`, "array[character]", loadNamespace("interserverapi"))
      }
      if (!is.null(this_object$`lease`)) {
        `lease_object` <- ServerLease$new()
        `lease_object`$fromJSON(jsonlite::toJSON(this_object$`lease`, auto_unbox = TRUE, digits = NA))
        self$`lease` <- `lease_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ServerAsset in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ServerAsset
    #'
    #' @param input_json the JSON input
    #' @return the instance of ServerAsset
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`order_id` <- this_object$`order_id`
      self$`hostname` <- this_object$`hostname`
      self$`status` <- this_object$`status`
      self$`primary_ipv4` <- this_object$`primary_ipv4`
      self$`primary_ipv6` <- this_object$`primary_ipv6`
      self$`mac` <- this_object$`mac`
      self$`datacenter` <- this_object$`datacenter`
      self$`type_id` <- this_object$`type_id`
      self$`asset_tag` <- this_object$`asset_tag`
      self$`rack` <- this_object$`rack`
      self$`row` <- this_object$`row`
      self$`col` <- this_object$`col`
      self$`unit_start` <- this_object$`unit_start`
      self$`unit_end` <- this_object$`unit_end`
      self$`unit_sub` <- this_object$`unit_sub`
      self$`ipmi_mac` <- this_object$`ipmi_mac`
      self$`ipmi_ip` <- this_object$`ipmi_ip`
      self$`ipmi_admin_username` <- this_object$`ipmi_admin_username`
      self$`ipmi_admin_password` <- this_object$`ipmi_admin_password`
      self$`ipmi_client_username` <- this_object$`ipmi_client_username`
      self$`ipmi_client_password` <- this_object$`ipmi_client_password`
      self$`ipmi_updated` <- this_object$`ipmi_updated`
      self$`ipmi_working` <- this_object$`ipmi_working`
      self$`company` <- this_object$`company`
      self$`comments` <- this_object$`comments`
      self$`make` <- this_object$`make`
      self$`model` <- this_object$`model`
      self$`description` <- this_object$`description`
      self$`customer_id` <- this_object$`customer_id`
      self$`external_id` <- this_object$`external_id`
      self$`billing_status` <- this_object$`billing_status`
      self$`overdue` <- this_object$`overdue`
      self$`create_timestamp` <- this_object$`create_timestamp`
      self$`update_timestamp` <- this_object$`update_timestamp`
      self$`asset_id` <- this_object$`asset_id`
      self$`asset_name` <- this_object$`asset_name`
      self$`rack_id` <- this_object$`rack_id`
      self$`rack_name` <- this_object$`rack_name`
      self$`rack_location` <- this_object$`rack_location`
      self$`rack_size` <- this_object$`rack_size`
      self$`rack_x` <- this_object$`rack_x`
      self$`rack_y` <- this_object$`rack_y`
      self$`comment` <- this_object$`comment`
      self$`switchports` <- ApiClient$new()$deserializeObj(this_object$`switchports`, "array[integer]", loadNamespace("interserverapi"))
      self$`vlans` <- ApiClient$new()$deserializeObj(this_object$`vlans`, "array[character]", loadNamespace("interserverapi"))
      self$`vlans6` <- ApiClient$new()$deserializeObj(this_object$`vlans6`, "array[character]", loadNamespace("interserverapi"))
      self$`lease` <- ServerLease$new()$fromJSON(jsonlite::toJSON(this_object$`lease`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to ServerAsset and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `id`
      if (!is.null(input_json$`id`)) {
        if (!(is.numeric(input_json$`id`) && length(input_json$`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", input_json$`id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ServerAsset: the required field `id` is missing."))
      }
      # check the required field `order_id`
      if (!is.null(input_json$`order_id`)) {
        if (!(is.character(input_json$`order_id`) && length(input_json$`order_id`) == 1)) {
          stop(paste("Error! Invalid data for `order_id`. Must be a string:", input_json$`order_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ServerAsset: the required field `order_id` is missing."))
      }
      # check the required field `hostname`
      if (!is.null(input_json$`hostname`)) {
        if (!(is.character(input_json$`hostname`) && length(input_json$`hostname`) == 1)) {
          stop(paste("Error! Invalid data for `hostname`. Must be a string:", input_json$`hostname`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ServerAsset: the required field `hostname` is missing."))
      }
      # check the required field `status`
      if (!is.null(input_json$`status`)) {
        if (!(is.character(input_json$`status`) && length(input_json$`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", input_json$`status`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ServerAsset: the required field `status` is missing."))
      }
      # check the required field `primary_ipv4`
      if (!is.null(input_json$`primary_ipv4`)) {
        if (!(is.character(input_json$`primary_ipv4`) && length(input_json$`primary_ipv4`) == 1)) {
          stop(paste("Error! Invalid data for `primary_ipv4`. Must be a string:", input_json$`primary_ipv4`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ServerAsset: the required field `primary_ipv4` is missing."))
      }
      # check the required field `primary_ipv6`
      if (!is.null(input_json$`primary_ipv6`)) {
        if (!(is.character(input_json$`primary_ipv6`) && length(input_json$`primary_ipv6`) == 1)) {
          stop(paste("Error! Invalid data for `primary_ipv6`. Must be a string:", input_json$`primary_ipv6`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ServerAsset: the required field `primary_ipv6` is missing."))
      }
      # check the required field `datacenter`
      if (!is.null(input_json$`datacenter`)) {
        if (!(is.character(input_json$`datacenter`) && length(input_json$`datacenter`) == 1)) {
          stop(paste("Error! Invalid data for `datacenter`. Must be a string:", input_json$`datacenter`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ServerAsset: the required field `datacenter` is missing."))
      }
      # check the required field `type_id`
      if (!is.null(input_json$`type_id`)) {
        if (!(is.character(input_json$`type_id`) && length(input_json$`type_id`) == 1)) {
          stop(paste("Error! Invalid data for `type_id`. Must be a string:", input_json$`type_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ServerAsset: the required field `type_id` is missing."))
      }
      # check the required field `asset_tag`
      if (!is.null(input_json$`asset_tag`)) {
        if (!(is.character(input_json$`asset_tag`) && length(input_json$`asset_tag`) == 1)) {
          stop(paste("Error! Invalid data for `asset_tag`. Must be a string:", input_json$`asset_tag`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ServerAsset: the required field `asset_tag` is missing."))
      }
      # check the required field `rack`
      if (!is.null(input_json$`rack`)) {
        if (!(is.character(input_json$`rack`) && length(input_json$`rack`) == 1)) {
          stop(paste("Error! Invalid data for `rack`. Must be a string:", input_json$`rack`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ServerAsset: the required field `rack` is missing."))
      }
      # check the required field `row`
      if (!is.null(input_json$`row`)) {
        if (!(is.character(input_json$`row`) && length(input_json$`row`) == 1)) {
          stop(paste("Error! Invalid data for `row`. Must be a string:", input_json$`row`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ServerAsset: the required field `row` is missing."))
      }
      # check the required field `col`
      if (!is.null(input_json$`col`)) {
        if (!(is.character(input_json$`col`) && length(input_json$`col`) == 1)) {
          stop(paste("Error! Invalid data for `col`. Must be a string:", input_json$`col`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ServerAsset: the required field `col` is missing."))
      }
      # check the required field `unit_start`
      if (!is.null(input_json$`unit_start`)) {
        if (!(is.character(input_json$`unit_start`) && length(input_json$`unit_start`) == 1)) {
          stop(paste("Error! Invalid data for `unit_start`. Must be a string:", input_json$`unit_start`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ServerAsset: the required field `unit_start` is missing."))
      }
      # check the required field `unit_end`
      if (!is.null(input_json$`unit_end`)) {
        if (!(is.character(input_json$`unit_end`) && length(input_json$`unit_end`) == 1)) {
          stop(paste("Error! Invalid data for `unit_end`. Must be a string:", input_json$`unit_end`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ServerAsset: the required field `unit_end` is missing."))
      }
      # check the required field `unit_sub`
      if (!is.null(input_json$`unit_sub`)) {
        if (!(is.character(input_json$`unit_sub`) && length(input_json$`unit_sub`) == 1)) {
          stop(paste("Error! Invalid data for `unit_sub`. Must be a string:", input_json$`unit_sub`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ServerAsset: the required field `unit_sub` is missing."))
      }
      # check the required field `ipmi_mac`
      if (!is.null(input_json$`ipmi_mac`)) {
        if (!(is.character(input_json$`ipmi_mac`) && length(input_json$`ipmi_mac`) == 1)) {
          stop(paste("Error! Invalid data for `ipmi_mac`. Must be a string:", input_json$`ipmi_mac`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ServerAsset: the required field `ipmi_mac` is missing."))
      }
      # check the required field `ipmi_ip`
      if (!is.null(input_json$`ipmi_ip`)) {
        if (!(is.character(input_json$`ipmi_ip`) && length(input_json$`ipmi_ip`) == 1)) {
          stop(paste("Error! Invalid data for `ipmi_ip`. Must be a string:", input_json$`ipmi_ip`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ServerAsset: the required field `ipmi_ip` is missing."))
      }
      # check the required field `ipmi_working`
      if (!is.null(input_json$`ipmi_working`)) {
        if (!(is.character(input_json$`ipmi_working`) && length(input_json$`ipmi_working`) == 1)) {
          stop(paste("Error! Invalid data for `ipmi_working`. Must be a string:", input_json$`ipmi_working`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ServerAsset: the required field `ipmi_working` is missing."))
      }
      # check the required field `company`
      if (!is.null(input_json$`company`)) {
        if (!(is.character(input_json$`company`) && length(input_json$`company`) == 1)) {
          stop(paste("Error! Invalid data for `company`. Must be a string:", input_json$`company`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ServerAsset: the required field `company` is missing."))
      }
      # check the required field `comments`
      if (!is.null(input_json$`comments`)) {
        if (!(is.character(input_json$`comments`) && length(input_json$`comments`) == 1)) {
          stop(paste("Error! Invalid data for `comments`. Must be a string:", input_json$`comments`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ServerAsset: the required field `comments` is missing."))
      }
      # check the required field `make`
      if (!is.null(input_json$`make`)) {
        if (!(is.character(input_json$`make`) && length(input_json$`make`) == 1)) {
          stop(paste("Error! Invalid data for `make`. Must be a string:", input_json$`make`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ServerAsset: the required field `make` is missing."))
      }
      # check the required field `model`
      if (!is.null(input_json$`model`)) {
        if (!(is.character(input_json$`model`) && length(input_json$`model`) == 1)) {
          stop(paste("Error! Invalid data for `model`. Must be a string:", input_json$`model`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ServerAsset: the required field `model` is missing."))
      }
      # check the required field `description`
      if (!is.null(input_json$`description`)) {
        if (!(is.character(input_json$`description`) && length(input_json$`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", input_json$`description`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ServerAsset: the required field `description` is missing."))
      }
      # check the required field `customer_id`
      if (!is.null(input_json$`customer_id`)) {
        if (!(is.character(input_json$`customer_id`) && length(input_json$`customer_id`) == 1)) {
          stop(paste("Error! Invalid data for `customer_id`. Must be a string:", input_json$`customer_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ServerAsset: the required field `customer_id` is missing."))
      }
      # check the required field `external_id`
      if (!is.null(input_json$`external_id`)) {
        if (!(is.character(input_json$`external_id`) && length(input_json$`external_id`) == 1)) {
          stop(paste("Error! Invalid data for `external_id`. Must be a string:", input_json$`external_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ServerAsset: the required field `external_id` is missing."))
      }
      # check the required field `billing_status`
      if (!is.null(input_json$`billing_status`)) {
        if (!(is.character(input_json$`billing_status`) && length(input_json$`billing_status`) == 1)) {
          stop(paste("Error! Invalid data for `billing_status`. Must be a string:", input_json$`billing_status`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ServerAsset: the required field `billing_status` is missing."))
      }
      # check the required field `overdue`
      if (!is.null(input_json$`overdue`)) {
        if (!(is.character(input_json$`overdue`) && length(input_json$`overdue`) == 1)) {
          stop(paste("Error! Invalid data for `overdue`. Must be a string:", input_json$`overdue`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ServerAsset: the required field `overdue` is missing."))
      }
      # check the required field `asset_id`
      if (!is.null(input_json$`asset_id`)) {
        if (!(is.character(input_json$`asset_id`) && length(input_json$`asset_id`) == 1)) {
          stop(paste("Error! Invalid data for `asset_id`. Must be a string:", input_json$`asset_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ServerAsset: the required field `asset_id` is missing."))
      }
      # check the required field `asset_name`
      if (!is.null(input_json$`asset_name`)) {
        if (!(is.character(input_json$`asset_name`) && length(input_json$`asset_name`) == 1)) {
          stop(paste("Error! Invalid data for `asset_name`. Must be a string:", input_json$`asset_name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ServerAsset: the required field `asset_name` is missing."))
      }
      # check the required field `rack_id`
      if (!is.null(input_json$`rack_id`)) {
        if (!(is.character(input_json$`rack_id`) && length(input_json$`rack_id`) == 1)) {
          stop(paste("Error! Invalid data for `rack_id`. Must be a string:", input_json$`rack_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ServerAsset: the required field `rack_id` is missing."))
      }
      # check the required field `rack_name`
      if (!is.null(input_json$`rack_name`)) {
        if (!(is.character(input_json$`rack_name`) && length(input_json$`rack_name`) == 1)) {
          stop(paste("Error! Invalid data for `rack_name`. Must be a string:", input_json$`rack_name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ServerAsset: the required field `rack_name` is missing."))
      }
      # check the required field `rack_location`
      if (!is.null(input_json$`rack_location`)) {
        if (!(is.character(input_json$`rack_location`) && length(input_json$`rack_location`) == 1)) {
          stop(paste("Error! Invalid data for `rack_location`. Must be a string:", input_json$`rack_location`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ServerAsset: the required field `rack_location` is missing."))
      }
      # check the required field `rack_size`
      if (!is.null(input_json$`rack_size`)) {
        if (!(is.character(input_json$`rack_size`) && length(input_json$`rack_size`) == 1)) {
          stop(paste("Error! Invalid data for `rack_size`. Must be a string:", input_json$`rack_size`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ServerAsset: the required field `rack_size` is missing."))
      }
      # check the required field `rack_x`
      if (!is.null(input_json$`rack_x`)) {
        if (!(is.character(input_json$`rack_x`) && length(input_json$`rack_x`) == 1)) {
          stop(paste("Error! Invalid data for `rack_x`. Must be a string:", input_json$`rack_x`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ServerAsset: the required field `rack_x` is missing."))
      }
      # check the required field `rack_y`
      if (!is.null(input_json$`rack_y`)) {
        if (!(is.character(input_json$`rack_y`) && length(input_json$`rack_y`) == 1)) {
          stop(paste("Error! Invalid data for `rack_y`. Must be a string:", input_json$`rack_y`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ServerAsset: the required field `rack_y` is missing."))
      }
      # check the required field `switchports`
      if (!is.null(input_json$`switchports`)) {
        stopifnot(is.vector(input_json$`switchports`), length(input_json$`switchports`) != 0)
        tmp <- sapply(input_json$`switchports`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ServerAsset: the required field `switchports` is missing."))
      }
      # check the required field `vlans`
      if (!is.null(input_json$`vlans`)) {
        stopifnot(is.vector(input_json$`vlans`), length(input_json$`vlans`) != 0)
        tmp <- sapply(input_json$`vlans`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ServerAsset: the required field `vlans` is missing."))
      }
      # check the required field `vlans6`
      if (!is.null(input_json$`vlans6`)) {
        stopifnot(is.vector(input_json$`vlans6`), length(input_json$`vlans6`) != 0)
        tmp <- sapply(input_json$`vlans6`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ServerAsset: the required field `vlans6` is missing."))
      }
      # check the required field `lease`
      if (!is.null(input_json$`lease`)) {
        stopifnot(R6::is.R6(input_json$`lease`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ServerAsset: the required field `lease` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ServerAsset
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `id` is null
      if (is.null(self$`id`)) {
        return(FALSE)
      }

      # check if the required `order_id` is null
      if (is.null(self$`order_id`)) {
        return(FALSE)
      }

      # check if the required `hostname` is null
      if (is.null(self$`hostname`)) {
        return(FALSE)
      }

      # check if the required `status` is null
      if (is.null(self$`status`)) {
        return(FALSE)
      }

      # check if the required `primary_ipv4` is null
      if (is.null(self$`primary_ipv4`)) {
        return(FALSE)
      }

      # check if the required `primary_ipv6` is null
      if (is.null(self$`primary_ipv6`)) {
        return(FALSE)
      }

      # check if the required `datacenter` is null
      if (is.null(self$`datacenter`)) {
        return(FALSE)
      }

      # check if the required `type_id` is null
      if (is.null(self$`type_id`)) {
        return(FALSE)
      }

      # check if the required `asset_tag` is null
      if (is.null(self$`asset_tag`)) {
        return(FALSE)
      }

      # check if the required `rack` is null
      if (is.null(self$`rack`)) {
        return(FALSE)
      }

      # check if the required `row` is null
      if (is.null(self$`row`)) {
        return(FALSE)
      }

      # check if the required `col` is null
      if (is.null(self$`col`)) {
        return(FALSE)
      }

      # check if the required `unit_start` is null
      if (is.null(self$`unit_start`)) {
        return(FALSE)
      }

      # check if the required `unit_end` is null
      if (is.null(self$`unit_end`)) {
        return(FALSE)
      }

      # check if the required `unit_sub` is null
      if (is.null(self$`unit_sub`)) {
        return(FALSE)
      }

      # check if the required `ipmi_mac` is null
      if (is.null(self$`ipmi_mac`)) {
        return(FALSE)
      }

      # check if the required `ipmi_ip` is null
      if (is.null(self$`ipmi_ip`)) {
        return(FALSE)
      }

      # check if the required `ipmi_working` is null
      if (is.null(self$`ipmi_working`)) {
        return(FALSE)
      }

      # check if the required `company` is null
      if (is.null(self$`company`)) {
        return(FALSE)
      }

      # check if the required `comments` is null
      if (is.null(self$`comments`)) {
        return(FALSE)
      }

      # check if the required `make` is null
      if (is.null(self$`make`)) {
        return(FALSE)
      }

      # check if the required `model` is null
      if (is.null(self$`model`)) {
        return(FALSE)
      }

      # check if the required `description` is null
      if (is.null(self$`description`)) {
        return(FALSE)
      }

      # check if the required `customer_id` is null
      if (is.null(self$`customer_id`)) {
        return(FALSE)
      }

      # check if the required `external_id` is null
      if (is.null(self$`external_id`)) {
        return(FALSE)
      }

      # check if the required `billing_status` is null
      if (is.null(self$`billing_status`)) {
        return(FALSE)
      }

      # check if the required `overdue` is null
      if (is.null(self$`overdue`)) {
        return(FALSE)
      }

      # check if the required `asset_id` is null
      if (is.null(self$`asset_id`)) {
        return(FALSE)
      }

      # check if the required `asset_name` is null
      if (is.null(self$`asset_name`)) {
        return(FALSE)
      }

      # check if the required `rack_id` is null
      if (is.null(self$`rack_id`)) {
        return(FALSE)
      }

      # check if the required `rack_name` is null
      if (is.null(self$`rack_name`)) {
        return(FALSE)
      }

      # check if the required `rack_location` is null
      if (is.null(self$`rack_location`)) {
        return(FALSE)
      }

      # check if the required `rack_size` is null
      if (is.null(self$`rack_size`)) {
        return(FALSE)
      }

      # check if the required `rack_x` is null
      if (is.null(self$`rack_x`)) {
        return(FALSE)
      }

      # check if the required `rack_y` is null
      if (is.null(self$`rack_y`)) {
        return(FALSE)
      }

      # check if the required `switchports` is null
      if (is.null(self$`switchports`)) {
        return(FALSE)
      }

      # check if the required `vlans` is null
      if (is.null(self$`vlans`)) {
        return(FALSE)
      }

      # check if the required `vlans6` is null
      if (is.null(self$`vlans6`)) {
        return(FALSE)
      }

      # check if the required `lease` is null
      if (is.null(self$`lease`)) {
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
      # check if the required `id` is null
      if (is.null(self$`id`)) {
        invalid_fields["id"] <- "Non-nullable required field `id` cannot be null."
      }

      # check if the required `order_id` is null
      if (is.null(self$`order_id`)) {
        invalid_fields["order_id"] <- "Non-nullable required field `order_id` cannot be null."
      }

      # check if the required `hostname` is null
      if (is.null(self$`hostname`)) {
        invalid_fields["hostname"] <- "Non-nullable required field `hostname` cannot be null."
      }

      # check if the required `status` is null
      if (is.null(self$`status`)) {
        invalid_fields["status"] <- "Non-nullable required field `status` cannot be null."
      }

      # check if the required `primary_ipv4` is null
      if (is.null(self$`primary_ipv4`)) {
        invalid_fields["primary_ipv4"] <- "Non-nullable required field `primary_ipv4` cannot be null."
      }

      # check if the required `primary_ipv6` is null
      if (is.null(self$`primary_ipv6`)) {
        invalid_fields["primary_ipv6"] <- "Non-nullable required field `primary_ipv6` cannot be null."
      }

      # check if the required `datacenter` is null
      if (is.null(self$`datacenter`)) {
        invalid_fields["datacenter"] <- "Non-nullable required field `datacenter` cannot be null."
      }

      # check if the required `type_id` is null
      if (is.null(self$`type_id`)) {
        invalid_fields["type_id"] <- "Non-nullable required field `type_id` cannot be null."
      }

      # check if the required `asset_tag` is null
      if (is.null(self$`asset_tag`)) {
        invalid_fields["asset_tag"] <- "Non-nullable required field `asset_tag` cannot be null."
      }

      # check if the required `rack` is null
      if (is.null(self$`rack`)) {
        invalid_fields["rack"] <- "Non-nullable required field `rack` cannot be null."
      }

      # check if the required `row` is null
      if (is.null(self$`row`)) {
        invalid_fields["row"] <- "Non-nullable required field `row` cannot be null."
      }

      # check if the required `col` is null
      if (is.null(self$`col`)) {
        invalid_fields["col"] <- "Non-nullable required field `col` cannot be null."
      }

      # check if the required `unit_start` is null
      if (is.null(self$`unit_start`)) {
        invalid_fields["unit_start"] <- "Non-nullable required field `unit_start` cannot be null."
      }

      # check if the required `unit_end` is null
      if (is.null(self$`unit_end`)) {
        invalid_fields["unit_end"] <- "Non-nullable required field `unit_end` cannot be null."
      }

      # check if the required `unit_sub` is null
      if (is.null(self$`unit_sub`)) {
        invalid_fields["unit_sub"] <- "Non-nullable required field `unit_sub` cannot be null."
      }

      # check if the required `ipmi_mac` is null
      if (is.null(self$`ipmi_mac`)) {
        invalid_fields["ipmi_mac"] <- "Non-nullable required field `ipmi_mac` cannot be null."
      }

      # check if the required `ipmi_ip` is null
      if (is.null(self$`ipmi_ip`)) {
        invalid_fields["ipmi_ip"] <- "Non-nullable required field `ipmi_ip` cannot be null."
      }

      # check if the required `ipmi_working` is null
      if (is.null(self$`ipmi_working`)) {
        invalid_fields["ipmi_working"] <- "Non-nullable required field `ipmi_working` cannot be null."
      }

      # check if the required `company` is null
      if (is.null(self$`company`)) {
        invalid_fields["company"] <- "Non-nullable required field `company` cannot be null."
      }

      # check if the required `comments` is null
      if (is.null(self$`comments`)) {
        invalid_fields["comments"] <- "Non-nullable required field `comments` cannot be null."
      }

      # check if the required `make` is null
      if (is.null(self$`make`)) {
        invalid_fields["make"] <- "Non-nullable required field `make` cannot be null."
      }

      # check if the required `model` is null
      if (is.null(self$`model`)) {
        invalid_fields["model"] <- "Non-nullable required field `model` cannot be null."
      }

      # check if the required `description` is null
      if (is.null(self$`description`)) {
        invalid_fields["description"] <- "Non-nullable required field `description` cannot be null."
      }

      # check if the required `customer_id` is null
      if (is.null(self$`customer_id`)) {
        invalid_fields["customer_id"] <- "Non-nullable required field `customer_id` cannot be null."
      }

      # check if the required `external_id` is null
      if (is.null(self$`external_id`)) {
        invalid_fields["external_id"] <- "Non-nullable required field `external_id` cannot be null."
      }

      # check if the required `billing_status` is null
      if (is.null(self$`billing_status`)) {
        invalid_fields["billing_status"] <- "Non-nullable required field `billing_status` cannot be null."
      }

      # check if the required `overdue` is null
      if (is.null(self$`overdue`)) {
        invalid_fields["overdue"] <- "Non-nullable required field `overdue` cannot be null."
      }

      # check if the required `asset_id` is null
      if (is.null(self$`asset_id`)) {
        invalid_fields["asset_id"] <- "Non-nullable required field `asset_id` cannot be null."
      }

      # check if the required `asset_name` is null
      if (is.null(self$`asset_name`)) {
        invalid_fields["asset_name"] <- "Non-nullable required field `asset_name` cannot be null."
      }

      # check if the required `rack_id` is null
      if (is.null(self$`rack_id`)) {
        invalid_fields["rack_id"] <- "Non-nullable required field `rack_id` cannot be null."
      }

      # check if the required `rack_name` is null
      if (is.null(self$`rack_name`)) {
        invalid_fields["rack_name"] <- "Non-nullable required field `rack_name` cannot be null."
      }

      # check if the required `rack_location` is null
      if (is.null(self$`rack_location`)) {
        invalid_fields["rack_location"] <- "Non-nullable required field `rack_location` cannot be null."
      }

      # check if the required `rack_size` is null
      if (is.null(self$`rack_size`)) {
        invalid_fields["rack_size"] <- "Non-nullable required field `rack_size` cannot be null."
      }

      # check if the required `rack_x` is null
      if (is.null(self$`rack_x`)) {
        invalid_fields["rack_x"] <- "Non-nullable required field `rack_x` cannot be null."
      }

      # check if the required `rack_y` is null
      if (is.null(self$`rack_y`)) {
        invalid_fields["rack_y"] <- "Non-nullable required field `rack_y` cannot be null."
      }

      # check if the required `switchports` is null
      if (is.null(self$`switchports`)) {
        invalid_fields["switchports"] <- "Non-nullable required field `switchports` cannot be null."
      }

      # check if the required `vlans` is null
      if (is.null(self$`vlans`)) {
        invalid_fields["vlans"] <- "Non-nullable required field `vlans` cannot be null."
      }

      # check if the required `vlans6` is null
      if (is.null(self$`vlans6`)) {
        invalid_fields["vlans6"] <- "Non-nullable required field `vlans6` cannot be null."
      }

      # check if the required `lease` is null
      if (is.null(self$`lease`)) {
        invalid_fields["lease"] <- "Non-nullable required field `lease` cannot be null."
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
# ServerAsset$unlock()
#
## Below is an example to define the print function
# ServerAsset$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ServerAsset$lock()

