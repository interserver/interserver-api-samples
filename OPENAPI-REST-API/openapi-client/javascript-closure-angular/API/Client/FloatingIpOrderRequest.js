goog.provide('API.Client.FloatingIpOrderRequest');

/**
 * Request body to validate (putFloating_ips) or place (addFloatingIp) a floating IP order. Service type ids come from getNewFloatingIp.serviceTypes.
 * @record
 */
API.Client.FloatingIpOrderRequest = function() {}

/**
 * Floating IP plan service type id from getNewFloatingIp.serviceTypes (must be buyable).
 * @type {!number}
 * @export
 */
API.Client.FloatingIpOrderRequest.prototype.serviceType;

/**
 * Coupon code.
 * @type {!string}
 * @export
 */
API.Client.FloatingIpOrderRequest.prototype.coupon;

/**
 * Free-form note saved on the service row (used on addFloatingIp).
 * @type {!string}
 * @export
 */
API.Client.FloatingIpOrderRequest.prototype.comment;

