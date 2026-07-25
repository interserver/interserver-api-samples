part of swagger.api;

class AllOfServerOrderFieldLabelsRaid {
  /* Name of the field label. */
  String name = null;
/* Active status of the field label. */
  int active = null;

  AllOfServerOrderFieldLabelsRaid();

  @override
  String toString() {
    return 'AllOfServerOrderFieldLabelsRaid[name=$name, active=$active, ]';
  }

  AllOfServerOrderFieldLabelsRaid.fromJson(Map<String, dynamic> json) {
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

  static List<AllOfServerOrderFieldLabelsRaid> listFromJson(List<dynamic> json) {
    return json == null ? new List<AllOfServerOrderFieldLabelsRaid>() : json.map((value) => new AllOfServerOrderFieldLabelsRaid.fromJson(value)).toList();
  }

  static Map<String, AllOfServerOrderFieldLabelsRaid> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AllOfServerOrderFieldLabelsRaid>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AllOfServerOrderFieldLabelsRaid.fromJson(value));
    }
    return map;
  }
}
