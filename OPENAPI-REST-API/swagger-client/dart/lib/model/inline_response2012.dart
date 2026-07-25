part of swagger.api;

class InlineResponse2012 {
  
  bool success = null;

  String text = null;

  InlineResponse2012OrderDetails orderDetails = null;

  InlineResponse2012();

  @override
  String toString() {
    return 'InlineResponse2012[success=$success, text=$text, orderDetails=$orderDetails, ]';
  }

  InlineResponse2012.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    success = json['success'];
    text = json['text'];
    orderDetails = new InlineResponse2012OrderDetails.fromJson(json['order_details']);
  }

  Map<String, dynamic> toJson() {
    return {
      'success': success,
      'text': text,
      'order_details': orderDetails
     };
  }

  static List<InlineResponse2012> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse2012>() : json.map((value) => new InlineResponse2012.fromJson(value)).toList();
  }

  static Map<String, InlineResponse2012> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse2012>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse2012.fromJson(value));
    }
    return map;
  }
}
