package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SslOrderRequest._

case class SslOrderRequest (
  /* SSL package service type id from getNewSsl.serviceTypes. */
  ssl: Integer,
/* Domain the certificate is issued for. Wildcard certs require *.domain.com format. */
  hostname: String,
/* Domain-control approver email (required for all SSL orders). */
  approver_email: String,
/* Billing frequency in months (12, 24, or 36). */
  frequency: Option[Integer],
/* Coupon code. */
  coupon: Option[String],
/* Whether the CSR is server-generated or customer-provided. */
  csr_type: Option[CsrType],
/* PEM-encoded CSR (>= 2048-bit) when csr_type=provided. */
  csr: Option[String],
/* Contact first name (defaults from account). */
  firstname: Option[String],
/* Contact last name (defaults from account). */
  lastname: Option[String],
/* Contact email (defaults from account). */
  email: Option[String],
/* Contact address (defaults from account). */
  address: Option[String],
/* Contact city (defaults from account). */
  city: Option[String],
/* Contact state/region (defaults from account). */
  state: Option[String],
/* Contact postal code (defaults from account). */
  zip: Option[String],
/* Contact country (defaults from account). */
  country: Option[String],
/* Contact phone (defaults from account). */
  phone: Option[String],
/* Contact company/organization (defaults from account). */
  company: Option[String],
/* Contact department (defaults to Administration). */
  department: Option[String],
/* EV certificate incorporating agency (only for EV packages). */
  agency: Option[String],
/* EV certificate business category (only for EV packages). */
  business_category: Option[String])

object SslOrderRequest {
  import DateTimeCodecs._
  sealed trait CsrType
  case object Generated extends CsrType
  case object Provided extends CsrType

  object CsrType {
    def toCsrType(s: String): Option[CsrType] = s match {
      case "Generated" => Some(Generated)
      case "Provided" => Some(Provided)
      case _ => None
    }

    def fromCsrType(x: CsrType): String = x match {
      case Generated => "Generated"
      case Provided => "Provided"
    }
  }

  implicit val CsrTypeEnumEncoder: EncodeJson[CsrType] =
    EncodeJson[CsrType](is => StringEncodeJson(CsrType.fromCsrType(is)))

  implicit val CsrTypeEnumDecoder: DecodeJson[CsrType] =
    DecodeJson.optionDecoder[CsrType](n => n.string.flatMap(jStr => CsrType.toCsrType(jStr)), "CsrType failed to de-serialize")

  implicit val SslOrderRequestCodecJson: CodecJson[SslOrderRequest] = CodecJson.derive[SslOrderRequest]
  implicit val SslOrderRequestDecoder: EntityDecoder[SslOrderRequest] = jsonOf[SslOrderRequest]
  implicit val SslOrderRequestEncoder: EntityEncoder[SslOrderRequest] = jsonEncoderOf[SslOrderRequest]
}
