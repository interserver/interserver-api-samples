part of swagger.api;

class ServersBuyNowError {
  /* Always false for error responses. */
  bool success = null;
/* Human-readable error summary. */
  String text = null;
/* List of specific validation error messages. */
  List<String> errors = [];

  ServersBuyNowError();

  @override
  String toString() {
    return 'ServersBuyNowError[success=$success, text=$text, errors=$errors, ]';
  }

  ServersBuyNowError.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    success = json['success'];
    text = json['text'];
    errors = (json['errors'] as List).map((item) => item as String).toList();
  }

  Map<String, dynamic> toJson() {
    return {
      'success': success,
      'text': text,
      'errors': errors
     };
  }

  static List<ServersBuyNowError> listFromJson(List<dynamic> json) {
    return json == null ? new List<ServersBuyNowError>() : json.map((value) => new ServersBuyNowError.fromJson(value)).toList();
  }

  static Map<String, ServersBuyNowError> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ServersBuyNowError>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ServersBuyNowError.fromJson(value));
    }
    return map;
  }
}
