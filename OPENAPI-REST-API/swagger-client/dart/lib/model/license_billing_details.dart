part of swagger.api;

class LicenseBillingDetails {
  /* Last invoice date */
  String serviceLastInvoiceDate = null;
/* Payment status */
  String servicePaymentStatus = null;
/* Service frequency */
  String serviceFrequency = null;
/* Next date */
  DateTime nextDate = null;
/* Next invoice date */
  String serviceNextInvoiceDate = null;
/* Service currency */
  String serviceCurrency = null;
/* Service currency symbol */
  String serviceCurrencySymbol = null;
/* Service coupon */
  String serviceCoupon = null;
/* Service cost information */
  String serviceCostInfo = null;
/* Additional service information */
  List<String> serviceExtra = [];
/* Additional service information in JSON format */
  String serviceExtraJson = null;

  LicenseBillingDetails();

  @override
  String toString() {
    return 'LicenseBillingDetails[serviceLastInvoiceDate=$serviceLastInvoiceDate, servicePaymentStatus=$servicePaymentStatus, serviceFrequency=$serviceFrequency, nextDate=$nextDate, serviceNextInvoiceDate=$serviceNextInvoiceDate, serviceCurrency=$serviceCurrency, serviceCurrencySymbol=$serviceCurrencySymbol, serviceCoupon=$serviceCoupon, serviceCostInfo=$serviceCostInfo, serviceExtra=$serviceExtra, serviceExtraJson=$serviceExtraJson, ]';
  }

  LicenseBillingDetails.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    serviceLastInvoiceDate = json['service_last_invoice_date'];
    servicePaymentStatus = json['service_payment_status'];
    serviceFrequency = json['service_frequency'];
    nextDate = json['next_date'] == null ? null : DateTime.parse(json['next_date']);
    serviceNextInvoiceDate = json['service_next_invoice_date'];
    serviceCurrency = json['service_currency'];
    serviceCurrencySymbol = json['service_currency_symbol'];
    serviceCoupon = json['service_coupon'];
    serviceCostInfo = json['service_cost_info'];
    serviceExtra = (json['service_extra'] as List).map((item) => item as String).toList();
    serviceExtraJson = json['service_extra_json'];
  }

  Map<String, dynamic> toJson() {
    return {
      'service_last_invoice_date': serviceLastInvoiceDate,
      'service_payment_status': servicePaymentStatus,
      'service_frequency': serviceFrequency,
      'next_date': nextDate == null ? '' : nextDate.toUtc().toIso8601String(),
      'service_next_invoice_date': serviceNextInvoiceDate,
      'service_currency': serviceCurrency,
      'service_currency_symbol': serviceCurrencySymbol,
      'service_coupon': serviceCoupon,
      'service_cost_info': serviceCostInfo,
      'service_extra': serviceExtra,
      'service_extra_json': serviceExtraJson
     };
  }

  static List<LicenseBillingDetails> listFromJson(List<dynamic> json) {
    return json == null ? new List<LicenseBillingDetails>() : json.map((value) => new LicenseBillingDetails.fromJson(value)).toList();
  }

  static Map<String, LicenseBillingDetails> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, LicenseBillingDetails>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new LicenseBillingDetails.fromJson(value));
    }
    return map;
  }
}
