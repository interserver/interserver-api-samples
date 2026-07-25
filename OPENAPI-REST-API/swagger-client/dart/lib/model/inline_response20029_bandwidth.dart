part of swagger.api;

class InlineResponse20029Bandwidth {
  
  String id = null;

  String shortDesc = null;

  String longDesc = null;

  String monthlyPrice = null;

  InlineResponse20029Bandwidth();

  @override
  String toString() {
    return 'InlineResponse20029Bandwidth[id=$id, shortDesc=$shortDesc, longDesc=$longDesc, monthlyPrice=$monthlyPrice, ]';
  }

  InlineResponse20029Bandwidth.fromJson(Map<String, dynamic> json) {
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

  static List<InlineResponse20029Bandwidth> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20029Bandwidth>() : json.map((value) => new InlineResponse20029Bandwidth.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20029Bandwidth> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse20029Bandwidth>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse20029Bandwidth.fromJson(value));
    }
    return map;
  }
}
