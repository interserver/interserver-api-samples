package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import LicenseOrderRequest._

case class LicenseOrderRequest (
  /* License service type id from getNewLicense.serviceTypes (must be buyable). */
  `package`: Integer,
/* IP address the license is bound to. */
  ip: String,
/* Terms-of-service acceptance. Must be true to place the order. */
  tos: Boolean,
/* Billing frequency in months. */
  frequency: Option[Integer],
/* Coupon code. */
  coupon: Option[String],
/* Free-form note saved on the service row. */
  comment: Option[String])

object LicenseOrderRequest {
  import DateTimeCodecs._

  implicit val LicenseOrderRequestCodecJson: CodecJson[LicenseOrderRequest] = CodecJson.derive[LicenseOrderRequest]
  implicit val LicenseOrderRequestDecoder: EntityDecoder[LicenseOrderRequest] = jsonOf[LicenseOrderRequest]
  implicit val LicenseOrderRequestEncoder: EntityEncoder[LicenseOrderRequest] = jsonEncoderOf[LicenseOrderRequest]
}
