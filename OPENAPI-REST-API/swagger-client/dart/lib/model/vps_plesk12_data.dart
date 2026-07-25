part of swagger.api;

class VpsPlesk12Data {
  
  VpsPleskLicense admin = null;

  VpsPleskLicense pro = null;

  VpsPleskLicense host = null;

  VpsPlesk12Data();

  @override
  String toString() {
    return 'VpsPlesk12Data[admin=$admin, pro=$pro, host=$host, ]';
  }

  VpsPlesk12Data.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    admin = new VpsPleskLicense.fromJson(json['admin']);
    pro = new VpsPleskLicense.fromJson(json['pro']);
    host = new VpsPleskLicense.fromJson(json['host']);
  }

  Map<String, dynamic> toJson() {
    return {
      'admin': admin,
      'pro': pro,
      'host': host
     };
  }

  static List<VpsPlesk12Data> listFromJson(List<dynamic> json) {
    return json == null ? new List<VpsPlesk12Data>() : json.map((value) => new VpsPlesk12Data.fromJson(value)).toList();
  }

  static Map<String, VpsPlesk12Data> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, VpsPlesk12Data>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new VpsPlesk12Data.fromJson(value));
    }
    return map;
  }
}
