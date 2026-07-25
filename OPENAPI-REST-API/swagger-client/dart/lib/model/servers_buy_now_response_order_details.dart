part of swagger.api;

class ServersBuyNowResponseOrderDetails {
  /* The newly created service ID for the ordered server. */
  double serviceId = null;
/* The invoice ID generated for the order. */
  double invoiceId = null;

  ServersBuyNowResponseOrderDetails();

  @override
  String toString() {
    return 'ServersBuyNowResponseOrderDetails[serviceId=$serviceId, invoiceId=$invoiceId, ]';
  }

  ServersBuyNowResponseOrderDetails.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    serviceId = json['service_id'];
    invoiceId = json['invoice_id'];
  }

  Map<String, dynamic> toJson() {
    return {
      'service_id': serviceId,
      'invoice_id': invoiceId
     };
  }

  static List<ServersBuyNowResponseOrderDetails> listFromJson(List<dynamic> json) {
    return json == null ? new List<ServersBuyNowResponseOrderDetails>() : json.map((value) => new ServersBuyNowResponseOrderDetails.fromJson(value)).toList();
  }

  static Map<String, ServersBuyNowResponseOrderDetails> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ServersBuyNowResponseOrderDetails>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ServersBuyNowResponseOrderDetails.fromJson(value));
    }
    return map;
  }
}
