package io.swagger.server.model


/**
 * Request body to validate (putLicenses) or place (addLicense) a license order. Package ids come from getNewLicense.serviceTypes.
 *
 * @param `package` License service type id from getNewLicense.serviceTypes (must be buyable).
 * @param ip IP address the license is bound to.
 * @param tos Terms-of-service acceptance. Must be true to place the order.
 * @param frequency Billing frequency in months.
 * @param coupon Coupon code.
 * @param comment Free-form note saved on the service row.
 */
case class LicenseOrderRequest (
  `package`: Int,
  ip: String,
  tos: Boolean,
  frequency: Option[Int],
  coupon: Option[String],
  comment: Option[String]
)

