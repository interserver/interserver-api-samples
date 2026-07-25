part of swagger.api;

class MailTutorialsTableRow {
  /* The description of the tutorials table row. */
  String desc = null;
/* The value of the tutorials table row. */
  String value = null;

  MailTutorialsTableRow();

  @override
  String toString() {
    return 'MailTutorialsTableRow[desc=$desc, value=$value, ]';
  }

  MailTutorialsTableRow.fromJson(Map<String, dynamic> json) {
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

  static List<MailTutorialsTableRow> listFromJson(List<dynamic> json) {
    return json == null ? new List<MailTutorialsTableRow>() : json.map((value) => new MailTutorialsTableRow.fromJson(value)).toList();
  }

  static Map<String, MailTutorialsTableRow> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MailTutorialsTableRow>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new MailTutorialsTableRow.fromJson(value));
    }
    return map;
  }
}
