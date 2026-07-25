part of swagger.api;

class QuickserverOrderVersionCentosstream8 {
  /* Version details of CentOS Stream 8. */
  String centosstream8 = null;

  QuickserverOrderVersionCentosstream8();

  @override
  String toString() {
    return 'QuickserverOrderVersionCentosstream8[centosstream8=$centosstream8, ]';
  }

  QuickserverOrderVersionCentosstream8.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    centosstream8 = json['centosstream-8'];
  }

  Map<String, dynamic> toJson() {
    return {
      'centosstream-8': centosstream8
     };
  }

  static List<QuickserverOrderVersionCentosstream8> listFromJson(List<dynamic> json) {
    return json == null ? new List<QuickserverOrderVersionCentosstream8>() : json.map((value) => new QuickserverOrderVersionCentosstream8.fromJson(value)).toList();
  }

  static Map<String, QuickserverOrderVersionCentosstream8> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, QuickserverOrderVersionCentosstream8>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new QuickserverOrderVersionCentosstream8.fromJson(value));
    }
    return map;
  }
}
