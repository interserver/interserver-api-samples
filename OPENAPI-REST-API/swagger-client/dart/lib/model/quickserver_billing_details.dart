part of swagger.api;

class QuickserverBillingDetails {
  /* Last invoice date */
  String serviceLastInvoiceDate = null;
/* Payment status */
  String servicePaymentStatus = null;
/* Service frequency */
  String serviceFrequency = null;
/* Next date */
  String nextDate = null;
/* Next invoice date */
  String serviceNextInvoiceDate = null;
/* Currency */
  String serviceCurrency = null;
/* Currency symbol */
  String serviceCurrencySymbol = null;
/* Cost information */
  String serviceCostInfo = null;

  QuickserverServiceExtra serviceExtra = null;
/* Extra information (JSON format) */
  String serviceExtraJson = null;

  QuickserverBillingDetails();

  @override
  String toString() {
    return 'QuickserverBillingDetails[serviceLastInvoiceDate=$serviceLastInvoiceDate, servicePaymentStatus=$servicePaymentStatus, serviceFrequency=$serviceFrequency, nextDate=$nextDate, serviceNextInvoiceDate=$serviceNextInvoiceDate, serviceCurrency=$serviceCurrency, serviceCurrencySymbol=$serviceCurrencySymbol, serviceCostInfo=$serviceCostInfo, serviceExtra=$serviceExtra, serviceExtraJson=$serviceExtraJson, ]';
  }

  QuickserverBillingDetails.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    serviceLastInvoiceDate = json['service_last_invoice_date'];
    servicePaymentStatus = json['service_payment_status'];
    serviceFrequency = json['service_frequency'];
    nextDate = json['next_date'];
    serviceNextInvoiceDate = json['service_next_invoice_date'];
    serviceCurrency = json['service_currency'];
    serviceCurrencySymbol = json['service_currency_symbol'];
    serviceCostInfo = json['service_cost_info'];
    serviceExtra = new QuickserverServiceExtra.fromJson(json['service_extra']);
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

  static List<QuickserverBillingDetails> listFromJson(List<dynamic> json) {
    return json == null ? new List<QuickserverBillingDetails>() : json.map((value) => new QuickserverBillingDetails.fromJson(value)).toList();
  }

  static Map<String, QuickserverBillingDetails> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, QuickserverBillingDetails>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new QuickserverBillingDetails.fromJson(value));
    }
    return map;
  }
}
