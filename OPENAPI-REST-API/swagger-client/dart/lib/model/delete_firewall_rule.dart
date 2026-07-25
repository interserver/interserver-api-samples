part of swagger.api;

class Delete Firewall Rule {
  
  int ruleId = null;

  Delete Firewall Rule();

  @override
  String toString() {
    return 'Delete Firewall Rule[ruleId=$ruleId, ]';
  }

  Delete Firewall Rule.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    ruleId = json['rule_id'];
  }

  Map<String, dynamic> toJson() {
    return {
      'rule_id': ruleId
     };
  }

  static List<Delete Firewall Rule> listFromJson(List<dynamic> json) {
    return json == null ? new List<Delete Firewall Rule>() : json.map((value) => new Delete Firewall Rule.fromJson(value)).toList();
  }

  static Map<String, Delete Firewall Rule> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Delete Firewall Rule>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Delete Firewall Rule.fromJson(value));
    }
    return map;
  }
}
