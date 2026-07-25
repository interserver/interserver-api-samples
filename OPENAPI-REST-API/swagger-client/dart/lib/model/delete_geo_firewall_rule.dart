part of swagger.api;

class Delete Geo Firewall Rule {
  
  int ruleId = null;

  Delete Geo Firewall Rule();

  @override
  String toString() {
    return 'Delete Geo Firewall Rule[ruleId=$ruleId, ]';
  }

  Delete Geo Firewall Rule.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    ruleId = json['rule_id'];
  }

  Map<String, dynamic> toJson() {
    return {
      'rule_id': ruleId
     };
  }

  static List<Delete Geo Firewall Rule> listFromJson(List<dynamic> json) {
    return json == null ? new List<Delete Geo Firewall Rule>() : json.map((value) => new Delete Geo Firewall Rule.fromJson(value)).toList();
  }

  static Map<String, Delete Geo Firewall Rule> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Delete Geo Firewall Rule>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Delete Geo Firewall Rule.fromJson(value));
    }
    return map;
  }
}
