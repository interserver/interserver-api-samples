part of swagger.api;

class OneOfAccountInfoMaxMindResponseRiskScore {
  
  OneOfAccountInfoMaxMindResponseRiskScore();

  @override
  String toString() {
    return 'OneOfAccountInfoMaxMindResponseRiskScore[]';
  }

  OneOfAccountInfoMaxMindResponseRiskScore.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<OneOfAccountInfoMaxMindResponseRiskScore> listFromJson(List<dynamic> json) {
    return json == null ? new List<OneOfAccountInfoMaxMindResponseRiskScore>() : json.map((value) => new OneOfAccountInfoMaxMindResponseRiskScore.fromJson(value)).toList();
  }

  static Map<String, OneOfAccountInfoMaxMindResponseRiskScore> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OneOfAccountInfoMaxMindResponseRiskScore>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OneOfAccountInfoMaxMindResponseRiskScore.fromJson(value));
    }
    return map;
  }
}
