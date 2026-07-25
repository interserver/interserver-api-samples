part of swagger.api;

class LoginInfo {
  /* A logo image url. */
  String logo = null;
/* A base64 encoded image to use for rendering the alternateive captcha. */
  String captcha = null;
/* The desired langauge to render the site with. */
  String language = null;

  LoginServiceCounts counts = null;

  LoginInfo();

  @override
  String toString() {
    return 'LoginInfo[logo=$logo, captcha=$captcha, language=$language, counts=$counts, ]';
  }

  LoginInfo.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    logo = json['logo'];
    captcha = json['captcha'];
    language = json['language'];
    counts = new LoginServiceCounts.fromJson(json['counts']);
  }

  Map<String, dynamic> toJson() {
    return {
      'logo': logo,
      'captcha': captcha,
      'language': language,
      'counts': counts
     };
  }

  static List<LoginInfo> listFromJson(List<dynamic> json) {
    return json == null ? new List<LoginInfo>() : json.map((value) => new LoginInfo.fromJson(value)).toList();
  }

  static Map<String, LoginInfo> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, LoginInfo>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new LoginInfo.fromJson(value));
    }
    return map;
  }
}
