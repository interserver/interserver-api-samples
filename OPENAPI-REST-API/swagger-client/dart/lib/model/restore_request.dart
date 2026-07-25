part of swagger.api;

class RestoreRequest {
  
  String backup = null;

  String password = null;

  RestoreRequest();

  @override
  String toString() {
    return 'RestoreRequest[backup=$backup, password=$password, ]';
  }

  RestoreRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    backup = json['backup'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    return {
      'backup': backup,
      'password': password
     };
  }

  static List<RestoreRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<RestoreRequest>() : json.map((value) => new RestoreRequest.fromJson(value)).toList();
  }

  static Map<String, RestoreRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RestoreRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new RestoreRequest.fromJson(value));
    }
    return map;
  }
}
