part of swagger.api;

class VpsOrderServiceTypes {
  
  VpsOrderServiceTypes32 n32 = null;

  VpsOrderServiceTypes();

  @override
  String toString() {
    return 'VpsOrderServiceTypes[n32=$n32, ]';
  }

  VpsOrderServiceTypes.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    n32 = new VpsOrderServiceTypes32.fromJson(json['32']);
  }

  Map<String, dynamic> toJson() {
    return {
      '32': n32
     };
  }

  static List<VpsOrderServiceTypes> listFromJson(List<dynamic> json) {
    return json == null ? new List<VpsOrderServiceTypes>() : json.map((value) => new VpsOrderServiceTypes.fromJson(value)).toList();
  }

  static Map<String, VpsOrderServiceTypes> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, VpsOrderServiceTypes>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new VpsOrderServiceTypes.fromJson(value));
    }
    return map;
  }
}
