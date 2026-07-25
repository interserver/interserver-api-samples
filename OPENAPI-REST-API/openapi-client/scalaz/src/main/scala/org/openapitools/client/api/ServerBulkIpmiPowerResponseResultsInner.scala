package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ServerBulkIpmiPowerResponseResultsInner._

case class ServerBulkIpmiPowerResponseResultsInner (
  /* Server ID this result corresponds to. */
  id: Option[Integer],
/* Asset ID that was queried for the server (omitted on errors before asset selection). */
  asset: Option[Integer],
/* IPMI power-status output for this server. */
  text: Option[String],
/* Error message for this server, if processing failed (mutually exclusive with `text`). */
  error: Option[String])

object ServerBulkIpmiPowerResponseResultsInner {
  import DateTimeCodecs._

  implicit val ServerBulkIpmiPowerResponseResultsInnerCodecJson: CodecJson[ServerBulkIpmiPowerResponseResultsInner] = CodecJson.derive[ServerBulkIpmiPowerResponseResultsInner]
  implicit val ServerBulkIpmiPowerResponseResultsInnerDecoder: EntityDecoder[ServerBulkIpmiPowerResponseResultsInner] = jsonOf[ServerBulkIpmiPowerResponseResultsInner]
  implicit val ServerBulkIpmiPowerResponseResultsInnerEncoder: EntityEncoder[ServerBulkIpmiPowerResponseResultsInner] = jsonEncoderOf[ServerBulkIpmiPowerResponseResultsInner]
}
