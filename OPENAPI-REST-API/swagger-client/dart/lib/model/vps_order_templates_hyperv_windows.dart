part of swagger.api;

class VpsOrderTemplatesHypervWindows {
  
  String windows2019Standard = null;

  String windows2022 = null;

  VpsOrderTemplatesHypervWindows();

  @override
  String toString() {
    return 'VpsOrderTemplatesHypervWindows[windows2019Standard=$windows2019Standard, windows2022=$windows2022, ]';
  }

  VpsOrderTemplatesHypervWindows.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    windows2019Standard = json['Windows2019Standard'];
    windows2022 = json['Windows2022'];
  }

  Map<String, dynamic> toJson() {
    return {
      'Windows2019Standard': windows2019Standard,
      'Windows2022': windows2022
     };
  }

  static List<VpsOrderTemplatesHypervWindows> listFromJson(List<dynamic> json) {
    return json == null ? new List<VpsOrderTemplatesHypervWindows>() : json.map((value) => new VpsOrderTemplatesHypervWindows.fromJson(value)).toList();
  }

  static Map<String, VpsOrderTemplatesHypervWindows> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, VpsOrderTemplatesHypervWindows>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new VpsOrderTemplatesHypervWindows.fromJson(value));
    }
    return map;
  }
}
