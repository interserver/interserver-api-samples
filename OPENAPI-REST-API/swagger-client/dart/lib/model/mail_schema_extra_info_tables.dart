part of swagger.api;

class MailSchemaExtraInfoTables {
  
  MailExtraInfoTable mail = null;

  MailTutorialsTable tutorials = null;

  MailSchemaExtraInfoTables();

  @override
  String toString() {
    return 'MailSchemaExtraInfoTables[mail=$mail, tutorials=$tutorials, ]';
  }

  MailSchemaExtraInfoTables.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    mail = new MailExtraInfoTable.fromJson(json['mail']);
    tutorials = new MailTutorialsTable.fromJson(json['tutorials']);
  }

  Map<String, dynamic> toJson() {
    return {
      'mail': mail,
      'tutorials': tutorials
     };
  }

  static List<MailSchemaExtraInfoTables> listFromJson(List<dynamic> json) {
    return json == null ? new List<MailSchemaExtraInfoTables>() : json.map((value) => new MailSchemaExtraInfoTables.fromJson(value)).toList();
  }

  static Map<String, MailSchemaExtraInfoTables> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MailSchemaExtraInfoTables>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new MailSchemaExtraInfoTables.fromJson(value));
    }
    return map;
  }
}
