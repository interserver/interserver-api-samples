part of swagger.api;

class LoginSuccessResponse {
  
  String sessionId = null;

  int accountId = null;

  String accountLid = null;

  String ima = null;

  String gravatar = null;

  LoginSuccessResponse();

  @override
  String toString() {
    return 'LoginSuccessResponse[sessionId=$sessionId, accountId=$accountId, accountLid=$accountLid, ima=$ima, gravatar=$gravatar, ]';
  }

  LoginSuccessResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    sessionId = json['sessionId'];
    accountId = json['account_id'];
    accountLid = json['account_lid'];
    ima = json['ima'];
    gravatar = json['gravatar'];
  }

  Map<String, dynamic> toJson() {
    return {
      'sessionId': sessionId,
      'account_id': accountId,
      'account_lid': accountLid,
      'ima': ima,
      'gravatar': gravatar
     };
  }

  static List<LoginSuccessResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<LoginSuccessResponse>() : json.map((value) => new LoginSuccessResponse.fromJson(value)).toList();
  }

  static Map<String, LoginSuccessResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, LoginSuccessResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new LoginSuccessResponse.fromJson(value));
    }
    return map;
  }
}
