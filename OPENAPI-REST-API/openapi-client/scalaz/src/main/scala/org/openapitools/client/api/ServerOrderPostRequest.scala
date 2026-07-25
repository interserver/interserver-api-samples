package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ServerOrderPostRequest._

case class ServerOrderPostRequest (
  /* CPU configuration id from config_li.cpu_li. Constrains valid hd/memory options. */
  cpu: Integer,
hd: ServerOrderPostRequestHd,
/* Memory configuration id from config_li.memory_li[cpu]. */
  memory: Integer,
/* Bandwidth configuration id from config_li.bandwidth_li. */
  bandwidth: Integer,
/* IP block configuration id from config_li.ips_li. */
  ips: Integer,
/* Operating System configuration id from config_li.os_li. */
  os: Integer,
/* Control Panel configuration id from config_li.cp_li. */
  cp: Integer,
/* RAID configuration id from config_li.raid_li. */
  raid: Integer,
/* Region id from the regions list. */
  region: Integer,
/* Server hostname. Must pass valid_hostname(). */
  servername: String,
/* Root password for the server. */
  rootpass: String,
/* Terms-of-service acceptance. Must be true to place the order. */
  tos: Boolean,
/* Optional free-form order comment. */
  comment: Option[String])

object ServerOrderPostRequest {
  import DateTimeCodecs._

  implicit val ServerOrderPostRequestCodecJson: CodecJson[ServerOrderPostRequest] = CodecJson.derive[ServerOrderPostRequest]
  implicit val ServerOrderPostRequestDecoder: EntityDecoder[ServerOrderPostRequest] = jsonOf[ServerOrderPostRequest]
  implicit val ServerOrderPostRequestEncoder: EntityEncoder[ServerOrderPostRequest] = jsonEncoderOf[ServerOrderPostRequest]
}
