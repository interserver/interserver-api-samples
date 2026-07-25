
package org.openapitools.client.model


case class SslOrderRequest (
    /* SSL package service type id from getNewSsl.serviceTypes. */
    _ssl: Integer,
    /* Domain the certificate is issued for. Wildcard certs require *.domain.com format. */
    _hostname: String,
    /* Domain-control approver email (required for all SSL orders). */
    _approver_email: String,
    /* Billing frequency in months (12, 24, or 36). */
    _frequency: Option[Integer],
    /* Coupon code. */
    _coupon: Option[String],
    /* Whether the CSR is server-generated or customer-provided. */
    _csr_type: Option[String],
    /* PEM-encoded CSR (>= 2048-bit) when csr_type=provided. */
    _csr: Option[String],
    /* Contact first name (defaults from account). */
    _firstname: Option[String],
    /* Contact last name (defaults from account). */
    _lastname: Option[String],
    /* Contact email (defaults from account). */
    _email: Option[String],
    /* Contact address (defaults from account). */
    _address: Option[String],
    /* Contact city (defaults from account). */
    _city: Option[String],
    /* Contact state/region (defaults from account). */
    _state: Option[String],
    /* Contact postal code (defaults from account). */
    _zip: Option[String],
    /* Contact country (defaults from account). */
    _country: Option[String],
    /* Contact phone (defaults from account). */
    _phone: Option[String],
    /* Contact company/organization (defaults from account). */
    _company: Option[String],
    /* Contact department (defaults to Administration). */
    _department: Option[String],
    /* EV certificate incorporating agency (only for EV packages). */
    _agency: Option[String],
    /* EV certificate business category (only for EV packages). */
    _business_category: Option[String]
)
object SslOrderRequest {
    def toStringBody(var_ssl: Object, var_hostname: Object, var_approver_email: Object, var_frequency: Object, var_coupon: Object, var_csr_type: Object, var_csr: Object, var_firstname: Object, var_lastname: Object, var_email: Object, var_address: Object, var_city: Object, var_state: Object, var_zip: Object, var_country: Object, var_phone: Object, var_company: Object, var_department: Object, var_agency: Object, var_business_category: Object) =
        s"""
        | {
        | "ssl":$var_ssl,"hostname":$var_hostname,"approver_email":$var_approver_email,"frequency":$var_frequency,"coupon":$var_coupon,"csr_type":$var_csr_type,"csr":$var_csr,"firstname":$var_firstname,"lastname":$var_lastname,"email":$var_email,"address":$var_address,"city":$var_city,"state":$var_state,"zip":$var_zip,"country":$var_country,"phone":$var_phone,"company":$var_company,"department":$var_department,"agency":$var_agency,"business_category":$var_business_category
        | }
        """.stripMargin
}
