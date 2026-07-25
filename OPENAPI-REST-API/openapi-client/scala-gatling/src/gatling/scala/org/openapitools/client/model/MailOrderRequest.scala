
package org.openapitools.client.model


case class MailOrderRequest (
    /* Mail plan service type id from getNewMail.serviceTypes (must be buyable). */
    _serviceType: Integer,
    /* Coupon code. */
    _coupon: Option[String],
    /* Free-form note saved on the service row (used on addMail). */
    _comment: Option[String]
)
object MailOrderRequest {
    def toStringBody(var_serviceType: Object, var_coupon: Object, var_comment: Object) =
        s"""
        | {
        | "serviceType":$var_serviceType,"coupon":$var_coupon,"comment":$var_comment
        | }
        """.stripMargin
}
