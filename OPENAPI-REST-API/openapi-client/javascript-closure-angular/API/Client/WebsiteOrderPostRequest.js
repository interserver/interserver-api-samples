goog.provide('API.Client.WebsiteOrderPostRequest');

/**
 * request to place a webhosting order
 * @record
 */
API.Client.WebsiteOrderPostRequest = function() {}

/**
 * Primary FQDN for the website. Must pass valid_hostname() and the keyword blocklist.
 * @type {!string}
 * @export
 */
API.Client.WebsiteOrderPostRequest.prototype.hostname;

/**
 * Plan id from getNewWebsite.serviceTypes[].services_id (must be buyable).
 * @type {!number}
 * @export
 */
API.Client.WebsiteOrderPostRequest.prototype.packageId;

/**
 * Control-panel admin password. If blank, a random password is generated server-side.
 * @type {!string}
 * @export
 */
API.Client.WebsiteOrderPostRequest.prototype.rootpass;

/**
 * Billing cycle in months (1 / 6 / 12 / 24 / 36).
 * @type {!number}
 * @export
 */
API.Client.WebsiteOrderPostRequest.prototype.period;

/**
 * Coupon code.
 * @type {!string}
 * @export
 */
API.Client.WebsiteOrderPostRequest.prototype.coupon;

/**
 * Promo bundle id from getNewWebsite.serviceOffers.
 * @type {!number}
 * @export
 */
API.Client.WebsiteOrderPostRequest.prototype.serviceOfferId;

/**
 * Auto-installer id (0 = none).
 * @type {!number}
 * @export
 */
API.Client.WebsiteOrderPostRequest.prototype.script;

/**
 * Free-form note saved on the service row.
 * @type {!string}
 * @export
 */
API.Client.WebsiteOrderPostRequest.prototype.comment;

/**
 * When true and enableDomainRegistering=true from the catalog, also registers/transfers the domain through the order.
 * @type {!boolean}
 * @export
 */
API.Client.WebsiteOrderPostRequest.prototype.registerDomain;

