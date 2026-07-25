part of swagger.api;

class QuickserverAddonsRow {
  /* Description */
  String desc = null;
/* Value */
  String value = null;

  QuickserverAddonsRow();

  @override
  String toString() {
    return 'QuickserverAddonsRow[desc=$desc, value=$value, ]';
  }

  QuickserverAddonsRow.fromJson(Map<String, dynamic> json) {
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

  static List<QuickserverAddonsRow> listFromJson(List<dynamic> json) {
    return json == null ? new List<QuickserverAddonsRow>() : json.map((value) => new QuickserverAddonsRow.fromJson(value)).toList();
  }

  static Map<String, QuickserverAddonsRow> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, QuickserverAddonsRow>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new QuickserverAddonsRow.fromJson(value));
    }
    return map;
  }
}
