package io.swagger.server.model


/**
 * = Root Type for ServerBulkIpmiPowerResponse =
 *
 * Per-server IPMI power-status results for a bulk lookup.
 *
 * @param results 
 */
case class ServerBulkIpmiPowerResponse (
  results: List[ServerBulkIpmiPowerResponse_results]
)

