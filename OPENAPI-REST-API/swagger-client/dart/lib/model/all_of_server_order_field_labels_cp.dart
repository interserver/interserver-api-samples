part of swagger.api;

class AllOfServerOrderFieldLabelsCp {
  /* Name of the field label. */
  String name = null;
/* Active status of the field label. */
  int active = null;

  AllOfServerOrderFieldLabelsCp();

  @override
  String toString() {
    return 'AllOfServerOrderFieldLabelsCp[name=$name, active=$active, ]';
  }

  AllOfServerOrderFieldLabelsCp.fromJson(Map<String, dynamic> json) {
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

  static List<AllOfServerOrderFieldLabelsCp> listFromJson(List<dynamic> json) {
    return json == null ? new List<AllOfServerOrderFieldLabelsCp>() : json.map((value) => new AllOfServerOrderFieldLabelsCp.fromJson(value)).toList();
  }

  static Map<String, AllOfServerOrderFieldLabelsCp> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AllOfServerOrderFieldLabelsCp>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AllOfServerOrderFieldLabelsCp.fromJson(value));
    }
    return map;
  }
}
