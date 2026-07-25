part of swagger.api;

class ChargeInvoiceRows {
  /* Whether the invoice retrieval was successful. */
  bool success = null;
/* List of invoices for the service. */
  Map<String, ChargeInvoiceRowsInvoices> invoices = {};

  ChargeInvoiceRows();

  @override
  String toString() {
    return 'ChargeInvoiceRows[success=$success, invoices=$invoices, ]';
  }

  ChargeInvoiceRows.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    success = json['success'];
    invoices = ChargeInvoiceRowsInvoices.mapFromJson(json['invoices']);
  }

  Map<String, dynamic> toJson() {
    return {
      'success': success,
      'invoices': invoices
     };
  }

  static List<ChargeInvoiceRows> listFromJson(List<dynamic> json) {
    return json == null ? new List<ChargeInvoiceRows>() : json.map((value) => new ChargeInvoiceRows.fromJson(value)).toList();
  }

  static Map<String, ChargeInvoiceRows> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ChargeInvoiceRows>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ChargeInvoiceRows.fromJson(value));
    }
    return map;
  }
}
