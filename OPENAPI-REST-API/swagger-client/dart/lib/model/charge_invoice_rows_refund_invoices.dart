part of swagger.api;

class ChargeInvoiceRowsRefundInvoices {
  
  double invoicesId = null;

  String invoicesDescription = null;

  double invoicesAmount = null;

  String invoicesDate = null;

  String invoicesCurrency = null;

  String currencySymbol = null;

  String invoicesDateFormatted = null;

  ChargeInvoiceRowsRefundInvoices();

  @override
  String toString() {
    return 'ChargeInvoiceRowsRefundInvoices[invoicesId=$invoicesId, invoicesDescription=$invoicesDescription, invoicesAmount=$invoicesAmount, invoicesDate=$invoicesDate, invoicesCurrency=$invoicesCurrency, currencySymbol=$currencySymbol, invoicesDateFormatted=$invoicesDateFormatted, ]';
  }

  ChargeInvoiceRowsRefundInvoices.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    invoicesId = json['invoices_id'];
    invoicesDescription = json['invoices_description'];
    invoicesAmount = json['invoices_amount'];
    invoicesDate = json['invoices_date'];
    invoicesCurrency = json['invoices_currency'];
    currencySymbol = json['currency_symbol'];
    invoicesDateFormatted = json['invoices_date_formatted'];
  }

  Map<String, dynamic> toJson() {
    return {
      'invoices_id': invoicesId,
      'invoices_description': invoicesDescription,
      'invoices_amount': invoicesAmount,
      'invoices_date': invoicesDate,
      'invoices_currency': invoicesCurrency,
      'currency_symbol': currencySymbol,
      'invoices_date_formatted': invoicesDateFormatted
     };
  }

  static List<ChargeInvoiceRowsRefundInvoices> listFromJson(List<dynamic> json) {
    return json == null ? new List<ChargeInvoiceRowsRefundInvoices>() : json.map((value) => new ChargeInvoiceRowsRefundInvoices.fromJson(value)).toList();
  }

  static Map<String, ChargeInvoiceRowsRefundInvoices> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ChargeInvoiceRowsRefundInvoices>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ChargeInvoiceRowsRefundInvoices.fromJson(value));
    }
    return map;
  }
}
