part of swagger.api;

class LoginSubmissionExampleGrecaptcharesponse {
  
  bool vIsShallow = null;

  LoginSubmissionExampleGrecaptcharesponseDep dep = null;

  bool vIsRef = null;

  String rawValue = null;

  String value = null;

  LoginSubmissionExampleGrecaptcharesponse();

  @override
  String toString() {
    return 'LoginSubmissionExampleGrecaptcharesponse[vIsShallow=$vIsShallow, dep=$dep, vIsRef=$vIsRef, rawValue=$rawValue, value=$value, ]';
  }

  LoginSubmissionExampleGrecaptcharesponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    vIsShallow = json['__v_isShallow'];
    dep = new LoginSubmissionExampleGrecaptcharesponseDep.fromJson(json['dep']);
    vIsRef = json['__v_isRef'];
    rawValue = json['_rawValue'];
    value = json['_value'];
  }

  Map<String, dynamic> toJson() {
    return {
      '__v_isShallow': vIsShallow,
      'dep': dep,
      '__v_isRef': vIsRef,
      '_rawValue': rawValue,
      '_value': value
     };
  }

  static List<LoginSubmissionExampleGrecaptcharesponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<LoginSubmissionExampleGrecaptcharesponse>() : json.map((value) => new LoginSubmissionExampleGrecaptcharesponse.fromJson(value)).toList();
  }

  static Map<String, LoginSubmissionExampleGrecaptcharesponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, LoginSubmissionExampleGrecaptcharesponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new LoginSubmissionExampleGrecaptcharesponse.fromJson(value));
    }
    return map;
  }
}
