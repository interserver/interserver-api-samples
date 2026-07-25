part of swagger.api;

class MailBillingDetails {
  /* The last invoice date of the service. */
  String serviceLastInvoiceDate = null;
/* The payment status of the service. */
  String servicePaymentStatus = null;
/* The frequency of the service payment. */
  String serviceFrequency = null;
/* The next payment date of the service. */
  String nextDate = null;
/* The next invoice date of the service. */
  String serviceNextInvoiceDate = null;
/* The currency of the service. */
  String serviceCurrency = null;
/* The currency symbol of the service. */
  String serviceCurrencySymbol = null;
/* The cost information of the service. */
  String serviceCostInfo = null;
/* Extra information for the service. */
  List<String> serviceExtra = [];
/* Extra JSON information for the service. */
  String serviceExtraJson = null;

  MailBillingDetails();

  @override
  String toString() {
    return 'MailBillingDetails[serviceLastInvoiceDate=$serviceLastInvoiceDate, servicePaymentStatus=$servicePaymentStatus, serviceFrequency=$serviceFrequency, nextDate=$nextDate, serviceNextInvoiceDate=$serviceNextInvoiceDate, serviceCurrency=$serviceCurrency, serviceCurrencySymbol=$serviceCurrencySymbol, serviceCostInfo=$serviceCostInfo, serviceExtra=$serviceExtra, serviceExtraJson=$serviceExtraJson, ]';
  }

  MailBillingDetails.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    serviceLastInvoiceDate = json['service_last_invoice_date'];
    servicePaymentStatus = json['service_payment_status'];
    serviceFrequency = json['service_frequency'];
    nextDate = json['next_date'];
    serviceNextInvoiceDate = json['service_next_invoice_date'];
    serviceCurrency = json['service_currency'];
    serviceCurrencySymbol = json['service_currency_symbol'];
    serviceCostInfo = json['service_cost_info'];
    serviceExtra = (json['service_extra'] as List).map((item) => item as String).toList();
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

  static List<MailBillingDetails> listFromJson(List<dynamic> json) {
    return json == null ? new List<MailBillingDetails>() : json.map((value) => new MailBillingDetails.fromJson(value)).toList();
  }

  static Map<String, MailBillingDetails> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MailBillingDetails>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new MailBillingDetails.fromJson(value));
    }
    return map;
  }
}
