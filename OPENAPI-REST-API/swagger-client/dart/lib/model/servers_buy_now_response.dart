part of swagger.api;

class ServersBuyNowResponse {
  /* Whether the order was placed successfully. */
  bool success = null;
/* Human-readable status message. */
  String text = null;

  ServersBuyNowResponseOrderDetails orderDetails = null;

  ServersBuyNowResponse();

  @override
  String toString() {
    return 'ServersBuyNowResponse[success=$success, text=$text, orderDetails=$orderDetails, ]';
  }

  ServersBuyNowResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    success = json['success'];
    text = json['text'];
    orderDetails = new ServersBuyNowResponseOrderDetails.fromJson(json['order_details']);
  }

  Map<String, dynamic> toJson() {
    return {
      'success': success,
      'text': text,
      'order_details': orderDetails
     };
  }

  static List<ServersBuyNowResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<ServersBuyNowResponse>() : json.map((value) => new ServersBuyNowResponse.fromJson(value)).toList();
  }

  static Map<String, ServersBuyNowResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ServersBuyNowResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ServersBuyNowResponse.fromJson(value));
    }
    return map;
  }
}
