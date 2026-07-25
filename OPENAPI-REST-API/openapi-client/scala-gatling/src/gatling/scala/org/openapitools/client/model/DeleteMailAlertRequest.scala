
package org.openapitools.client.model


case class DeleteMailAlertRequest (
    /* The ID of the alert to delete. */
    _alert_id: Integer
)
object DeleteMailAlertRequest {
    def toStringBody(var_alert_id: Object) =
        s"""
        | {
        | "alert_id":$var_alert_id
        | }
        """.stripMargin
}
