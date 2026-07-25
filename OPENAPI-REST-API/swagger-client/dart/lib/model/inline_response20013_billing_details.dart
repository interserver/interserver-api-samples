part of swagger.api;

class InlineResponse20013BillingDetails {
  
  String serviceLastInvoiceDate = null;

  String servicePaymentStatus = null;

  String serviceFrequency = null;

  String nextDate = null;

  String serviceNextInvoiceDate = null;

  String serviceCurrency = null;

  String serviceCurrencySymbol = null;

  String serviceCostInfo = null;

  InlineResponse20013BillingDetails();

  @override
  String toString() {
    return 'InlineResponse20013BillingDetails[serviceLastInvoiceDate=$serviceLastInvoiceDate, servicePaymentStatus=$servicePaymentStatus, serviceFrequency=$serviceFrequency, nextDate=$nextDate, serviceNextInvoiceDate=$serviceNextInvoiceDate, serviceCurrency=$serviceCurrency, serviceCurrencySymbol=$serviceCurrencySymbol, serviceCostInfo=$serviceCostInfo, ]';
  }

  InlineResponse20013BillingDetails.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    serviceLastInvoiceDate = json['service_last_invoice_date'];
    servicePaymentStatus = json['service_payment_status'];
    serviceFrequency = json['service_frequency'];
    nextDate = json['next_date'];
    serviceNextInvoiceDate = json['service_next_invoice_date'];
    serviceCurrency = json['service_currency'];
    serviceCurrencySymbol = json['service_currency_symbol'];
    serviceCostInfo = json['service_cost_info'];
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
      'service_cost_info': serviceCostInfo
     };
  }

  static List<InlineResponse20013BillingDetails> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20013BillingDetails>() : json.map((value) => new InlineResponse20013BillingDetails.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20013BillingDetails> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse20013BillingDetails>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse20013BillingDetails.fromJson(value));
    }
    return map;
  }
}
