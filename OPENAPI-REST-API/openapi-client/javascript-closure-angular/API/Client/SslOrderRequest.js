goog.provide('API.Client.SslOrderRequest');

/**
 * Request body to validate (putSsl) or place (addSsl) an SSL certificate order. Contact fields default from the account if omitted. Package ids come from getNewSsl.serviceTypes.
 * @record
 */
API.Client.SslOrderRequest = function() {}

/**
 * SSL package service type id from getNewSsl.serviceTypes.
 * @type {!number}
 * @export
 */
API.Client.SslOrderRequest.prototype.ssl;

/**
 * Domain the certificate is issued for. Wildcard certs require *.domain.com format.
 * @type {!string}
 * @export
 */
API.Client.SslOrderRequest.prototype.hostname;

/**
 * Domain-control approver email (required for all SSL orders).
 * @type {!string}
 * @export
 */
API.Client.SslOrderRequest.prototype.approverEmail;

/**
 * Billing frequency in months (12, 24, or 36).
 * @type {!number}
 * @export
 */
API.Client.SslOrderRequest.prototype.frequency;

/**
 * Coupon code.
 * @type {!string}
 * @export
 */
API.Client.SslOrderRequest.prototype.coupon;

/**
 * Whether the CSR is server-generated or customer-provided.
 * @type {!string}
 * @export
 */
API.Client.SslOrderRequest.prototype.csrType;

/**
 * PEM-encoded CSR (>= 2048-bit) when csr_type=provided.
 * @type {!string}
 * @export
 */
API.Client.SslOrderRequest.prototype.csr;

/**
 * Contact first name (defaults from account).
 * @type {!string}
 * @export
 */
API.Client.SslOrderRequest.prototype.firstname;

/**
 * Contact last name (defaults from account).
 * @type {!string}
 * @export
 */
API.Client.SslOrderRequest.prototype.lastname;

/**
 * Contact email (defaults from account).
 * @type {!string}
 * @export
 */
API.Client.SslOrderRequest.prototype.email;

/**
 * Contact address (defaults from account).
 * @type {!string}
 * @export
 */
API.Client.SslOrderRequest.prototype.address;

/**
 * Contact city (defaults from account).
 * @type {!string}
 * @export
 */
API.Client.SslOrderRequest.prototype.city;

/**
 * Contact state/region (defaults from account).
 * @type {!string}
 * @export
 */
API.Client.SslOrderRequest.prototype.state;

/**
 * Contact postal code (defaults from account).
 * @type {!string}
 * @export
 */
API.Client.SslOrderRequest.prototype.zip;

/**
 * Contact country (defaults from account).
 * @type {!string}
 * @export
 */
API.Client.SslOrderRequest.prototype.country;

/**
 * Contact phone (defaults from account).
 * @type {!string}
 * @export
 */
API.Client.SslOrderRequest.prototype.phone;

/**
 * Contact company/organization (defaults from account).
 * @type {!string}
 * @export
 */
API.Client.SslOrderRequest.prototype.company;

/**
 * Contact department (defaults to Administration).
 * @type {!string}
 * @export
 */
API.Client.SslOrderRequest.prototype.department;

/**
 * EV certificate incorporating agency (only for EV packages).
 * @type {!string}
 * @export
 */
API.Client.SslOrderRequest.prototype.agency;

/**
 * EV certificate business category (only for EV packages).
 * @type {!string}
 * @export
 */
API.Client.SslOrderRequest.prototype.businessCategory;

/** @enum {string} */
API.Client.SslOrderRequest.CsrTypeEnum = { 
  generated: 'generated',
  provided: 'provided',
}
