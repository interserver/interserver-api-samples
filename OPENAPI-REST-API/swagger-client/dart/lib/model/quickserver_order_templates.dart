part of swagger.api;

class QuickserverOrderTemplates {
  
  QuickserverOrderTemplatesUbuntu64 ubuntu = null;

  QuickserverOrderTemplates();

  @override
  String toString() {
    return 'QuickserverOrderTemplates[ubuntu=$ubuntu, ]';
  }

  QuickserverOrderTemplates.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    ubuntu = new QuickserverOrderTemplatesUbuntu64.fromJson(json['Ubuntu']);
  }

  Map<String, dynamic> toJson() {
    return {
      'Ubuntu': ubuntu
     };
  }

  static List<QuickserverOrderTemplates> listFromJson(List<dynamic> json) {
    return json == null ? new List<QuickserverOrderTemplates>() : json.map((value) => new QuickserverOrderTemplates.fromJson(value)).toList();
  }

  static Map<String, QuickserverOrderTemplates> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, QuickserverOrderTemplates>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new QuickserverOrderTemplates.fromJson(value));
    }
    return map;
  }
}
