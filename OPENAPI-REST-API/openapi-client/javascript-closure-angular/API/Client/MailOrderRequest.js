goog.provide('API.Client.MailOrderRequest');

/**
 * Request body to validate (putMail) or place (addMail) a mail order. Service type ids come from getNewMail.serviceTypes.
 * @record
 */
API.Client.MailOrderRequest = function() {}

/**
 * Mail plan service type id from getNewMail.serviceTypes (must be buyable).
 * @type {!number}
 * @export
 */
API.Client.MailOrderRequest.prototype.serviceType;

/**
 * Coupon code.
 * @type {!string}
 * @export
 */
API.Client.MailOrderRequest.prototype.coupon;

/**
 * Free-form note saved on the service row (used on addMail).
 * @type {!string}
 * @export
 */
API.Client.MailOrderRequest.prototype.comment;

