part of swagger.api;

class ScrubIpFilterTypesFilters {
  
  String name = null;

  String desc = null;

  ScrubIpFilterTypesFilters();

  @override
  String toString() {
    return 'ScrubIpFilterTypesFilters[name=$name, desc=$desc, ]';
  }

  ScrubIpFilterTypesFilters.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
    desc = json['desc'];
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'desc': desc
     };
  }

  static List<ScrubIpFilterTypesFilters> listFromJson(List<dynamic> json) {
    return json == null ? new List<ScrubIpFilterTypesFilters>() : json.map((value) => new ScrubIpFilterTypesFilters.fromJson(value)).toList();
  }

  static Map<String, ScrubIpFilterTypesFilters> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ScrubIpFilterTypesFilters>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ScrubIpFilterTypesFilters.fromJson(value));
    }
    return map;
  }
}
