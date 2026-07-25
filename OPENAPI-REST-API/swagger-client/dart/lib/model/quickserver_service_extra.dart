part of swagger.api;

class QuickserverServiceExtra {
  /* Platform information */
  String platform = null;

  QuickserverServiceExtra();

  @override
  String toString() {
    return 'QuickserverServiceExtra[platform=$platform, ]';
  }

  QuickserverServiceExtra.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    platform = json['platform'];
  }

  Map<String, dynamic> toJson() {
    return {
      'platform': platform
     };
  }

  static List<QuickserverServiceExtra> listFromJson(List<dynamic> json) {
    return json == null ? new List<QuickserverServiceExtra>() : json.map((value) => new QuickserverServiceExtra.fromJson(value)).toList();
  }

  static Map<String, QuickserverServiceExtra> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, QuickserverServiceExtra>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new QuickserverServiceExtra.fromJson(value));
    }
    return map;
  }
}
