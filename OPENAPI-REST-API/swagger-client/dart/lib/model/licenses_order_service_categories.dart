part of swagger.api;

class LicensesOrderServiceCategories {
  
  LicensesOrderServiceCategories509 licensesOrderServiceCategories509 = null;

  LicensesOrderServiceCategories();

  @override
  String toString() {
    return 'LicensesOrderServiceCategories[licensesOrderServiceCategories509=$licensesOrderServiceCategories509, ]';
  }

  LicensesOrderServiceCategories.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    licensesOrderServiceCategories509 = new LicensesOrderServiceCategories509.fromJson(json['LicensesOrderServiceCategories509']);
  }

  Map<String, dynamic> toJson() {
    return {
      'LicensesOrderServiceCategories509': licensesOrderServiceCategories509
     };
  }

  static List<LicensesOrderServiceCategories> listFromJson(List<dynamic> json) {
    return json == null ? new List<LicensesOrderServiceCategories>() : json.map((value) => new LicensesOrderServiceCategories.fromJson(value)).toList();
  }

  static Map<String, LicensesOrderServiceCategories> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, LicensesOrderServiceCategories>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new LicensesOrderServiceCategories.fromJson(value));
    }
    return map;
  }
}
