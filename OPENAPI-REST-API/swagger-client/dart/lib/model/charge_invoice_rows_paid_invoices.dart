part of swagger.api;

class ChargeInvoiceRowsPaidInvoices {
  
  String invoicesId = null;

  String invoicesDescription = null;

  double invoicesAmount = null;

  String invoicesDate = null;

  String invoicesCurrency = null;

  String currencySymbol = null;

  String invoicesDateFormatted = null;

  String paymentType = null;
/* This is optional when refund is present this will show */
  Map<String, ChargeInvoiceRowsRefundInvoices> refundInvoices = {};

  ChargeInvoiceRowsPaidInvoices();

  @override
  String toString() {
    return 'ChargeInvoiceRowsPaidInvoices[invoicesId=$invoicesId, invoicesDescription=$invoicesDescription, invoicesAmount=$invoicesAmount, invoicesDate=$invoicesDate, invoicesCurrency=$invoicesCurrency, currencySymbol=$currencySymbol, invoicesDateFormatted=$invoicesDateFormatted, paymentType=$paymentType, refundInvoices=$refundInvoices, ]';
  }

  ChargeInvoiceRowsPaidInvoices.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    invoicesId = json['invoices_id'];
    invoicesDescription = json['invoices_description'];
    invoicesAmount = json['invoices_amount'];
    invoicesDate = json['invoices_date'];
    invoicesCurrency = json['invoices_currency'];
    currencySymbol = json['currency_symbol'];
    invoicesDateFormatted = json['invoices_date_formatted'];
    paymentType = json['payment_type'];
    refundInvoices = ChargeInvoiceRowsRefundInvoices.mapFromJson(json['refund_invoices']);
  }

  Map<String, dynamic> toJson() {
    return {
      'invoices_id': invoicesId,
      'invoices_description': invoicesDescription,
      'invoices_amount': invoicesAmount,
      'invoices_date': invoicesDate,
      'invoices_currency': invoicesCurrency,
      'currency_symbol': currencySymbol,
      'invoices_date_formatted': invoicesDateFormatted,
      'payment_type': paymentType,
      'refund_invoices': refundInvoices
     };
  }

  static List<ChargeInvoiceRowsPaidInvoices> listFromJson(List<dynamic> json) {
    return json == null ? new List<ChargeInvoiceRowsPaidInvoices>() : json.map((value) => new ChargeInvoiceRowsPaidInvoices.fromJson(value)).toList();
  }

  static Map<String, ChargeInvoiceRowsPaidInvoices> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ChargeInvoiceRowsPaidInvoices>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ChargeInvoiceRowsPaidInvoices.fromJson(value));
    }
    return map;
  }
}
