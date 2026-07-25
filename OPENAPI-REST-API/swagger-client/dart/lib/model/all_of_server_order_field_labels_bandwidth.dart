part of swagger.api;

class AllOfServerOrderFieldLabelsBandwidth {
  /* Name of the field label. */
  String name = null;
/* Active status of the field label. */
  int active = null;

  AllOfServerOrderFieldLabelsBandwidth();

  @override
  String toString() {
    return 'AllOfServerOrderFieldLabelsBandwidth[name=$name, active=$active, ]';
  }

  AllOfServerOrderFieldLabelsBandwidth.fromJson(Map<String, dynamic> json) {
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

  static List<AllOfServerOrderFieldLabelsBandwidth> listFromJson(List<dynamic> json) {
    return json == null ? new List<AllOfServerOrderFieldLabelsBandwidth>() : json.map((value) => new AllOfServerOrderFieldLabelsBandwidth.fromJson(value)).toList();
  }

  static Map<String, AllOfServerOrderFieldLabelsBandwidth> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AllOfServerOrderFieldLabelsBandwidth>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AllOfServerOrderFieldLabelsBandwidth.fromJson(value));
    }
    return map;
  }
}
