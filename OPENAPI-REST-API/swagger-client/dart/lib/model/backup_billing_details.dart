part of swagger.api;

class BackupBillingDetails {
  /* Last invoice date of the service. */
  String serviceLastInvoiceDate = null;
/* Payment status of the service. */
  String servicePaymentStatus = null;
/* Billing frequency of the service. */
  String serviceFrequency = null;
/* Next billing date of the service. */
  String nextDate = null;
/* Next invoice date of the service. */
  String serviceNextInvoiceDate = null;
/* Currency of the service. */
  String serviceCurrency = null;
/* Currency symbol of the service. */
  String serviceCurrencySymbol = null;
/* Cost information of the service. */
  String serviceCostInfo = null;
/* Service Extra Info */
  String serviceExtra = null;
/* JSON representation of extra service information. */
  String serviceExtraJson = null;

  BackupBillingDetails();

  @override
  String toString() {
    return 'BackupBillingDetails[serviceLastInvoiceDate=$serviceLastInvoiceDate, servicePaymentStatus=$servicePaymentStatus, serviceFrequency=$serviceFrequency, nextDate=$nextDate, serviceNextInvoiceDate=$serviceNextInvoiceDate, serviceCurrency=$serviceCurrency, serviceCurrencySymbol=$serviceCurrencySymbol, serviceCostInfo=$serviceCostInfo, serviceExtra=$serviceExtra, serviceExtraJson=$serviceExtraJson, ]';
  }

  BackupBillingDetails.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    serviceLastInvoiceDate = json['service_last_invoice_date'];
    servicePaymentStatus = json['service_payment_status'];
    serviceFrequency = json['service_frequency'];
    nextDate = json['next_date'];
    serviceNextInvoiceDate = json['service_next_invoice_date'];
    serviceCurrency = json['service_currency'];
    serviceCurrencySymbol = json['service_currency_symbol'];
    serviceCostInfo = json['service_cost_info'];
    serviceExtra = json['service_extra'];
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

  static List<BackupBillingDetails> listFromJson(List<dynamic> json) {
    return json == null ? new List<BackupBillingDetails>() : json.map((value) => new BackupBillingDetails.fromJson(value)).toList();
  }

  static Map<String, BackupBillingDetails> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BackupBillingDetails>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new BackupBillingDetails.fromJson(value));
    }
    return map;
  }
}
