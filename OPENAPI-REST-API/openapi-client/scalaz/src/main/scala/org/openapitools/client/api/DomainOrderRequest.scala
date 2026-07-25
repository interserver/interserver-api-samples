package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime

import java.util.HashMap

import DomainOrderRequest._

case class DomainOrderRequest (
  /* Fully-qualified domain to register or transfer (e.g. example.com). */
  hostname: String,
/* Order type. */
  `type`: Option[`Type`],
/* Coupon code (addDomain only). */
  coupon: Option[String],
/* Set to \"enable\" to add Whois privacy (addDomain only). */
  whois_privacy: Option[WhoisPrivacy])

object DomainOrderRequest {
  import DateTimeCodecs._
  sealed trait `Type`
  case object Register extends `Type`
  case object Transfer extends `Type`

  object `Type` {
    def to`Type`(s: String): Option[`Type`] = s match {
      case "Register" => Some(Register)
      case "Transfer" => Some(Transfer)
      case _ => None
    }

    def from`Type`(x: `Type`): String = x match {
      case Register => "Register"
      case Transfer => "Transfer"
    }
  }

  implicit val `Type`EnumEncoder: EncodeJson[`Type`] =
    EncodeJson[`Type`](is => StringEncodeJson(`Type`.from`Type`(is)))

  implicit val `Type`EnumDecoder: DecodeJson[`Type`] =
    DecodeJson.optionDecoder[`Type`](n => n.string.flatMap(jStr => `Type`.to`Type`(jStr)), "`Type` failed to de-serialize")
  sealed trait WhoisPrivacy
  case object Enable extends WhoisPrivacy
  case object Disable extends WhoisPrivacy

  object WhoisPrivacy {
    def toWhoisPrivacy(s: String): Option[WhoisPrivacy] = s match {
      case "Enable" => Some(Enable)
      case "Disable" => Some(Disable)
      case _ => None
    }

    def fromWhoisPrivacy(x: WhoisPrivacy): String = x match {
      case Enable => "Enable"
      case Disable => "Disable"
    }
  }

  implicit val WhoisPrivacyEnumEncoder: EncodeJson[WhoisPrivacy] =
    EncodeJson[WhoisPrivacy](is => StringEncodeJson(WhoisPrivacy.fromWhoisPrivacy(is)))

  implicit val WhoisPrivacyEnumDecoder: DecodeJson[WhoisPrivacy] =
    DecodeJson.optionDecoder[WhoisPrivacy](n => n.string.flatMap(jStr => WhoisPrivacy.toWhoisPrivacy(jStr)), "WhoisPrivacy failed to de-serialize")

  implicit val DomainOrderRequestCodecJson: CodecJson[DomainOrderRequest] = CodecJson.derive[DomainOrderRequest]
  implicit val DomainOrderRequestDecoder: EntityDecoder[DomainOrderRequest] = jsonOf[DomainOrderRequest]
  implicit val DomainOrderRequestEncoder: EntityEncoder[DomainOrderRequest] = jsonEncoderOf[DomainOrderRequest]
}
