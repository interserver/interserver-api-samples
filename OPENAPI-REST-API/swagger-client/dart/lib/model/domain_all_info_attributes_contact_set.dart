part of swagger.api;

class DomainAllInfoAttributesContactSet {
  
  DomainOwnerContact owner = null;

  DomainAdminContact admin = null;

  DomainTechContact tech = null;

  DomainAllInfoAttributesContactSet();

  @override
  String toString() {
    return 'DomainAllInfoAttributesContactSet[owner=$owner, admin=$admin, tech=$tech, ]';
  }

  DomainAllInfoAttributesContactSet.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    owner = new DomainOwnerContact.fromJson(json['owner']);
    admin = new DomainAdminContact.fromJson(json['admin']);
    tech = new DomainTechContact.fromJson(json['tech']);
  }

  Map<String, dynamic> toJson() {
    return {
      'owner': owner,
      'admin': admin,
      'tech': tech
     };
  }

  static List<DomainAllInfoAttributesContactSet> listFromJson(List<dynamic> json) {
    return json == null ? new List<DomainAllInfoAttributesContactSet>() : json.map((value) => new DomainAllInfoAttributesContactSet.fromJson(value)).toList();
  }

  static Map<String, DomainAllInfoAttributesContactSet> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DomainAllInfoAttributesContactSet>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DomainAllInfoAttributesContactSet.fromJson(value));
    }
    return map;
  }
}
