part of swagger.api;

class QuickserverOrderVersion {
  
  QuickserverOrderVersionCentosstream8 centosstream8 = null;

  QuickserverOrderVersion();

  @override
  String toString() {
    return 'QuickserverOrderVersion[centosstream8=$centosstream8, ]';
  }

  QuickserverOrderVersion.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    centosstream8 = new QuickserverOrderVersionCentosstream8.fromJson(json['centosstream-8']);
  }

  Map<String, dynamic> toJson() {
    return {
      'centosstream-8': centosstream8
     };
  }

  static List<QuickserverOrderVersion> listFromJson(List<dynamic> json) {
    return json == null ? new List<QuickserverOrderVersion>() : json.map((value) => new QuickserverOrderVersion.fromJson(value)).toList();
  }

  static Map<String, QuickserverOrderVersion> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, QuickserverOrderVersion>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new QuickserverOrderVersion.fromJson(value));
    }
    return map;
  }
}
