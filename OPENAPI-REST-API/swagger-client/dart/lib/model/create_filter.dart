part of swagger.api;

class CreateFilter {
  
  String filterType = null;

  int port = null;

  CreateFilter();

  @override
  String toString() {
    return 'CreateFilter[filterType=$filterType, port=$port, ]';
  }

  CreateFilter.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    filterType = json['filter_type'];
    port = json['port'];
  }

  Map<String, dynamic> toJson() {
    return {
      'filter_type': filterType,
      'port': port
     };
  }

  static List<CreateFilter> listFromJson(List<dynamic> json) {
    return json == null ? new List<CreateFilter>() : json.map((value) => new CreateFilter.fromJson(value)).toList();
  }

  static Map<String, CreateFilter> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CreateFilter>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CreateFilter.fromJson(value));
    }
    return map;
  }
}
