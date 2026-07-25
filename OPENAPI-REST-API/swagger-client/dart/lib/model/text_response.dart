part of swagger.api;

class TextResponse {
  /* Response text */
  String text = null;
/* Response message */
  String message = null;

  TextResponse();

  @override
  String toString() {
    return 'TextResponse[text=$text, message=$message, ]';
  }

  TextResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    text = json['text'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    return {
      'text': text,
      'message': message
     };
  }

  static List<TextResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<TextResponse>() : json.map((value) => new TextResponse.fromJson(value)).toList();
  }

  static Map<String, TextResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TextResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TextResponse.fromJson(value));
    }
    return map;
  }
}
