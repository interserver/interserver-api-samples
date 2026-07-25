goog.provide('API.Client.DomainOrderRequest');

/**
 * Request body for the domain order flow: putDomains (returns required fields), patchDomains (validates fields), addDomain (places the order). The TLD is resolved from hostname. Per-TLD registrant/contact fields returned by putDomains may be supplied as additional properties on patchDomains/addDomain.
 * @record
 */
API.Client.DomainOrderRequest = function() {}

/**
 * Fully-qualified domain to register or transfer (e.g. example.com).
 * @type {!string}
 * @export
 */
API.Client.DomainOrderRequest.prototype.hostname;

/**
 * Order type.
 * @type {!string}
 * @export
 */
API.Client.DomainOrderRequest.prototype.type;

/**
 * Coupon code (addDomain only).
 * @type {!string}
 * @export
 */
API.Client.DomainOrderRequest.prototype.coupon;

/**
 * Set to \"enable\" to add Whois privacy (addDomain only).
 * @type {!string}
 * @export
 */
API.Client.DomainOrderRequest.prototype.whoisPrivacy;

/** @enum {string} */
API.Client.DomainOrderRequest.TypeEnum = { 
  register: 'register',
  transfer: 'transfer',
}
/** @enum {string} */
API.Client.DomainOrderRequest.WhoisPrivacyEnum = { 
  enable: 'enable',
  disable: 'disable',
}
