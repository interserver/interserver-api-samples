part of swagger.api;

class VpsOrderTemplates {
  
  VpsOrderTemplatesHyperv hyperv = null;

  VpsOrderTemplates();

  @override
  String toString() {
    return 'VpsOrderTemplates[hyperv=$hyperv, ]';
  }

  VpsOrderTemplates.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    hyperv = new VpsOrderTemplatesHyperv.fromJson(json['hyperv']);
  }

  Map<String, dynamic> toJson() {
    return {
      'hyperv': hyperv
     };
  }

  static List<VpsOrderTemplates> listFromJson(List<dynamic> json) {
    return json == null ? new List<VpsOrderTemplates>() : json.map((value) => new VpsOrderTemplates.fromJson(value)).toList();
  }

  static Map<String, VpsOrderTemplates> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, VpsOrderTemplates>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new VpsOrderTemplates.fromJson(value));
    }
    return map;
  }
}
