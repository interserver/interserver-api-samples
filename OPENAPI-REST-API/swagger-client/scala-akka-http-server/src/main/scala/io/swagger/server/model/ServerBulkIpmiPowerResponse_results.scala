package io.swagger.server.model


/**
 * @param id Server ID this result corresponds to. for example: ''2313''
 * @param asset Asset ID that was queried for the server (omitted on errors before asset selection). for example: ''5432''
 * @param text IPMI power-status output for this server. for example: ''Chassis Power is on''
 * @param error Error message for this server, if processing failed (mutually exclusive with `text`). for example: ''Service is not active''
 */
case class ServerBulkIpmiPowerResponse_results (
  id: Option[Int],
  asset: Option[Int],
  text: Option[String],
  error: Option[String]
)

