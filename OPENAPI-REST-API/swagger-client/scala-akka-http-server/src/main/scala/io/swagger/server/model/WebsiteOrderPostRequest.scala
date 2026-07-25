package io.swagger.server.model


/**
 * request to place a webhosting order
 *
 * @param hostname Primary FQDN for the website. Must pass valid_hostname() and the keyword blocklist.
 * @param packageId Plan id from getNewWebsite.serviceTypes[].services_id (must be buyable).
 * @param rootpass Control-panel admin password. If blank, a random password is generated server-side.
 * @param period Billing cycle in months (1 / 6 / 12 / 24 / 36).
 * @param coupon Coupon code.
 * @param serviceOfferId Promo bundle id from getNewWebsite.serviceOffers.
 * @param script Auto-installer id (0 = none).
 * @param comment Free-form note saved on the service row.
 * @param registerDomain When true and enableDomainRegistering=true from the catalog, also registers/transfers the domain through the order.
 */
case class WebsiteOrderPostRequest (
  hostname: String,
  packageId: Int,
  rootpass: Option[String],
  period: Option[Int],
  coupon: Option[String],
  serviceOfferId: Option[Int],
  script: Option[Int],
  comment: Option[String],
  registerDomain: Option[Boolean]
)

