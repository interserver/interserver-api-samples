part of swagger.api;

class BackupLoginResponse {
  /* Indicates whether a login session was created. */
  bool success = null;
/* Login URL or error text returned by the storage provider. */
  String text = null;

  BackupLoginResponse();

  @override
  String toString() {
    return 'BackupLoginResponse[success=$success, text=$text, ]';
  }

  BackupLoginResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    success = json['success'];
    text = json['text'];
  }

  Map<String, dynamic> toJson() {
    return {
      'success': success,
      'text': text
     };
  }

  static List<BackupLoginResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<BackupLoginResponse>() : json.map((value) => new BackupLoginResponse.fromJson(value)).toList();
  }

  static Map<String, BackupLoginResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BackupLoginResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new BackupLoginResponse.fromJson(value));
    }
    return map;
  }
}
