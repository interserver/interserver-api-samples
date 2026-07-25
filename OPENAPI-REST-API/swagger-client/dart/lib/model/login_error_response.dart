part of swagger.api;

class LoginErrorResponse {
  
  String message = null;

  String field = null;

  LoginErrorResponse();

  @override
  String toString() {
    return 'LoginErrorResponse[message=$message, field=$field, ]';
  }

  LoginErrorResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    message = json['message'];
    field = json['field'];
  }

  Map<String, dynamic> toJson() {
    return {
      'message': message,
      'field': field
     };
  }

  static List<LoginErrorResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<LoginErrorResponse>() : json.map((value) => new LoginErrorResponse.fromJson(value)).toList();
  }

  static Map<String, LoginErrorResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, LoginErrorResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new LoginErrorResponse.fromJson(value));
    }
    return map;
  }
}
