package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ServerOrderPostRequestHd._

case class ServerOrderPostRequestHd (
  
object ServerOrderPostRequestHd {
  import DateTimeCodecs._

  implicit val ServerOrderPostRequestHdCodecJson: CodecJson[ServerOrderPostRequestHd] = CodecJson.derive[ServerOrderPostRequestHd]
  implicit val ServerOrderPostRequestHdDecoder: EntityDecoder[ServerOrderPostRequestHd] = jsonOf[ServerOrderPostRequestHd]
  implicit val ServerOrderPostRequestHdEncoder: EntityEncoder[ServerOrderPostRequestHd] = jsonEncoderOf[ServerOrderPostRequestHd]
}
