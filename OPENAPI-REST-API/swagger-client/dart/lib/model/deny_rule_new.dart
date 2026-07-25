part of swagger.api;

class DenyRuleNew {
  /* Mail account username that will be tied to this rule.  If not specified the first active mail order will be used. */
  String user = null;
/* The type of deny rule. */
  String type = null;
  //enum typeEnum {  domain,  email,  startswith,  destination,  };
/* The content of the rule.  If a domain type rule then an example would be google.com. For a begins with type an example would be msgid-.  For the email typer an example would be user@server.com. */
  String data = null;

  DenyRuleNew();

  @override
  String toString() {
    return 'DenyRuleNew[user=$user, type=$type, data=$data, ]';
  }

  DenyRuleNew.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    user = json['user'];
    type = json['type'];
    data = json['data'];
  }

  Map<String, dynamic> toJson() {
    return {
      'user': user,
      'type': type,
      'data': data
     };
  }

  static List<DenyRuleNew> listFromJson(List<dynamic> json) {
    return json == null ? new List<DenyRuleNew>() : json.map((value) => new DenyRuleNew.fromJson(value)).toList();
  }

  static Map<String, DenyRuleNew> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DenyRuleNew>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DenyRuleNew.fromJson(value));
    }
    return map;
  }
}
