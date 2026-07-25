package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import WebsiteOrderPutRequest._

case class WebsiteOrderPutRequest (
  /* Primary FQDN for the website. Must pass valid_hostname() and the keyword blocklist. */
  hostname: String,
/* Plan id from getNewWebsite.serviceTypes[].services_id (must be buyable). */
  packageId: Integer,
/* Control-panel admin password. If blank, a random password is generated server-side. */
  rootpass: Option[String],
/* Billing cycle in months (1 / 6 / 12 / 24 / 36). */
  period: Option[Integer],
/* Coupon code. */
  coupon: Option[String],
/* Promo bundle id from getNewWebsite.serviceOffers. */
  serviceOfferId: Option[Integer],
/* Auto-installer id (0 = none). */
  script: Option[Integer],
/* Free-form note saved on the service row. */
  comment: Option[String],
/* When true and enableDomainRegistering=true from the catalog, also registers/transfers the domain through the order. */
  registerDomain: Option[Boolean])

object WebsiteOrderPutRequest {
  import DateTimeCodecs._

  implicit val WebsiteOrderPutRequestCodecJson: CodecJson[WebsiteOrderPutRequest] = CodecJson.derive[WebsiteOrderPutRequest]
  implicit val WebsiteOrderPutRequestDecoder: EntityDecoder[WebsiteOrderPutRequest] = jsonOf[WebsiteOrderPutRequest]
  implicit val WebsiteOrderPutRequestEncoder: EntityEncoder[WebsiteOrderPutRequest] = jsonEncoderOf[WebsiteOrderPutRequest]
}
