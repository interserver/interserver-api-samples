package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import PatchBillingCreditCardVerifyRequest._

case class PatchBillingCreditCardVerifyRequest (
  /* The CVV/CVC code on the back of the credit card. */
  cc_ccv2: String)

object PatchBillingCreditCardVerifyRequest {
  import DateTimeCodecs._

  implicit val PatchBillingCreditCardVerifyRequestCodecJson: CodecJson[PatchBillingCreditCardVerifyRequest] = CodecJson.derive[PatchBillingCreditCardVerifyRequest]
  implicit val PatchBillingCreditCardVerifyRequestDecoder: EntityDecoder[PatchBillingCreditCardVerifyRequest] = jsonOf[PatchBillingCreditCardVerifyRequest]
  implicit val PatchBillingCreditCardVerifyRequestEncoder: EntityEncoder[PatchBillingCreditCardVerifyRequest] = jsonEncoderOf[PatchBillingCreditCardVerifyRequest]
}
