
package org.openapitools.client.model

import java.util.HashMap

case class DomainOrderRequest (
    /* Fully-qualified domain to register or transfer (e.g. example.com). */
    _hostname: String,
    /* Order type. */
    _type: Option[String],
    /* Coupon code (addDomain only). */
    _coupon: Option[String],
    /* Set to \"enable\" to add Whois privacy (addDomain only). */
    _whois_privacy: Option[String]
)
object DomainOrderRequest {
    def toStringBody(var_hostname: Object, var_type: Object, var_coupon: Object, var_whois_privacy: Object) =
        s"""
        | {
        | "hostname":$var_hostname,"type":$var_type,"coupon":$var_coupon,"whois_privacy":$var_whois_privacy
        | }
        """.stripMargin
}
