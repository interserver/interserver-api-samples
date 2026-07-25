part of swagger.api;

class WebsiteBillingDetails {
  /* Last invoice date for the service */
  String serviceLastInvoiceDate = null;
/* Payment status for the service */
  String servicePaymentStatus = null;
/* Frequency of the service */
  String serviceFrequency = null;
/* Next date for the service */
  String nextDate = null;
/* Next invoice date for the service */
  String serviceNextInvoiceDate = null;
/* Currency for the service */
  String serviceCurrency = null;
/* Currency symbol for the service */
  String serviceCurrencySymbol = null;
/* Coupon for the service */
  String serviceCoupon = null;
/* Cost information for the service */
  String serviceCostInfo = null;

  WebsiteServiceExtra serviceExtra = null;
/* Extra information in JSON format for the service */
  String serviceExtraJson = null;

  WebsiteBillingDetails();

  @override
  String toString() {
    return 'WebsiteBillingDetails[serviceLastInvoiceDate=$serviceLastInvoiceDate, servicePaymentStatus=$servicePaymentStatus, serviceFrequency=$serviceFrequency, nextDate=$nextDate, serviceNextInvoiceDate=$serviceNextInvoiceDate, serviceCurrency=$serviceCurrency, serviceCurrencySymbol=$serviceCurrencySymbol, serviceCoupon=$serviceCoupon, serviceCostInfo=$serviceCostInfo, serviceExtra=$serviceExtra, serviceExtraJson=$serviceExtraJson, ]';
  }

  WebsiteBillingDetails.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    serviceLastInvoiceDate = json['service_last_invoice_date'];
    servicePaymentStatus = json['service_payment_status'];
    serviceFrequency = json['service_frequency'];
    nextDate = json['next_date'];
    serviceNextInvoiceDate = json['service_next_invoice_date'];
    serviceCurrency = json['service_currency'];
    serviceCurrencySymbol = json['service_currency_symbol'];
    serviceCoupon = json['service_coupon'];
    serviceCostInfo = json['service_cost_info'];
    serviceExtra = new WebsiteServiceExtra.fromJson(json['service_extra']);
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
      'service_coupon': serviceCoupon,
      'service_cost_info': serviceCostInfo,
      'service_extra': serviceExtra,
      'service_extra_json': serviceExtraJson
     };
  }

  static List<WebsiteBillingDetails> listFromJson(List<dynamic> json) {
    return json == null ? new List<WebsiteBillingDetails>() : json.map((value) => new WebsiteBillingDetails.fromJson(value)).toList();
  }

  static Map<String, WebsiteBillingDetails> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, WebsiteBillingDetails>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new WebsiteBillingDetails.fromJson(value));
    }
    return map;
  }
}
