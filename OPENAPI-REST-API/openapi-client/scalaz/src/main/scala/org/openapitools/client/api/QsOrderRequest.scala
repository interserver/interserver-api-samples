package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import QsOrderRequest._

case class QsOrderRequest (
  /* QuickServer plan/server id from getNewQs. */
  server: Integer,
/* Root password for the QuickServer. */
  password: String,
/* Terms-of-service acceptance. Must be true to place the order. */
  tos: Boolean,
/* OS template file name from getNewQs (falls back to a default if unrecognized). */
  os: Option[String],
/* Free-form note saved on the service row. */
  comment: Option[String])

object QsOrderRequest {
  import DateTimeCodecs._

  implicit val QsOrderRequestCodecJson: CodecJson[QsOrderRequest] = CodecJson.derive[QsOrderRequest]
  implicit val QsOrderRequestDecoder: EntityDecoder[QsOrderRequest] = jsonOf[QsOrderRequest]
  implicit val QsOrderRequestEncoder: EntityEncoder[QsOrderRequest] = jsonEncoderOf[QsOrderRequest]
}
