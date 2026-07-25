package io.swagger.server.model


/**
 * Request body to validate (putFloating_ips) or place (addFloatingIp) a floating IP order. Service type ids come from getNewFloatingIp.serviceTypes.
 *
 * @param serviceType Floating IP plan service type id from getNewFloatingIp.serviceTypes (must be buyable).
 * @param coupon Coupon code.
 * @param comment Free-form note saved on the service row (used on addFloatingIp).
 */
case class FloatingIpOrderRequest (
  serviceType: Int,
  coupon: Option[String],
  comment: Option[String]
)

