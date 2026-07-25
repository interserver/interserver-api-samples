part of swagger.api;

class AllOfServerOrderFieldLabelsMemory {
  /* Name of the field label. */
  String name = null;
/* Active status of the field label. */
  int active = null;

  AllOfServerOrderFieldLabelsMemory();

  @override
  String toString() {
    return 'AllOfServerOrderFieldLabelsMemory[name=$name, active=$active, ]';
  }

  AllOfServerOrderFieldLabelsMemory.fromJson(Map<String, dynamic> json) {
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

  static List<AllOfServerOrderFieldLabelsMemory> listFromJson(List<dynamic> json) {
    return json == null ? new List<AllOfServerOrderFieldLabelsMemory>() : json.map((value) => new AllOfServerOrderFieldLabelsMemory.fromJson(value)).toList();
  }

  static Map<String, AllOfServerOrderFieldLabelsMemory> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AllOfServerOrderFieldLabelsMemory>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AllOfServerOrderFieldLabelsMemory.fromJson(value));
    }
    return map;
  }
}
