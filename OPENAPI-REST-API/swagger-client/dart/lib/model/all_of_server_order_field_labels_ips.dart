part of swagger.api;

class AllOfServerOrderFieldLabelsIps {
  /* Name of the field label. */
  String name = null;
/* Active status of the field label. */
  int active = null;

  AllOfServerOrderFieldLabelsIps();

  @override
  String toString() {
    return 'AllOfServerOrderFieldLabelsIps[name=$name, active=$active, ]';
  }

  AllOfServerOrderFieldLabelsIps.fromJson(Map<String, dynamic> json) {
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

  static List<AllOfServerOrderFieldLabelsIps> listFromJson(List<dynamic> json) {
    return json == null ? new List<AllOfServerOrderFieldLabelsIps>() : json.map((value) => new AllOfServerOrderFieldLabelsIps.fromJson(value)).toList();
  }

  static Map<String, AllOfServerOrderFieldLabelsIps> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AllOfServerOrderFieldLabelsIps>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AllOfServerOrderFieldLabelsIps.fromJson(value));
    }
    return map;
  }
}
