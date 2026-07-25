part of swagger.api;

class VpsOrderPackageCosts {
  
  double n57 = null;

  VpsOrderPackageCosts();

  @override
  String toString() {
    return 'VpsOrderPackageCosts[n57=$n57, ]';
  }

  VpsOrderPackageCosts.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    n57 = json['57'];
  }

  Map<String, dynamic> toJson() {
    return {
      '57': n57
     };
  }

  static List<VpsOrderPackageCosts> listFromJson(List<dynamic> json) {
    return json == null ? new List<VpsOrderPackageCosts>() : json.map((value) => new VpsOrderPackageCosts.fromJson(value)).toList();
  }

  static Map<String, VpsOrderPackageCosts> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, VpsOrderPackageCosts>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new VpsOrderPackageCosts.fromJson(value));
    }
    return map;
  }
}
