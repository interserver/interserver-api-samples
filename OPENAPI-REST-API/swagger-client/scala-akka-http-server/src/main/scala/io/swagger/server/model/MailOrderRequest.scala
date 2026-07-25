package io.swagger.server.model


/**
 * Request body to validate (putMail) or place (addMail) a mail order. Service type ids come from getNewMail.serviceTypes.
 *
 * @param serviceType Mail plan service type id from getNewMail.serviceTypes (must be buyable).
 * @param coupon Coupon code.
 * @param comment Free-form note saved on the service row (used on addMail).
 */
case class MailOrderRequest (
  serviceType: Int,
  coupon: Option[String],
  comment: Option[String]
)

