part of swagger.api;

class InlineResponseMap200 {
  /* English display name of the locale. */
  String name = null;
/* Display name of the locale in its own language. */
  String localName = null;

  InlineResponseMap200();

  @override
  String toString() {
    return 'InlineResponseMap200[name=$name, localName=$localName, ]';
  }

  InlineResponseMap200.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
    localName = json['local_name'];
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'local_name': localName
     };
  }

  static List<InlineResponseMap200> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponseMap200>() : json.map((value) => new InlineResponseMap200.fromJson(value)).toList();
  }

  static Map<String, InlineResponseMap200> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponseMap200>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponseMap200.fromJson(value));
    }
    return map;
  }
}
