part of swagger.api;

class BillingInvoiceList {
  /* Invoice rows returned for the account. */
  List<Object> rows = [];
/* Totals and summary data for the invoices list. */
  Object summary = null;

  BillingInvoiceList();

  @override
  String toString() {
    return 'BillingInvoiceList[rows=$rows, summary=$summary, ]';
  }

  BillingInvoiceList.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    rows = Object.listFromJson(json['rows']);
    summary = new Object.fromJson(json['summary']);
  }

  Map<String, dynamic> toJson() {
    return {
      'rows': rows,
      'summary': summary
     };
  }

  static List<BillingInvoiceList> listFromJson(List<dynamic> json) {
    return json == null ? new List<BillingInvoiceList>() : json.map((value) => new BillingInvoiceList.fromJson(value)).toList();
  }

  static Map<String, BillingInvoiceList> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BillingInvoiceList>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new BillingInvoiceList.fromJson(value));
    }
    return map;
  }
}
