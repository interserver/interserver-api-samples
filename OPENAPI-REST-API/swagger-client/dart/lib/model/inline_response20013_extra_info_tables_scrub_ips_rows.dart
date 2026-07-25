part of swagger.api;

class InlineResponse20013ExtraInfoTablesScrubIpsRows {
  
  String desc = null;

  String value = null;

  InlineResponse20013ExtraInfoTablesScrubIpsRows();

  @override
  String toString() {
    return 'InlineResponse20013ExtraInfoTablesScrubIpsRows[desc=$desc, value=$value, ]';
  }

  InlineResponse20013ExtraInfoTablesScrubIpsRows.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    desc = json['desc'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    return {
      'desc': desc,
      'value': value
     };
  }

  static List<InlineResponse20013ExtraInfoTablesScrubIpsRows> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20013ExtraInfoTablesScrubIpsRows>() : json.map((value) => new InlineResponse20013ExtraInfoTablesScrubIpsRows.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20013ExtraInfoTablesScrubIpsRows> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse20013ExtraInfoTablesScrubIpsRows>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse20013ExtraInfoTablesScrubIpsRows.fromJson(value));
    }
    return map;
  }
}
