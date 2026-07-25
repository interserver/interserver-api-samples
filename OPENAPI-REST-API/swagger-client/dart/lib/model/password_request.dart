part of swagger.api;

class PasswordRequest {
  
  String password = null;

  PasswordRequest();

  @override
  String toString() {
    return 'PasswordRequest[password=$password, ]';
  }

  PasswordRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    return {
      'password': password
     };
  }

  static List<PasswordRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<PasswordRequest>() : json.map((value) => new PasswordRequest.fromJson(value)).toList();
  }

  static Map<String, PasswordRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PasswordRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PasswordRequest.fromJson(value));
    }
    return map;
  }
}
