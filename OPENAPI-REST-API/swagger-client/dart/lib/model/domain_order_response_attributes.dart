part of swagger.api;

class DomainOrderResponseAttributes {
  /* Registrar order ID. */
  String id = null;
/* Administrative contact email provided for the order. */
  String adminEmail = null;

  DomainOrderResponseAttributes();

  @override
  String toString() {
    return 'DomainOrderResponseAttributes[id=$id, adminEmail=$adminEmail, ]';
  }

  DomainOrderResponseAttributes.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    adminEmail = json['admin_email'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'admin_email': adminEmail
     };
  }

  static List<DomainOrderResponseAttributes> listFromJson(List<dynamic> json) {
    return json == null ? new List<DomainOrderResponseAttributes>() : json.map((value) => new DomainOrderResponseAttributes.fromJson(value)).toList();
  }

  static Map<String, DomainOrderResponseAttributes> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DomainOrderResponseAttributes>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DomainOrderResponseAttributes.fromJson(value));
    }
    return map;
  }
}
