part of swagger.api;

class ServiceOrderPostResponse {
  /* Whether the order was accepted and can proceed to payment. */
  bool continue_ = null;
/* List of validation errors (empty on success). */
  List<String> errors = [];
/* Total cost of the order. */
  String totalCost = null;
/* Primary invoice ID for payment. */
  String iid = null;
/* All invoice identifiers associated with the order. */
  List<String> iids = [];
/* Numeric invoice IDs for use with billing endpoints. */
  List<String> realIids = [];
/* The new service ID created by the order. */
  int serviceId = null;
/* Human-readable description of the invoice. */
  String invoiceDescription = null;

  ServiceOrderPostResponse();

  @override
  String toString() {
    return 'ServiceOrderPostResponse[continue_=$continue_, errors=$errors, totalCost=$totalCost, iid=$iid, iids=$iids, realIids=$realIids, serviceId=$serviceId, invoiceDescription=$invoiceDescription, ]';
  }

  ServiceOrderPostResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    continue_ = json['continue'];
    errors = (json['errors'] as List).map((item) => item as String).toList();
    totalCost = json['total_cost'];
    iid = json['iid'];
    iids = (json['iids'] as List).map((item) => item as String).toList();
    realIids = (json['real_iids'] as List).map((item) => item as String).toList();
    serviceId = json['serviceId'];
    invoiceDescription = json['invoice_description'];
  }

  Map<String, dynamic> toJson() {
    return {
      'continue': continue_,
      'errors': errors,
      'total_cost': totalCost,
      'iid': iid,
      'iids': iids,
      'real_iids': realIids,
      'serviceId': serviceId,
      'invoice_description': invoiceDescription
     };
  }

  static List<ServiceOrderPostResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<ServiceOrderPostResponse>() : json.map((value) => new ServiceOrderPostResponse.fromJson(value)).toList();
  }

  static Map<String, ServiceOrderPostResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ServiceOrderPostResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ServiceOrderPostResponse.fromJson(value));
    }
    return map;
  }
}
