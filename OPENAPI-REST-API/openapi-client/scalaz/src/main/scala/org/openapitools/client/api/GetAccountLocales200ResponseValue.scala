package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import GetAccountLocales200ResponseValue._

case class GetAccountLocales200ResponseValue (
  /* English display name of the locale. */
  name: Option[String],
/* Display name of the locale in its own language. */
  local_name: Option[String])

object GetAccountLocales200ResponseValue {
  import DateTimeCodecs._

  implicit val GetAccountLocales200ResponseValueCodecJson: CodecJson[GetAccountLocales200ResponseValue] = CodecJson.derive[GetAccountLocales200ResponseValue]
  implicit val GetAccountLocales200ResponseValueDecoder: EntityDecoder[GetAccountLocales200ResponseValue] = jsonOf[GetAccountLocales200ResponseValue]
  implicit val GetAccountLocales200ResponseValueEncoder: EntityEncoder[GetAccountLocales200ResponseValue] = jsonEncoderOf[GetAccountLocales200ResponseValue]
}
