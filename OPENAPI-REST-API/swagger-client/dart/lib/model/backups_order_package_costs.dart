part of swagger.api;

class BackupsOrderPackageCosts {
  /* The cost associated with package 11006. */
  int n11006 = null;

  BackupsOrderPackageCosts();

  @override
  String toString() {
    return 'BackupsOrderPackageCosts[n11006=$n11006, ]';
  }

  BackupsOrderPackageCosts.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    n11006 = json['11006'];
  }

  Map<String, dynamic> toJson() {
    return {
      '11006': n11006
     };
  }

  static List<BackupsOrderPackageCosts> listFromJson(List<dynamic> json) {
    return json == null ? new List<BackupsOrderPackageCosts>() : json.map((value) => new BackupsOrderPackageCosts.fromJson(value)).toList();
  }

  static Map<String, BackupsOrderPackageCosts> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BackupsOrderPackageCosts>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new BackupsOrderPackageCosts.fromJson(value));
    }
    return map;
  }
}
