package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import DeleteMailAlertRequest._

case class DeleteMailAlertRequest (
  /* The ID of the alert to delete. */
  alert_id: Integer)

object DeleteMailAlertRequest {
  import DateTimeCodecs._

  implicit val DeleteMailAlertRequestCodecJson: CodecJson[DeleteMailAlertRequest] = CodecJson.derive[DeleteMailAlertRequest]
  implicit val DeleteMailAlertRequestDecoder: EntityDecoder[DeleteMailAlertRequest] = jsonOf[DeleteMailAlertRequest]
  implicit val DeleteMailAlertRequestEncoder: EntityEncoder[DeleteMailAlertRequest] = jsonEncoderOf[DeleteMailAlertRequest]
}
