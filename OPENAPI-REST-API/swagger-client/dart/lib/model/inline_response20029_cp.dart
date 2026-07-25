part of swagger.api;

class InlineResponse20029Cp {
  
  String id = null;

  String shortDesc = null;

  String longDesc = null;

  String osType = null;

  String monthlyPrice = null;

  InlineResponse20029Cp();

  @override
  String toString() {
    return 'InlineResponse20029Cp[id=$id, shortDesc=$shortDesc, longDesc=$longDesc, osType=$osType, monthlyPrice=$monthlyPrice, ]';
  }

  InlineResponse20029Cp.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    shortDesc = json['short_desc'];
    longDesc = json['long_desc'];
    osType = json['os_type'];
    monthlyPrice = json['monthly_price'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'short_desc': shortDesc,
      'long_desc': longDesc,
      'os_type': osType,
      'monthly_price': monthlyPrice
     };
  }

  static List<InlineResponse20029Cp> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20029Cp>() : json.map((value) => new InlineResponse20029Cp.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20029Cp> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse20029Cp>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse20029Cp.fromJson(value));
    }
    return map;
  }
}
