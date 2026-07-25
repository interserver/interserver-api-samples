part of swagger.api;

class InlineResponse20013ExtraInfoTablesScrubIps {
  
  String title = null;

  List<InlineResponse20013ExtraInfoTablesScrubIpsRows> rows = [];

  InlineResponse20013ExtraInfoTablesScrubIps();

  @override
  String toString() {
    return 'InlineResponse20013ExtraInfoTablesScrubIps[title=$title, rows=$rows, ]';
  }

  InlineResponse20013ExtraInfoTablesScrubIps.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    title = json['title'];
    rows = InlineResponse20013ExtraInfoTablesScrubIpsRows.listFromJson(json['rows']);
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'rows': rows
     };
  }

  static List<InlineResponse20013ExtraInfoTablesScrubIps> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20013ExtraInfoTablesScrubIps>() : json.map((value) => new InlineResponse20013ExtraInfoTablesScrubIps.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20013ExtraInfoTablesScrubIps> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse20013ExtraInfoTablesScrubIps>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse20013ExtraInfoTablesScrubIps.fromJson(value));
    }
    return map;
  }
}
