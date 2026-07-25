part of swagger.api;

class VpsIPInfo {
  /* Title of the table */
  String title = null;

  List<VpsIPInfoRow> rows = [];

  VpsIPInfo();

  @override
  String toString() {
    return 'VpsIPInfo[title=$title, rows=$rows, ]';
  }

  VpsIPInfo.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    title = json['title'];
    rows = VpsIPInfoRow.listFromJson(json['rows']);
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'rows': rows
     };
  }

  static List<VpsIPInfo> listFromJson(List<dynamic> json) {
    return json == null ? new List<VpsIPInfo>() : json.map((value) => new VpsIPInfo.fromJson(value)).toList();
  }

  static Map<String, VpsIPInfo> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, VpsIPInfo>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new VpsIPInfo.fromJson(value));
    }
    return map;
  }
}
