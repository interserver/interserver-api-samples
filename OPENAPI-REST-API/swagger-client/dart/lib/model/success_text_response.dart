part of swagger.api;

class SuccessTextResponse {
  /* Indicates whether or not the command was successful or not. */
  bool success = null;
/* Text associated with the response. */
  String text = null;
/* Optional Action relating to the response. */
  String action = null;

  SuccessTextResponse();

  @override
  String toString() {
    return 'SuccessTextResponse[success=$success, text=$text, action=$action, ]';
  }

  SuccessTextResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    success = json['success'];
    text = json['text'];
    action = json['action'];
  }

  Map<String, dynamic> toJson() {
    return {
      'success': success,
      'text': text,
      'action': action
     };
  }

  static List<SuccessTextResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<SuccessTextResponse>() : json.map((value) => new SuccessTextResponse.fromJson(value)).toList();
  }

  static Map<String, SuccessTextResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, SuccessTextResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new SuccessTextResponse.fromJson(value));
    }
    return map;
  }
}
