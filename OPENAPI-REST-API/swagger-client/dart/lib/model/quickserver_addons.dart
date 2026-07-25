part of swagger.api;

class QuickserverAddons {
  /* Table title */
  String title = null;

  List<QuickserverAddonsRow> rows = [];

  QuickserverAddons();

  @override
  String toString() {
    return 'QuickserverAddons[title=$title, rows=$rows, ]';
  }

  QuickserverAddons.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    title = json['title'];
    rows = QuickserverAddonsRow.listFromJson(json['rows']);
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'rows': rows
     };
  }

  static List<QuickserverAddons> listFromJson(List<dynamic> json) {
    return json == null ? new List<QuickserverAddons>() : json.map((value) => new QuickserverAddons.fromJson(value)).toList();
  }

  static Map<String, QuickserverAddons> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, QuickserverAddons>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new QuickserverAddons.fromJson(value));
    }
    return map;
  }
}
