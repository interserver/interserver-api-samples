part of swagger.api;

class LicensesOrderPackageCosts {
  /* Cost of package with ID 11468 */
  double licensesOrderPackageCosts11468 = null;

  LicensesOrderPackageCosts();

  @override
  String toString() {
    return 'LicensesOrderPackageCosts[licensesOrderPackageCosts11468=$licensesOrderPackageCosts11468, ]';
  }

  LicensesOrderPackageCosts.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    licensesOrderPackageCosts11468 = json['LicensesOrderPackageCosts11468'];
  }

  Map<String, dynamic> toJson() {
    return {
      'LicensesOrderPackageCosts11468': licensesOrderPackageCosts11468
     };
  }

  static List<LicensesOrderPackageCosts> listFromJson(List<dynamic> json) {
    return json == null ? new List<LicensesOrderPackageCosts>() : json.map((value) => new LicensesOrderPackageCosts.fromJson(value)).toList();
  }

  static Map<String, LicensesOrderPackageCosts> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, LicensesOrderPackageCosts>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new LicensesOrderPackageCosts.fromJson(value));
    }
    return map;
  }
}
