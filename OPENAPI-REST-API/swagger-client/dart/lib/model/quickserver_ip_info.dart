part of swagger.api;

class QuickserverIpInfo {
  /* Table title */
  String title = null;

  List<QuickserverIpTableRow> rows = [];

  QuickserverIpInfo();

  @override
  String toString() {
    return 'QuickserverIpInfo[title=$title, rows=$rows, ]';
  }

  QuickserverIpInfo.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    title = json['title'];
    rows = QuickserverIpTableRow.listFromJson(json['rows']);
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'rows': rows
     };
  }

  static List<QuickserverIpInfo> listFromJson(List<dynamic> json) {
    return json == null ? new List<QuickserverIpInfo>() : json.map((value) => new QuickserverIpInfo.fromJson(value)).toList();
  }

  static Map<String, QuickserverIpInfo> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, QuickserverIpInfo>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new QuickserverIpInfo.fromJson(value));
    }
    return map;
  }
}
