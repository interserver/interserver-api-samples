part of swagger.api;

class InlineResponse2012OrderDetails {
  
  int totalCost = null;

  int serviceId = null;

  int invoiceId = null;

  String invoiceDescription = null;

  InlineResponse2012OrderDetailsCjParams cjParams = null;

  InlineResponse2012OrderDetails();

  @override
  String toString() {
    return 'InlineResponse2012OrderDetails[totalCost=$totalCost, serviceId=$serviceId, invoiceId=$invoiceId, invoiceDescription=$invoiceDescription, cjParams=$cjParams, ]';
  }

  InlineResponse2012OrderDetails.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    totalCost = json['total_cost'];
    serviceId = json['service_id'];
    invoiceId = json['invoice_id'];
    invoiceDescription = json['invoice_description'];
    cjParams = new InlineResponse2012OrderDetailsCjParams.fromJson(json['cj_params']);
  }

  Map<String, dynamic> toJson() {
    return {
      'total_cost': totalCost,
      'service_id': serviceId,
      'invoice_id': invoiceId,
      'invoice_description': invoiceDescription,
      'cj_params': cjParams
     };
  }

  static List<InlineResponse2012OrderDetails> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse2012OrderDetails>() : json.map((value) => new InlineResponse2012OrderDetails.fromJson(value)).toList();
  }

  static Map<String, InlineResponse2012OrderDetails> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse2012OrderDetails>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse2012OrderDetails.fromJson(value));
    }
    return map;
  }
}
