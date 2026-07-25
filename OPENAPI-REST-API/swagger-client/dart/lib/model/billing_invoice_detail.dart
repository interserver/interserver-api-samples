part of swagger.api;

class BillingInvoiceDetail {
  
  BillingInvoiceDetail();

  @override
  String toString() {
    return 'BillingInvoiceDetail[]';
  }

  BillingInvoiceDetail.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<BillingInvoiceDetail> listFromJson(List<dynamic> json) {
    return json == null ? new List<BillingInvoiceDetail>() : json.map((value) => new BillingInvoiceDetail.fromJson(value)).toList();
  }

  static Map<String, BillingInvoiceDetail> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BillingInvoiceDetail>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new BillingInvoiceDetail.fromJson(value));
    }
    return map;
  }
}
