
package org.openapitools.client.model


case class FloatingIpOrderRequest (
    /* Floating IP plan service type id from getNewFloatingIp.serviceTypes (must be buyable). */
    _serviceType: Integer,
    /* Coupon code. */
    _coupon: Option[String],
    /* Free-form note saved on the service row (used on addFloatingIp). */
    _comment: Option[String]
)
object FloatingIpOrderRequest {
    def toStringBody(var_serviceType: Object, var_coupon: Object, var_comment: Object) =
        s"""
        | {
        | "serviceType":$var_serviceType,"coupon":$var_coupon,"comment":$var_comment
        | }
        """.stripMargin
}
