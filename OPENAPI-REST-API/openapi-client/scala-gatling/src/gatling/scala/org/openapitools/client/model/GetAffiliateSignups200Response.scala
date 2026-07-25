
package org.openapitools.client.model


case class GetAffiliateSignups200Response (
    /* Affiliate signup statistics and client-side data. */
    _data: Option[Any]
)
object GetAffiliateSignups200Response {
    def toStringBody(var_data: Object) =
        s"""
        | {
        | "data":$var_data
        | }
        """.stripMargin
}
