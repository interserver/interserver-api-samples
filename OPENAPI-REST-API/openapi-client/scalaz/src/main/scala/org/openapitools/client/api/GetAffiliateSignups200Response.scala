package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import GetAffiliateSignups200Response._

case class GetAffiliateSignups200Response (
  /* Affiliate signup statistics and client-side data. */
  data: Option[Any])

object GetAffiliateSignups200Response {
  import DateTimeCodecs._

  implicit val GetAffiliateSignups200ResponseCodecJson: CodecJson[GetAffiliateSignups200Response] = CodecJson.derive[GetAffiliateSignups200Response]
  implicit val GetAffiliateSignups200ResponseDecoder: EntityDecoder[GetAffiliateSignups200Response] = jsonOf[GetAffiliateSignups200Response]
  implicit val GetAffiliateSignups200ResponseEncoder: EntityEncoder[GetAffiliateSignups200Response] = jsonEncoderOf[GetAffiliateSignups200Response]
}
