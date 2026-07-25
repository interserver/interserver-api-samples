part of swagger.api;

class VpsIPInfoRow {
  /* Description */
  String desc = null;
/* Value */
  String value = null;

  VpsIPInfoRow();

  @override
  String toString() {
    return 'VpsIPInfoRow[desc=$desc, value=$value, ]';
  }

  VpsIPInfoRow.fromJson(Map<String, dynamic> json) {
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

  static List<VpsIPInfoRow> listFromJson(List<dynamic> json) {
    return json == null ? new List<VpsIPInfoRow>() : json.map((value) => new VpsIPInfoRow.fromJson(value)).toList();
  }

  static Map<String, VpsIPInfoRow> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, VpsIPInfoRow>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new VpsIPInfoRow.fromJson(value));
    }
    return map;
  }
}
