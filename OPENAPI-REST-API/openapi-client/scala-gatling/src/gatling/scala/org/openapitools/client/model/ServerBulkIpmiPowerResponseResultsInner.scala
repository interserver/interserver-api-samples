
package org.openapitools.client.model


case class ServerBulkIpmiPowerResponseResultsInner (
    /* Server ID this result corresponds to. */
    _id: Option[Integer],
    /* Asset ID that was queried for the server (omitted on errors before asset selection). */
    _asset: Option[Integer],
    /* IPMI power-status output for this server. */
    _text: Option[String],
    /* Error message for this server, if processing failed (mutually exclusive with `text`). */
    _error: Option[String]
)
object ServerBulkIpmiPowerResponseResultsInner {
    def toStringBody(var_id: Object, var_asset: Object, var_text: Object, var_error: Object) =
        s"""
        | {
        | "id":$var_id,"asset":$var_asset,"text":$var_text,"error":$var_error
        | }
        """.stripMargin
}
