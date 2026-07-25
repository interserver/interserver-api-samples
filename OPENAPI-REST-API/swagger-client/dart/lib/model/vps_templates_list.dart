part of swagger.api;

class VpsTemplatesList {
  /* A listing of the templates. */
  List<VpsTemplateRow> templates = [];

  VpsTemplatesList();

  @override
  String toString() {
    return 'VpsTemplatesList[templates=$templates, ]';
  }

  VpsTemplatesList.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    templates = VpsTemplateRow.listFromJson(json['templates']);
  }

  Map<String, dynamic> toJson() {
    return {
      'templates': templates
     };
  }

  static List<VpsTemplatesList> listFromJson(List<dynamic> json) {
    return json == null ? new List<VpsTemplatesList>() : json.map((value) => new VpsTemplatesList.fromJson(value)).toList();
  }

  static Map<String, VpsTemplatesList> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, VpsTemplatesList>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new VpsTemplatesList.fromJson(value));
    }
    return map;
  }
}
