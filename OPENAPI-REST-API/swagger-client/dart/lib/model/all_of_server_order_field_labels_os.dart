part of swagger.api;

class AllOfServerOrderFieldLabelsOs {
  /* Name of the field label. */
  String name = null;
/* Active status of the field label. */
  int active = null;

  AllOfServerOrderFieldLabelsOs();

  @override
  String toString() {
    return 'AllOfServerOrderFieldLabelsOs[name=$name, active=$active, ]';
  }

  AllOfServerOrderFieldLabelsOs.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
    active = json['active'];
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'active': active
     };
  }

  static List<AllOfServerOrderFieldLabelsOs> listFromJson(List<dynamic> json) {
    return json == null ? new List<AllOfServerOrderFieldLabelsOs>() : json.map((value) => new AllOfServerOrderFieldLabelsOs.fromJson(value)).toList();
  }

  static Map<String, AllOfServerOrderFieldLabelsOs> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AllOfServerOrderFieldLabelsOs>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AllOfServerOrderFieldLabelsOs.fromJson(value));
    }
    return map;
  }
}
