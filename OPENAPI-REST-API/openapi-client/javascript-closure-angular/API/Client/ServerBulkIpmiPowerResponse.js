goog.provide('API.Client.ServerBulkIpmiPowerResponse');

/**
 * Per-server IPMI power-status results for a bulk lookup.
 * @record
 */
API.Client.ServerBulkIpmiPowerResponse = function() {}

/**
 * @type {!Array<!API.Client.ServerBulkIpmiPowerResponse_results_inner>}
 * @export
 */
API.Client.ServerBulkIpmiPowerResponse.prototype.results;

