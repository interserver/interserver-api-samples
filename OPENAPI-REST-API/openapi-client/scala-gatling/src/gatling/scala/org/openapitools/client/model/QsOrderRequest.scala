
package org.openapitools.client.model


case class QsOrderRequest (
    /* QuickServer plan/server id from getNewQs. */
    _server: Integer,
    /* Root password for the QuickServer. */
    _password: String,
    /* Terms-of-service acceptance. Must be true to place the order. */
    _tos: Boolean,
    /* OS template file name from getNewQs (falls back to a default if unrecognized). */
    _os: Option[String],
    /* Free-form note saved on the service row. */
    _comment: Option[String]
)
object QsOrderRequest {
    def toStringBody(var_server: Object, var_password: Object, var_tos: Object, var_os: Object, var_comment: Object) =
        s"""
        | {
        | "server":$var_server,"password":$var_password,"tos":$var_tos,"os":$var_os,"comment":$var_comment
        | }
        """.stripMargin
}
