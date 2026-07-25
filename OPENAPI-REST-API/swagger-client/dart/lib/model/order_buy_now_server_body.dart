part of swagger.api;

class OrderBuyNowServerBody {
  /* The ID of the buy-it-now server configuration to order. Use the server listing from `GET /servers/order/buy_now_server` to find valid IDs. */
  double serverId = null;
/* The fully-qualified hostname to assign to the server. */
  String serverHostname = null;
/* The root or administrator password to set on the server. */
  String serverRootPassword = null;

  OrderBuyNowServerBody();

  @override
  String toString() {
    return 'OrderBuyNowServerBody[serverId=$serverId, serverHostname=$serverHostname, serverRootPassword=$serverRootPassword, ]';
  }

  OrderBuyNowServerBody.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    serverId = json['server_id'];
    serverHostname = json['server_hostname'];
    serverRootPassword = json['server_root_password'];
  }

  Map<String, dynamic> toJson() {
    return {
      'server_id': serverId,
      'server_hostname': serverHostname,
      'server_root_password': serverRootPassword
     };
  }

  static List<OrderBuyNowServerBody> listFromJson(List<dynamic> json) {
    return json == null ? new List<OrderBuyNowServerBody>() : json.map((value) => new OrderBuyNowServerBody.fromJson(value)).toList();
  }

  static Map<String, OrderBuyNowServerBody> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OrderBuyNowServerBody>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OrderBuyNowServerBody.fromJson(value));
    }
    return map;
  }
}
