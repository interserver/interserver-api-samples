part of swagger.api;

class VpsOrderTemplatesHyperv {
  
  VpsOrderTemplatesHypervWindows windows = null;

  VpsOrderTemplatesHyperv();

  @override
  String toString() {
    return 'VpsOrderTemplatesHyperv[windows=$windows, ]';
  }

  VpsOrderTemplatesHyperv.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    windows = new VpsOrderTemplatesHypervWindows.fromJson(json['windows']);
  }

  Map<String, dynamic> toJson() {
    return {
      'windows': windows
     };
  }

  static List<VpsOrderTemplatesHyperv> listFromJson(List<dynamic> json) {
    return json == null ? new List<VpsOrderTemplatesHyperv>() : json.map((value) => new VpsOrderTemplatesHyperv.fromJson(value)).toList();
  }

  static Map<String, VpsOrderTemplatesHyperv> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, VpsOrderTemplatesHyperv>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new VpsOrderTemplatesHyperv.fromJson(value));
    }
    return map;
  }
}
