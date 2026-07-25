part of swagger.api;

class BackupsOrderServiceTypes {
  
  BackupsOrderServiceTypes n11006 = null;

  BackupsOrderServiceTypes();

  @override
  String toString() {
    return 'BackupsOrderServiceTypes[n11006=$n11006, ]';
  }

  BackupsOrderServiceTypes.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    n11006 = new BackupsOrderServiceTypes.fromJson(json['11006']);
  }

  Map<String, dynamic> toJson() {
    return {
      '11006': n11006
     };
  }

  static List<BackupsOrderServiceTypes> listFromJson(List<dynamic> json) {
    return json == null ? new List<BackupsOrderServiceTypes>() : json.map((value) => new BackupsOrderServiceTypes.fromJson(value)).toList();
  }

  static Map<String, BackupsOrderServiceTypes> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BackupsOrderServiceTypes>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new BackupsOrderServiceTypes.fromJson(value));
    }
    return map;
  }
}
