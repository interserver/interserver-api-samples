part of swagger.api;

class AllOfServerOrderFieldLabelsHd {
  /* Name of the field label. */
  String name = null;
/* Active status of the field label. */
  int active = null;

  AllOfServerOrderFieldLabelsHd();

  @override
  String toString() {
    return 'AllOfServerOrderFieldLabelsHd[name=$name, active=$active, ]';
  }

  AllOfServerOrderFieldLabelsHd.fromJson(Map<String, dynamic> json) {
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

  static List<AllOfServerOrderFieldLabelsHd> listFromJson(List<dynamic> json) {
    return json == null ? new List<AllOfServerOrderFieldLabelsHd>() : json.map((value) => new AllOfServerOrderFieldLabelsHd.fromJson(value)).toList();
  }

  static Map<String, AllOfServerOrderFieldLabelsHd> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AllOfServerOrderFieldLabelsHd>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AllOfServerOrderFieldLabelsHd.fromJson(value));
    }
    return map;
  }
}
