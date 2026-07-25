part of swagger.api;

class ChargeInvoiceRowsInvoices {
  /* Unique invoice ID. */
  double invoicesId = null;
/* Description of the invoice charge. */
  String invoicesDescription = null;
/* Invoice amount. */
  double invoicesAmount = null;
/* Invoice date. */
  String invoicesDate = null;

  double invoicesPaid = null;
  //enum invoicesPaidEnum {  0,  1,  };

  String invoicesDueDate = null;

  String invoicesCurrency = null;

  String currencySymbol = null;

  String invoicesDateFormatted = null;
/* This is optional when invoices_paid = 1 this array will show */
  Map<String, ChargeInvoiceRowsPaidInvoices> paidInvoices = {};

  ChargeInvoiceRowsInvoices();

  @override
  String toString() {
    return 'ChargeInvoiceRowsInvoices[invoicesId=$invoicesId, invoicesDescription=$invoicesDescription, invoicesAmount=$invoicesAmount, invoicesDate=$invoicesDate, invoicesPaid=$invoicesPaid, invoicesDueDate=$invoicesDueDate, invoicesCurrency=$invoicesCurrency, currencySymbol=$currencySymbol, invoicesDateFormatted=$invoicesDateFormatted, paidInvoices=$paidInvoices, ]';
  }

  ChargeInvoiceRowsInvoices.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    invoicesId = json['invoices_id'];
    invoicesDescription = json['invoices_description'];
    invoicesAmount = json['invoices_amount'];
    invoicesDate = json['invoices_date'];
    invoicesPaid = json['invoices_paid'];
    invoicesDueDate = json['invoices_due_date'];
    invoicesCurrency = json['invoices_currency'];
    currencySymbol = json['currency_symbol'];
    invoicesDateFormatted = json['invoices_date_formatted'];
    paidInvoices = ChargeInvoiceRowsPaidInvoices.mapFromJson(json['paid_invoices']);
  }

  Map<String, dynamic> toJson() {
    return {
      'invoices_id': invoicesId,
      'invoices_description': invoicesDescription,
      'invoices_amount': invoicesAmount,
      'invoices_date': invoicesDate,
      'invoices_paid': invoicesPaid,
      'invoices_due_date': invoicesDueDate,
      'invoices_currency': invoicesCurrency,
      'currency_symbol': currencySymbol,
      'invoices_date_formatted': invoicesDateFormatted,
      'paid_invoices': paidInvoices
     };
  }

  static List<ChargeInvoiceRowsInvoices> listFromJson(List<dynamic> json) {
    return json == null ? new List<ChargeInvoiceRowsInvoices>() : json.map((value) => new ChargeInvoiceRowsInvoices.fromJson(value)).toList();
  }

  static Map<String, ChargeInvoiceRowsInvoices> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ChargeInvoiceRowsInvoices>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ChargeInvoiceRowsInvoices.fromJson(value));
    }
    return map;
  }
}
