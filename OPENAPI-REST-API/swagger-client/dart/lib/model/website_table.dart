part of swagger.api;

class WebsiteTable {
  /* Title of the table */
  String title = null;

  List<WebsiteTableRow> rows = [];

  WebsiteTable();

  @override
  String toString() {
    return 'WebsiteTable[title=$title, rows=$rows, ]';
  }

  WebsiteTable.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    title = json['title'];
    rows = WebsiteTableRow.listFromJson(json['rows']);
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'rows': rows
     };
  }

  static List<WebsiteTable> listFromJson(List<dynamic> json) {
    return json == null ? new List<WebsiteTable>() : json.map((value) => new WebsiteTable.fromJson(value)).toList();
  }

  static Map<String, WebsiteTable> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, WebsiteTable>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new WebsiteTable.fromJson(value));
    }
    return map;
  }
}
