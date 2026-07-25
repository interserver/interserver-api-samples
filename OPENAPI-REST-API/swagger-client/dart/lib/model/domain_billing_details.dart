part of swagger.api;

class DomainBillingDetails {
  /* Date of the last invoice for the domain. */
  String serviceLastInvoiceDate = null;
/* Current payment status (e.g., Paid, Unpaid). */
  String servicePaymentStatus = null;
/* Billing frequency (e.g., Yearly, Monthly). */
  String serviceFrequency = null;
/* Next billing date (ISO 8601). */
  String nextDate = null;
/* Human-readable next invoice date. */
  String serviceNextInvoiceDate = null;
/* Billing currency code. */
  String serviceCurrency = null;
/* Billing currency symbol. */
  String serviceCurrencySymbol = null;
/* Cost breakdown information. */
  String serviceCostInfo = null;

  DomainBillingExtra serviceExtra = null;
/* Raw JSON string of extra billing data. */
  String serviceExtraJson = null;

  DomainBillingDetails();

  @override
  String toString() {
    return 'DomainBillingDetails[serviceLastInvoiceDate=$serviceLastInvoiceDate, servicePaymentStatus=$servicePaymentStatus, serviceFrequency=$serviceFrequency, nextDate=$nextDate, serviceNextInvoiceDate=$serviceNextInvoiceDate, serviceCurrency=$serviceCurrency, serviceCurrencySymbol=$serviceCurrencySymbol, serviceCostInfo=$serviceCostInfo, serviceExtra=$serviceExtra, serviceExtraJson=$serviceExtraJson, ]';
  }

  DomainBillingDetails.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    serviceLastInvoiceDate = json['service_last_invoice_date'];
    servicePaymentStatus = json['service_payment_status'];
    serviceFrequency = json['service_frequency'];
    nextDate = json['next_date'];
    serviceNextInvoiceDate = json['service_next_invoice_date'];
    serviceCurrency = json['service_currency'];
    serviceCurrencySymbol = json['service_currency_symbol'];
    serviceCostInfo = json['service_cost_info'];
    serviceExtra = new DomainBillingExtra.fromJson(json['service_extra']);
    serviceExtraJson = json['service_extra_json'];
  }

  Map<String, dynamic> toJson() {
    return {
      'service_last_invoice_date': serviceLastInvoiceDate,
      'service_payment_status': servicePaymentStatus,
      'service_frequency': serviceFrequency,
      'next_date': nextDate,
      'service_next_invoice_date': serviceNextInvoiceDate,
      'service_currency': serviceCurrency,
      'service_currency_symbol': serviceCurrencySymbol,
      'service_cost_info': serviceCostInfo,
      'service_extra': serviceExtra,
      'service_extra_json': serviceExtraJson
     };
  }

  static List<DomainBillingDetails> listFromJson(List<dynamic> json) {
    return json == null ? new List<DomainBillingDetails>() : json.map((value) => new DomainBillingDetails.fromJson(value)).toList();
  }

  static Map<String, DomainBillingDetails> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DomainBillingDetails>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DomainBillingDetails.fromJson(value));
    }
    return map;
  }
}
