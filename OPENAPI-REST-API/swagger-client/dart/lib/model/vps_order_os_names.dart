part of swagger.api;

class VpsOrderOsNames {
  
  String opensuse = null;

  String ubuntu = null;

  VpsOrderOsNames();

  @override
  String toString() {
    return 'VpsOrderOsNames[opensuse=$opensuse, ubuntu=$ubuntu, ]';
  }

  VpsOrderOsNames.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    opensuse = json['opensuse'];
    ubuntu = json['ubuntu'];
  }

  Map<String, dynamic> toJson() {
    return {
      'opensuse': opensuse,
      'ubuntu': ubuntu
     };
  }

  static List<VpsOrderOsNames> listFromJson(List<dynamic> json) {
    return json == null ? new List<VpsOrderOsNames>() : json.map((value) => new VpsOrderOsNames.fromJson(value)).toList();
  }

  static Map<String, VpsOrderOsNames> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, VpsOrderOsNames>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new VpsOrderOsNames.fromJson(value));
    }
    return map;
  }
}
