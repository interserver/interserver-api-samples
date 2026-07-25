part of swagger.api;

class VpsDALicense {
  /* License tier name. */
  String name = null;
/* License tier sub-name. */
  String subName = null;
/* Monthly cost in cents. */
  int cost = null;
/* Image path for the disabled state icon. */
  String imgDisabled = null;
/* Image path for the active state icon. */
  String imgActive = null;

  VpsDALicense();

  @override
  String toString() {
    return 'VpsDALicense[name=$name, subName=$subName, cost=$cost, imgDisabled=$imgDisabled, imgActive=$imgActive, ]';
  }

  VpsDALicense.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
    subName = json['sub_name'];
    cost = json['cost'];
    imgDisabled = json['img_disabled'];
    imgActive = json['img_active'];
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'sub_name': subName,
      'cost': cost,
      'img_disabled': imgDisabled,
      'img_active': imgActive
     };
  }

  static List<VpsDALicense> listFromJson(List<dynamic> json) {
    return json == null ? new List<VpsDALicense>() : json.map((value) => new VpsDALicense.fromJson(value)).toList();
  }

  static Map<String, VpsDALicense> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, VpsDALicense>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new VpsDALicense.fromJson(value));
    }
    return map;
  }
}
