package io.swagger.server.model


/**
 * Request body to validate (putSsl) or place (addSsl) an SSL certificate order. Contact fields default from the account if omitted. Package ids come from getNewSsl.serviceTypes.
 *
 * @param ssl SSL package service type id from getNewSsl.serviceTypes.
 * @param hostname Domain the certificate is issued for. Wildcard certs require *.domain.com format.
 * @param approver_email Domain-control approver email (required for all SSL orders).
 * @param frequency Billing frequency in months (12, 24, or 36).
 * @param coupon Coupon code.
 * @param csr_type Whether the CSR is server-generated or customer-provided.
 * @param csr PEM-encoded CSR (>= 2048-bit) when csr_type=provided.
 * @param firstname Contact first name (defaults from account).
 * @param lastname Contact last name (defaults from account).
 * @param email Contact email (defaults from account).
 * @param address Contact address (defaults from account).
 * @param city Contact city (defaults from account).
 * @param state Contact state/region (defaults from account).
 * @param zip Contact postal code (defaults from account).
 * @param country Contact country (defaults from account).
 * @param phone Contact phone (defaults from account).
 * @param company Contact company/organization (defaults from account).
 * @param department Contact department (defaults to Administration).
 * @param agency EV certificate incorporating agency (only for EV packages).
 * @param business_category EV certificate business category (only for EV packages).
 */
case class SslOrderRequest (
  ssl: Int,
  hostname: String,
  approver_email: String,
  frequency: Option[Int],
  coupon: Option[String],
  csr_type: Option[String],
  csr: Option[String],
  firstname: Option[String],
  lastname: Option[String],
  email: Option[String],
  address: Option[String],
  city: Option[String],
  state: Option[String],
  zip: Option[String],
  country: Option[String],
  phone: Option[String],
  company: Option[String],
  department: Option[String],
  agency: Option[String],
  business_category: Option[String]
)

