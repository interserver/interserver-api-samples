part of swagger.api;

class LicenseIpInfoRow {
  /* Row description */
  String desc = null;
/* Row value */
  String value = null;

  LicenseIpInfoRow();

  @override
  String toString() {
    return 'LicenseIpInfoRow[desc=$desc, value=$value, ]';
  }

  LicenseIpInfoRow.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    desc = json['desc'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    return {
      'desc': desc,
      'value': value
     };
  }

  static List<LicenseIpInfoRow> listFromJson(List<dynamic> json) {
    return json == null ? new List<LicenseIpInfoRow>() : json.map((value) => new LicenseIpInfoRow.fromJson(value)).toList();
  }

  static Map<String, LicenseIpInfoRow> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, LicenseIpInfoRow>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new LicenseIpInfoRow.fromJson(value));
    }
    return map;
  }
}
