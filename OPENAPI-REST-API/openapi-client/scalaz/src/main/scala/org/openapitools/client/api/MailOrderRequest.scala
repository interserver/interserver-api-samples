package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import MailOrderRequest._

case class MailOrderRequest (
  /* Mail plan service type id from getNewMail.serviceTypes (must be buyable). */
  serviceType: Integer,
/* Coupon code. */
  coupon: Option[String],
/* Free-form note saved on the service row (used on addMail). */
  comment: Option[String])

object MailOrderRequest {
  import DateTimeCodecs._

  implicit val MailOrderRequestCodecJson: CodecJson[MailOrderRequest] = CodecJson.derive[MailOrderRequest]
  implicit val MailOrderRequestDecoder: EntityDecoder[MailOrderRequest] = jsonOf[MailOrderRequest]
  implicit val MailOrderRequestEncoder: EntityEncoder[MailOrderRequest] = jsonEncoderOf[MailOrderRequest]
}
