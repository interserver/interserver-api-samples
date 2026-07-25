part of swagger.api;

class VpsDAData {
  
  VpsDALicense free = null;

  VpsDAData();

  @override
  String toString() {
    return 'VpsDAData[free=$free, ]';
  }

  VpsDAData.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    free = new VpsDALicense.fromJson(json['free']);
  }

  Map<String, dynamic> toJson() {
    return {
      'free': free
     };
  }

  static List<VpsDAData> listFromJson(List<dynamic> json) {
    return json == null ? new List<VpsDAData>() : json.map((value) => new VpsDAData.fromJson(value)).toList();
  }

  static Map<String, VpsDAData> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, VpsDAData>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new VpsDAData.fromJson(value));
    }
    return map;
  }
}
