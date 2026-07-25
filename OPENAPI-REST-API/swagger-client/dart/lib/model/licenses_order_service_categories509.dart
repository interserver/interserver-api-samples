part of swagger.api;

class LicensesOrderServiceCategories509 {
  /* Category ID */
  String categoryId = null;
/* Category Name */
  String categoryName = null;
/* Category Tag */
  String categoryTag = null;
/* Category Module */
  String categoryModule = null;

  LicensesOrderServiceCategories509();

  @override
  String toString() {
    return 'LicensesOrderServiceCategories509[categoryId=$categoryId, categoryName=$categoryName, categoryTag=$categoryTag, categoryModule=$categoryModule, ]';
  }

  LicensesOrderServiceCategories509.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    categoryId = json['category_id'];
    categoryName = json['category_name'];
    categoryTag = json['category_tag'];
    categoryModule = json['category_module'];
  }

  Map<String, dynamic> toJson() {
    return {
      'category_id': categoryId,
      'category_name': categoryName,
      'category_tag': categoryTag,
      'category_module': categoryModule
     };
  }

  static List<LicensesOrderServiceCategories509> listFromJson(List<dynamic> json) {
    return json == null ? new List<LicensesOrderServiceCategories509>() : json.map((value) => new LicensesOrderServiceCategories509.fromJson(value)).toList();
  }

  static Map<String, LicensesOrderServiceCategories509> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, LicensesOrderServiceCategories509>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new LicensesOrderServiceCategories509.fromJson(value));
    }
    return map;
  }
}
