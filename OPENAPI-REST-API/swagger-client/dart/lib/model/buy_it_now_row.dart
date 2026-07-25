part of swagger.api;

class BuyItNowRow {
  /* Unique server ID. Use this as `server_id` in `POST /servers/order/buy_now_server`. */
  String serverId = null;

  List<OneOfBuyItNowRowCpuItems> cpu = [];

  String memory = null;

  Map<String, String> disk = {};

  String bandwidth = null;

  String ips = null;

  String location = null;

  int price = null;

  BuyItNowRow();

  @override
  String toString() {
    return 'BuyItNowRow[serverId=$serverId, cpu=$cpu, memory=$memory, disk=$disk, bandwidth=$bandwidth, ips=$ips, location=$location, price=$price, ]';
  }

  BuyItNowRow.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    serverId = json['server_id'];
    cpu = Object.listFromJson(json['cpu']);
    memory = json['memory'];
    disk = json['disk'];
    bandwidth = json['bandwidth'];
    ips = json['ips'];
    location = json['location'];
    price = json['price'];
  }

  Map<String, dynamic> toJson() {
    return {
      'server_id': serverId,
      'cpu': cpu,
      'memory': memory,
      'disk': disk,
      'bandwidth': bandwidth,
      'ips': ips,
      'location': location,
      'price': price
     };
  }

  static List<BuyItNowRow> listFromJson(List<dynamic> json) {
    return json == null ? new List<BuyItNowRow>() : json.map((value) => new BuyItNowRow.fromJson(value)).toList();
  }

  static Map<String, BuyItNowRow> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BuyItNowRow>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new BuyItNowRow.fromJson(value));
    }
    return map;
  }
}
