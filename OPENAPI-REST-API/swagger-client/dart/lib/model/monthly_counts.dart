part of swagger.api;

class MonthlyCounts {
  
  MonthlyCounts();

  @override
  String toString() {
    return 'MonthlyCounts[]';
  }

  MonthlyCounts.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<MonthlyCounts> listFromJson(List<dynamic> json) {
    return json == null ? new List<MonthlyCounts>() : json.map((value) => new MonthlyCounts.fromJson(value)).toList();
  }

  static Map<String, MonthlyCounts> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MonthlyCounts>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new MonthlyCounts.fromJson(value));
    }
    return map;
  }
}
