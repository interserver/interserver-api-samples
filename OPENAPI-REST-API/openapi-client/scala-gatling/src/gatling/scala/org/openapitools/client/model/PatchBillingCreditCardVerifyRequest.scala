
package org.openapitools.client.model


case class PatchBillingCreditCardVerifyRequest (
    /* The CVV/CVC code on the back of the credit card. */
    _cc_ccv2: String
)
object PatchBillingCreditCardVerifyRequest {
    def toStringBody(var_cc_ccv2: Object) =
        s"""
        | {
        | "cc_ccv2":$var_cc_ccv2
        | }
        """.stripMargin
}
