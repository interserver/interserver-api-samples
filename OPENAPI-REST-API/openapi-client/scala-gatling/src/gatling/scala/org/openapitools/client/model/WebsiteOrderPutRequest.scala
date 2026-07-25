
package org.openapitools.client.model


case class WebsiteOrderPutRequest (
    /* Primary FQDN for the website. Must pass valid_hostname() and the keyword blocklist. */
    _hostname: String,
    /* Plan id from getNewWebsite.serviceTypes[].services_id (must be buyable). */
    _packageId: Integer,
    /* Control-panel admin password. If blank, a random password is generated server-side. */
    _rootpass: Option[String],
    /* Billing cycle in months (1 / 6 / 12 / 24 / 36). */
    _period: Option[Integer],
    /* Coupon code. */
    _coupon: Option[String],
    /* Promo bundle id from getNewWebsite.serviceOffers. */
    _serviceOfferId: Option[Integer],
    /* Auto-installer id (0 = none). */
    _script: Option[Integer],
    /* Free-form note saved on the service row. */
    _comment: Option[String],
    /* When true and enableDomainRegistering=true from the catalog, also registers/transfers the domain through the order. */
    _registerDomain: Option[Boolean]
)
object WebsiteOrderPutRequest {
    def toStringBody(var_hostname: Object, var_packageId: Object, var_rootpass: Object, var_period: Object, var_coupon: Object, var_serviceOfferId: Object, var_script: Object, var_comment: Object, var_registerDomain: Object) =
        s"""
        | {
        | "hostname":$var_hostname,"packageId":$var_packageId,"rootpass":$var_rootpass,"period":$var_period,"coupon":$var_coupon,"serviceOfferId":$var_serviceOfferId,"script":$var_script,"comment":$var_comment,"registerDomain":$var_registerDomain
        | }
        """.stripMargin
}
