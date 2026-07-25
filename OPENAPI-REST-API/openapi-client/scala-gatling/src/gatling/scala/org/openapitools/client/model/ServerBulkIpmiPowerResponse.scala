
package org.openapitools.client.model


case class ServerBulkIpmiPowerResponse (
    _results: List[ServerBulkIpmiPowerResponseResultsInner]
)
object ServerBulkIpmiPowerResponse {
    def toStringBody(var_results: Object) =
        s"""
        | {
        | "results":$var_results
        | }
        """.stripMargin
}
