part of swagger.api;

class MailExtraInfoTableRow {
  /* The description of the extra info table row. */
  String desc = null;
/* The value of the extra info table row. */
  String value = null;

  MailExtraInfoTableRow();

  @override
  String toString() {
    return 'MailExtraInfoTableRow[desc=$desc, value=$value, ]';
  }

  MailExtraInfoTableRow.fromJson(Map<String, dynamic> json) {
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

  static List<MailExtraInfoTableRow> listFromJson(List<dynamic> json) {
    return json == null ? new List<MailExtraInfoTableRow>() : json.map((value) => new MailExtraInfoTableRow.fromJson(value)).toList();
  }

  static Map<String, MailExtraInfoTableRow> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MailExtraInfoTableRow>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new MailExtraInfoTableRow.fromJson(value));
    }
    return map;
  }
}
