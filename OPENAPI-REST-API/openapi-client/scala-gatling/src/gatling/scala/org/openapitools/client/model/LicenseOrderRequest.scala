
package org.openapitools.client.model


case class LicenseOrderRequest (
    /* License service type id from getNewLicense.serviceTypes (must be buyable). */
    _package: Integer,
    /* IP address the license is bound to. */
    _ip: String,
    /* Terms-of-service acceptance. Must be true to place the order. */
    _tos: Boolean,
    /* Billing frequency in months. */
    _frequency: Option[Integer],
    /* Coupon code. */
    _coupon: Option[String],
    /* Free-form note saved on the service row. */
    _comment: Option[String]
)
object LicenseOrderRequest {
    def toStringBody(var_package: Object, var_ip: Object, var_tos: Object, var_frequency: Object, var_coupon: Object, var_comment: Object) =
        s"""
        | {
        | "package":$var_package,"ip":$var_ip,"tos":$var_tos,"frequency":$var_frequency,"coupon":$var_coupon,"comment":$var_comment
        | }
        """.stripMargin
}
