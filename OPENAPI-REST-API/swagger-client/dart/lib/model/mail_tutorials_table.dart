part of swagger.api;

class MailTutorialsTable {
  /* The title of the tutorials table. */
  String title = null;
/* The rows of the tutorials table. */
  List<MailTutorialsTableRow> rows = [];

  MailTutorialsTable();

  @override
  String toString() {
    return 'MailTutorialsTable[title=$title, rows=$rows, ]';
  }

  MailTutorialsTable.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    title = json['title'];
    rows = MailTutorialsTableRow.listFromJson(json['rows']);
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'rows': rows
     };
  }

  static List<MailTutorialsTable> listFromJson(List<dynamic> json) {
    return json == null ? new List<MailTutorialsTable>() : json.map((value) => new MailTutorialsTable.fromJson(value)).toList();
  }

  static Map<String, MailTutorialsTable> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MailTutorialsTable>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new MailTutorialsTable.fromJson(value));
    }
    return map;
  }
}
