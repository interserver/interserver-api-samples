part of swagger.api;

class QuickserverIpTableRow {
  /* Description */
  String desc = null;
/* Value */
  String value = null;

  QuickserverIpTableRow();

  @override
  String toString() {
    return 'QuickserverIpTableRow[desc=$desc, value=$value, ]';
  }

  QuickserverIpTableRow.fromJson(Map<String, dynamic> json) {
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

  static List<QuickserverIpTableRow> listFromJson(List<dynamic> json) {
    return json == null ? new List<QuickserverIpTableRow>() : json.map((value) => new QuickserverIpTableRow.fromJson(value)).toList();
  }

  static Map<String, QuickserverIpTableRow> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, QuickserverIpTableRow>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new QuickserverIpTableRow.fromJson(value));
    }
    return map;
  }
}
