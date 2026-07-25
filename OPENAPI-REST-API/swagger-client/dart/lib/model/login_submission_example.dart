part of swagger.api;

class LoginSubmissionExample {
  
  String login = null;

  String passwd = null;

  String remember = null;

  LoginSubmissionExampleGrecaptcharesponse gRecaptchaResponse = null;
/* Two Factor Authentication Response. */
  String tfa = null;

  LoginSubmissionExample();

  @override
  String toString() {
    return 'LoginSubmissionExample[login=$login, passwd=$passwd, remember=$remember, gRecaptchaResponse=$gRecaptchaResponse, tfa=$tfa, ]';
  }

  LoginSubmissionExample.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    login = json['login'];
    passwd = json['passwd'];
    remember = json['remember'];
    gRecaptchaResponse = new LoginSubmissionExampleGrecaptcharesponse.fromJson(json['g-recaptcha-response']);
    tfa = json['tfa'];
  }

  Map<String, dynamic> toJson() {
    return {
      'login': login,
      'passwd': passwd,
      'remember': remember,
      'g-recaptcha-response': gRecaptchaResponse,
      'tfa': tfa
     };
  }

  static List<LoginSubmissionExample> listFromJson(List<dynamic> json) {
    return json == null ? new List<LoginSubmissionExample>() : json.map((value) => new LoginSubmissionExample.fromJson(value)).toList();
  }

  static Map<String, LoginSubmissionExample> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, LoginSubmissionExample>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new LoginSubmissionExample.fromJson(value));
    }
    return map;
  }
}
