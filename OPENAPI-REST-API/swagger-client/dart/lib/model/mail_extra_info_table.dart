part of swagger.api;

class MailExtraInfoTable {
  /* The title of the extra info table. */
  String title = null;
/* The rows of the extra info table. */
  List<MailExtraInfoTableRow> rows = [];

  MailExtraInfoTable();

  @override
  String toString() {
    return 'MailExtraInfoTable[title=$title, rows=$rows, ]';
  }

  MailExtraInfoTable.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    title = json['title'];
    rows = MailExtraInfoTableRow.listFromJson(json['rows']);
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'rows': rows
     };
  }

  static List<MailExtraInfoTable> listFromJson(List<dynamic> json) {
    return json == null ? new List<MailExtraInfoTable>() : json.map((value) => new MailExtraInfoTable.fromJson(value)).toList();
  }

  static Map<String, MailExtraInfoTable> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MailExtraInfoTable>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new MailExtraInfoTable.fromJson(value));
    }
    return map;
  }
}
