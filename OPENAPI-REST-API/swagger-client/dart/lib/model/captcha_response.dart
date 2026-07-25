part of swagger.api;

class CaptchaResponse {
  /* The base64 encoded captcha image. */
  String captcha = null;

  CaptchaResponse();

  @override
  String toString() {
    return 'CaptchaResponse[captcha=$captcha, ]';
  }

  CaptchaResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    captcha = json['captcha'];
  }

  Map<String, dynamic> toJson() {
    return {
      'captcha': captcha
     };
  }

  static List<CaptchaResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<CaptchaResponse>() : json.map((value) => new CaptchaResponse.fromJson(value)).toList();
  }

  static Map<String, CaptchaResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CaptchaResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CaptchaResponse.fromJson(value));
    }
    return map;
  }
}
