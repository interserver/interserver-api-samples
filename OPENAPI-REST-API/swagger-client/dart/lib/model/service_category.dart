part of swagger.api;

class ServiceCategory {
  
  int categoryId = null;

  String categoryName = null;

  String categoryTag = null;

  String categoryModule = null;

  ServiceCategory();

  @override
  String toString() {
    return 'ServiceCategory[categoryId=$categoryId, categoryName=$categoryName, categoryTag=$categoryTag, categoryModule=$categoryModule, ]';
  }

  ServiceCategory.fromJson(Map<String, dynamic> json) {
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

  static List<ServiceCategory> listFromJson(List<dynamic> json) {
    return json == null ? new List<ServiceCategory>() : json.map((value) => new ServiceCategory.fromJson(value)).toList();
  }

  static Map<String, ServiceCategory> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ServiceCategory>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ServiceCategory.fromJson(value));
    }
    return map;
  }
}
