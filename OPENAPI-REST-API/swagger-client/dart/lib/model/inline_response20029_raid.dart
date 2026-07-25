part of swagger.api;

class InlineResponse20029Raid {
  
  String id = null;

  String shortDesc = null;

  String longDesc = null;

  String monthlyPrice = null;

  InlineResponse20029Raid();

  @override
  String toString() {
    return 'InlineResponse20029Raid[id=$id, shortDesc=$shortDesc, longDesc=$longDesc, monthlyPrice=$monthlyPrice, ]';
  }

  InlineResponse20029Raid.fromJson(Map<String, dynamic> json) {
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

  static List<InlineResponse20029Raid> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20029Raid>() : json.map((value) => new InlineResponse20029Raid.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20029Raid> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse20029Raid>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse20029Raid.fromJson(value));
    }
    return map;
  }
}
