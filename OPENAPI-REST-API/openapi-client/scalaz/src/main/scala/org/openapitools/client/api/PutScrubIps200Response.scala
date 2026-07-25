package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import PutScrubIps200Response._

case class PutScrubIps200Response (
  continue: Option[Boolean],
errors: Option[List[String]],
serviceType: Option[Integer],
serviceCost: Option[BigDecimal],
originalCost: Option[BigDecimal],
repeatServiceCost: Option[BigDecimal])

object PutScrubIps200Response {
  import DateTimeCodecs._

  implicit val PutScrubIps200ResponseCodecJson: CodecJson[PutScrubIps200Response] = CodecJson.derive[PutScrubIps200Response]
  implicit val PutScrubIps200ResponseDecoder: EntityDecoder[PutScrubIps200Response] = jsonOf[PutScrubIps200Response]
  implicit val PutScrubIps200ResponseEncoder: EntityEncoder[PutScrubIps200Response] = jsonEncoderOf[PutScrubIps200Response]
}
