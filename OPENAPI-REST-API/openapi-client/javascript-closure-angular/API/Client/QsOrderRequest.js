goog.provide('API.Client.QsOrderRequest');

/**
 * Request body to validate (putQs) or place (addQs) a QuickServer order. Server and OS template come from getNewQs.
 * @record
 */
API.Client.QsOrderRequest = function() {}

/**
 * QuickServer plan/server id from getNewQs.
 * @type {!number}
 * @export
 */
API.Client.QsOrderRequest.prototype.server;

/**
 * Root password for the QuickServer.
 * @type {!string}
 * @export
 */
API.Client.QsOrderRequest.prototype.password;

/**
 * Terms-of-service acceptance. Must be true to place the order.
 * @type {!boolean}
 * @export
 */
API.Client.QsOrderRequest.prototype.tos;

/**
 * OS template file name from getNewQs (falls back to a default if unrecognized).
 * @type {!string}
 * @export
 */
API.Client.QsOrderRequest.prototype.os;

/**
 * Free-form note saved on the service row.
 * @type {!string}
 * @export
 */
API.Client.QsOrderRequest.prototype.comment;

