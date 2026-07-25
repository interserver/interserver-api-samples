goog.provide('API.Client.ServerBulkIpmiPowerResponse_results_inner');

/**
 * @record
 */
API.Client.ServerBulkIpmiPowerResponseResultsInner = function() {}

/**
 * Server ID this result corresponds to.
 * @type {!number}
 * @export
 */
API.Client.ServerBulkIpmiPowerResponseResultsInner.prototype.id;

/**
 * Asset ID that was queried for the server (omitted on errors before asset selection).
 * @type {!number}
 * @export
 */
API.Client.ServerBulkIpmiPowerResponseResultsInner.prototype.asset;

/**
 * IPMI power-status output for this server.
 * @type {!string}
 * @export
 */
API.Client.ServerBulkIpmiPowerResponseResultsInner.prototype.text;

/**
 * Error message for this server, if processing failed (mutually exclusive with `text`).
 * @type {!string}
 * @export
 */
API.Client.ServerBulkIpmiPowerResponseResultsInner.prototype.error;

