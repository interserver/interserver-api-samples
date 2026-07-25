part of swagger.api;

class ServerAssets {
  /* The title of the assets. */
  String title = null;
/* The size of the assets. */
  int size = null;
/* The type of the assets. */
  String type = null;
/* The header of the assets table. */
  List<String> header = [];
/* The rows of the assets table. */
  List<List<String>> rows = [];

  ServerAssets();

  @override
  String toString() {
    return 'ServerAssets[title=$title, size=$size, type=$type, header=$header, rows=$rows, ]';
  }

  ServerAssets.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    title = json['title'];
    size = json['size'];
    type = json['type'];
    header = (json['header'] as List).map((item) => item as String).toList();
    rows = List.listFromJson(json['rows']);
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'size': size,
      'type': type,
      'header': header,
      'rows': rows
     };
  }

  static List<ServerAssets> listFromJson(List<dynamic> json) {
    return json == null ? new List<ServerAssets>() : json.map((value) => new ServerAssets.fromJson(value)).toList();
  }

  static Map<String, ServerAssets> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ServerAssets>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ServerAssets.fromJson(value));
    }
    return map;
  }
}
