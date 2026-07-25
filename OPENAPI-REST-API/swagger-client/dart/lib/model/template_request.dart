part of swagger.api;

class TemplateRequest {
  /* OS Template Filename */
  String template = null;
/* Password for Root / Administrator Account. */
  String password = null;
/* Password for this account. */
  String localPassword = null;

  TemplateRequest();

  @override
  String toString() {
    return 'TemplateRequest[template=$template, password=$password, localPassword=$localPassword, ]';
  }

  TemplateRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    template = json['template'];
    password = json['password'];
    localPassword = json['localPassword'];
  }

  Map<String, dynamic> toJson() {
    return {
      'template': template,
      'password': password,
      'localPassword': localPassword
     };
  }

  static List<TemplateRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<TemplateRequest>() : json.map((value) => new TemplateRequest.fromJson(value)).toList();
  }

  static Map<String, TemplateRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TemplateRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TemplateRequest.fromJson(value));
    }
    return map;
  }
}
