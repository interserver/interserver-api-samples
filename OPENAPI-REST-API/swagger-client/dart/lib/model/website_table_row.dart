part of swagger.api;

class WebsiteTableRow {
  /* Description for the row */
  String desc = null;
/* Value for the row */
  String value = null;

  WebsiteTableRow();

  @override
  String toString() {
    return 'WebsiteTableRow[desc=$desc, value=$value, ]';
  }

  WebsiteTableRow.fromJson(Map<String, dynamic> json) {
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

  static List<WebsiteTableRow> listFromJson(List<dynamic> json) {
    return json == null ? new List<WebsiteTableRow>() : json.map((value) => new WebsiteTableRow.fromJson(value)).toList();
  }

  static Map<String, WebsiteTableRow> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, WebsiteTableRow>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new WebsiteTableRow.fromJson(value));
    }
    return map;
  }
}
