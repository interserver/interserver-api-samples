package io.swagger.server.model


/**
 * Request body to place a custom dedicated server order. All ids come from getNewServer's config_li / regions.
 *
 * @param cpu CPU configuration id from config_li.cpu_li. Constrains valid hd/memory options.
 * @param hd Hard-drive configuration id(s) from config_li.hd_li[cpu]. Accepts a single id or an array of ids.
 * @param memory Memory configuration id from config_li.memory_li[cpu].
 * @param bandwidth Bandwidth configuration id from config_li.bandwidth_li.
 * @param ips IP block configuration id from config_li.ips_li.
 * @param os Operating System configuration id from config_li.os_li.
 * @param cp Control Panel configuration id from config_li.cp_li.
 * @param raid RAID configuration id from config_li.raid_li.
 * @param region Region id from the regions list.
 * @param servername Server hostname. Must pass valid_hostname().
 * @param rootpass Root password for the server.
 * @param tos Terms-of-service acceptance. Must be true to place the order.
 * @param comment Optional free-form order comment.
 */
case class ServerOrderPostRequest (
  cpu: Int,
  hd: OneOfServerOrderPostRequestHd,
  memory: Int,
  bandwidth: Int,
  ips: Int,
  os: Int,
  cp: Int,
  raid: Int,
  region: Int,
  servername: String,
  rootpass: String,
  tos: Boolean,
  comment: Option[String]
)

