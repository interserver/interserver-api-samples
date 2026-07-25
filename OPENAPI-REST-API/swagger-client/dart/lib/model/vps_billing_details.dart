part of swagger.api;

class VpsBillingDetails {
  /* Last invoice date */
  String serviceLastInvoiceDate = null;
/* Payment status */
  String servicePaymentStatus = null;
/* Billing frequency */
  String serviceFrequency = null;
/* Next billing date */
  String nextDate = null;
/* Next invoice date */
  String serviceNextInvoiceDate = null;
/* Currency used for billing */
  String serviceCurrency = null;
/* Currency symbol */
  String serviceCurrencySymbol = null;
/* Billing coupon code */
  String serviceCoupon = null;
/* Cost information */
  String serviceCostInfo = null;

  VpsServiceExtra serviceExtra = null;
/* Additional information in JSON format */
  String serviceExtraJson = null;

  VpsBillingDetails();

  @override
  String toString() {
    return 'VpsBillingDetails[serviceLastInvoiceDate=$serviceLastInvoiceDate, servicePaymentStatus=$servicePaymentStatus, serviceFrequency=$serviceFrequency, nextDate=$nextDate, serviceNextInvoiceDate=$serviceNextInvoiceDate, serviceCurrency=$serviceCurrency, serviceCurrencySymbol=$serviceCurrencySymbol, serviceCoupon=$serviceCoupon, serviceCostInfo=$serviceCostInfo, serviceExtra=$serviceExtra, serviceExtraJson=$serviceExtraJson, ]';
  }

  VpsBillingDetails.fromJson(Map<String, dynamic> json) {
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
    serviceExtra = new VpsServiceExtra.fromJson(json['service_extra']);
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

  static List<VpsBillingDetails> listFromJson(List<dynamic> json) {
    return json == null ? new List<VpsBillingDetails>() : json.map((value) => new VpsBillingDetails.fromJson(value)).toList();
  }

  static Map<String, VpsBillingDetails> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, VpsBillingDetails>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new VpsBillingDetails.fromJson(value));
    }
    return map;
  }
}
