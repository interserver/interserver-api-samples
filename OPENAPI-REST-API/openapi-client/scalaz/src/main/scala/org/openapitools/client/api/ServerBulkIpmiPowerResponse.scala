package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ServerBulkIpmiPowerResponse._

case class ServerBulkIpmiPowerResponse (
  results: List[ServerBulkIpmiPowerResponseResultsInner])

object ServerBulkIpmiPowerResponse {
  import DateTimeCodecs._

  implicit val ServerBulkIpmiPowerResponseCodecJson: CodecJson[ServerBulkIpmiPowerResponse] = CodecJson.derive[ServerBulkIpmiPowerResponse]
  implicit val ServerBulkIpmiPowerResponseDecoder: EntityDecoder[ServerBulkIpmiPowerResponse] = jsonOf[ServerBulkIpmiPowerResponse]
  implicit val ServerBulkIpmiPowerResponseEncoder: EntityEncoder[ServerBulkIpmiPowerResponse] = jsonEncoderOf[ServerBulkIpmiPowerResponse]
}
