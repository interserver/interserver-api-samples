part of swagger.api;

class TimezoneUpdate {
  /* The time zone */
  String timezone = null;

  TimezoneUpdate();

  @override
  String toString() {
    return 'TimezoneUpdate[timezone=$timezone, ]';
  }

  TimezoneUpdate.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    timezone = json['timezone'];
  }

  Map<String, dynamic> toJson() {
    return {
      'timezone': timezone
     };
  }

  static List<TimezoneUpdate> listFromJson(List<dynamic> json) {
    return json == null ? new List<TimezoneUpdate>() : json.map((value) => new TimezoneUpdate.fromJson(value)).toList();
  }

  static Map<String, TimezoneUpdate> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TimezoneUpdate>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TimezoneUpdate.fromJson(value));
    }
    return map;
  }
}
