goog.provide('API.Client.LicenseOrderRequest');

/**
 * Request body to validate (putLicenses) or place (addLicense) a license order. Package ids come from getNewLicense.serviceTypes.
 * @record
 */
API.Client.LicenseOrderRequest = function() {}

/**
 * License service type id from getNewLicense.serviceTypes (must be buyable).
 * @type {!number}
 * @export
 */
API.Client.LicenseOrderRequest.prototype._package;

/**
 * IP address the license is bound to.
 * @type {!string}
 * @export
 */
API.Client.LicenseOrderRequest.prototype.ip;

/**
 * Terms-of-service acceptance. Must be true to place the order.
 * @type {!boolean}
 * @export
 */
API.Client.LicenseOrderRequest.prototype.tos;

/**
 * Billing frequency in months.
 * @type {!number}
 * @export
 */
API.Client.LicenseOrderRequest.prototype.frequency;

/**
 * Coupon code.
 * @type {!string}
 * @export
 */
API.Client.LicenseOrderRequest.prototype.coupon;

/**
 * Free-form note saved on the service row.
 * @type {!string}
 * @export
 */
API.Client.LicenseOrderRequest.prototype.comment;

