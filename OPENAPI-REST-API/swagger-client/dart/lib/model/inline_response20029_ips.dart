part of swagger.api;

class InlineResponse20029Ips {
  
  String id = null;

  String shortDesc = null;

  String longDesc = null;

  String monthlyPrice = null;

  InlineResponse20029Ips();

  @override
  String toString() {
    return 'InlineResponse20029Ips[id=$id, shortDesc=$shortDesc, longDesc=$longDesc, monthlyPrice=$monthlyPrice, ]';
  }

  InlineResponse20029Ips.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    shortDesc = json['short_desc'];
    longDesc = json['long_desc'];
    monthlyPrice = json['monthly_price'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'short_desc': shortDesc,
      'long_desc': longDesc,
      'monthly_price': monthlyPrice
     };
  }

  static List<InlineResponse20029Ips> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20029Ips>() : json.map((value) => new InlineResponse20029Ips.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20029Ips> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse20029Ips>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse20029Ips.fromJson(value));
    }
    return map;
  }
}
