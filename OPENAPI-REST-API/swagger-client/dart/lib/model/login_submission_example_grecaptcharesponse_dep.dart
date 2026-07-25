part of swagger.api;

class LoginSubmissionExampleGrecaptcharesponseDep {
  
  int w = null;

  int n = null;

  LoginSubmissionExampleGrecaptcharesponseDep();

  @override
  String toString() {
    return 'LoginSubmissionExampleGrecaptcharesponseDep[w=$w, n=$n, ]';
  }

  LoginSubmissionExampleGrecaptcharesponseDep.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    w = json['w'];
    n = json['n'];
  }

  Map<String, dynamic> toJson() {
    return {
      'w': w,
      'n': n
     };
  }

  static List<LoginSubmissionExampleGrecaptcharesponseDep> listFromJson(List<dynamic> json) {
    return json == null ? new List<LoginSubmissionExampleGrecaptcharesponseDep>() : json.map((value) => new LoginSubmissionExampleGrecaptcharesponseDep.fromJson(value)).toList();
  }

  static Map<String, LoginSubmissionExampleGrecaptcharesponseDep> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, LoginSubmissionExampleGrecaptcharesponseDep>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new LoginSubmissionExampleGrecaptcharesponseDep.fromJson(value));
    }
    return map;
  }
}
