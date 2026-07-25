part of swagger.api;

class WebsiteLoginResponse {
  
  String type = null;

  String location = null;

  WebsiteLoginResponse();

  @override
  String toString() {
    return 'WebsiteLoginResponse[type=$type, location=$location, ]';
  }

  WebsiteLoginResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type = json['type'];
    location = json['location'];
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'location': location
     };
  }

  static List<WebsiteLoginResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<WebsiteLoginResponse>() : json.map((value) => new WebsiteLoginResponse.fromJson(value)).toList();
  }

  static Map<String, WebsiteLoginResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, WebsiteLoginResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new WebsiteLoginResponse.fromJson(value));
    }
    return map;
  }
}
