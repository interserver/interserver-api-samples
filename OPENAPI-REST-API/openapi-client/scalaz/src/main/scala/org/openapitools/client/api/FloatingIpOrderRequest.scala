package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import FloatingIpOrderRequest._

case class FloatingIpOrderRequest (
  /* Floating IP plan service type id from getNewFloatingIp.serviceTypes (must be buyable). */
  serviceType: Integer,
/* Coupon code. */
  coupon: Option[String],
/* Free-form note saved on the service row (used on addFloatingIp). */
  comment: Option[String])

object FloatingIpOrderRequest {
  import DateTimeCodecs._

  implicit val FloatingIpOrderRequestCodecJson: CodecJson[FloatingIpOrderRequest] = CodecJson.derive[FloatingIpOrderRequest]
  implicit val FloatingIpOrderRequestDecoder: EntityDecoder[FloatingIpOrderRequest] = jsonOf[FloatingIpOrderRequest]
  implicit val FloatingIpOrderRequestEncoder: EntityEncoder[FloatingIpOrderRequest] = jsonEncoderOf[FloatingIpOrderRequest]
}
