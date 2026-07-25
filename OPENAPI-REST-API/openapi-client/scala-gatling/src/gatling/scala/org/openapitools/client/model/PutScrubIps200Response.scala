
package org.openapitools.client.model


case class PutScrubIps200Response (
    _continue: Option[Boolean],
    _errors: Option[List[String]],
    _serviceType: Option[Integer],
    _serviceCost: Option[Number],
    _originalCost: Option[Number],
    _repeatServiceCost: Option[Number]
)
object PutScrubIps200Response {
    def toStringBody(var_continue: Object, var_errors: Object, var_serviceType: Object, var_serviceCost: Object, var_originalCost: Object, var_repeatServiceCost: Object) =
        s"""
        | {
        | "continue":$var_continue,"errors":$var_errors,"serviceType":$var_serviceType,"serviceCost":$var_serviceCost,"originalCost":$var_originalCost,"repeatServiceCost":$var_repeatServiceCost
        | }
        """.stripMargin
}
