part of swagger.api;

class LicensesOrderServiceTypes {
  
  LicensesOrderServiceTypes11482 licensesOrderServiceTypes11482 = null;

  LicensesOrderServiceTypes();

  @override
  String toString() {
    return 'LicensesOrderServiceTypes[licensesOrderServiceTypes11482=$licensesOrderServiceTypes11482, ]';
  }

  LicensesOrderServiceTypes.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    licensesOrderServiceTypes11482 = new LicensesOrderServiceTypes11482.fromJson(json['LicensesOrderServiceTypes11482']);
  }

  Map<String, dynamic> toJson() {
    return {
      'LicensesOrderServiceTypes11482': licensesOrderServiceTypes11482
     };
  }

  static List<LicensesOrderServiceTypes> listFromJson(List<dynamic> json) {
    return json == null ? new List<LicensesOrderServiceTypes>() : json.map((value) => new LicensesOrderServiceTypes.fromJson(value)).toList();
  }

  static Map<String, LicensesOrderServiceTypes> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, LicensesOrderServiceTypes>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new LicensesOrderServiceTypes.fromJson(value));
    }
    return map;
  }
}
