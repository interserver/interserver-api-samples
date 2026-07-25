part of swagger.api;

class LicenseIpInfo {
  /* Table title */
  String title = null;

  List<LicenseIpInfoRow> rows = [];

  LicenseIpInfo();

  @override
  String toString() {
    return 'LicenseIpInfo[title=$title, rows=$rows, ]';
  }

  LicenseIpInfo.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    title = json['title'];
    rows = LicenseIpInfoRow.listFromJson(json['rows']);
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'rows': rows
     };
  }

  static List<LicenseIpInfo> listFromJson(List<dynamic> json) {
    return json == null ? new List<LicenseIpInfo>() : json.map((value) => new LicenseIpInfo.fromJson(value)).toList();
  }

  static Map<String, LicenseIpInfo> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, LicenseIpInfo>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new LicenseIpInfo.fromJson(value));
    }
    return map;
  }
}
