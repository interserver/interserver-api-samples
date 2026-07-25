part of swagger.api;

class DomainNameserverGetResponseInner {
  
  String name = null;

  String ipaddress = null;
/* Whether the registrar allows deletion of this nameserver entry. */
  String canDelete = null;
  //enum canDeleteEnum {  0,  1,  };

  DomainNameserverGetResponseInner();

  @override
  String toString() {
    return 'DomainNameserverGetResponseInner[name=$name, ipaddress=$ipaddress, canDelete=$canDelete, ]';
  }

  DomainNameserverGetResponseInner.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
    ipaddress = json['ipaddress'];
    canDelete = json['can_delete'];
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'ipaddress': ipaddress,
      'can_delete': canDelete
     };
  }

  static List<DomainNameserverGetResponseInner> listFromJson(List<dynamic> json) {
    return json == null ? new List<DomainNameserverGetResponseInner>() : json.map((value) => new DomainNameserverGetResponseInner.fromJson(value)).toList();
  }

  static Map<String, DomainNameserverGetResponseInner> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DomainNameserverGetResponseInner>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DomainNameserverGetResponseInner.fromJson(value));
    }
    return map;
  }
}
