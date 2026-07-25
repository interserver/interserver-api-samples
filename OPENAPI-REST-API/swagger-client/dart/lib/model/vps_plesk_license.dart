part of swagger.api;

class VpsPleskLicense {
  
  int id = null;

  String name = null;

  String subName = null;

  int cost = null;

  VpsPleskLicense();

  @override
  String toString() {
    return 'VpsPleskLicense[id=$id, name=$name, subName=$subName, cost=$cost, ]';
  }

  VpsPleskLicense.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    name = json['name'];
    subName = json['sub_name'];
    cost = json['cost'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'sub_name': subName,
      'cost': cost
     };
  }

  static List<VpsPleskLicense> listFromJson(List<dynamic> json) {
    return json == null ? new List<VpsPleskLicense>() : json.map((value) => new VpsPleskLicense.fromJson(value)).toList();
  }

  static Map<String, VpsPleskLicense> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, VpsPleskLicense>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new VpsPleskLicense.fromJson(value));
    }
    return map;
  }
}
