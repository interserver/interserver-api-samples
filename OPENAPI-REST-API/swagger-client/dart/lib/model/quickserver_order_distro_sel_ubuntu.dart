part of swagger.api;

class QuickserverOrderDistroSelUbuntu {
  /* Selected distribution for Ubuntu. */
  String ubuntu = null;

  QuickserverOrderDistroSelUbuntu();

  @override
  String toString() {
    return 'QuickserverOrderDistroSelUbuntu[ubuntu=$ubuntu, ]';
  }

  QuickserverOrderDistroSelUbuntu.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    ubuntu = json['Ubuntu'];
  }

  Map<String, dynamic> toJson() {
    return {
      'Ubuntu': ubuntu
     };
  }

  static List<QuickserverOrderDistroSelUbuntu> listFromJson(List<dynamic> json) {
    return json == null ? new List<QuickserverOrderDistroSelUbuntu>() : json.map((value) => new QuickserverOrderDistroSelUbuntu.fromJson(value)).toList();
  }

  static Map<String, QuickserverOrderDistroSelUbuntu> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, QuickserverOrderDistroSelUbuntu>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new QuickserverOrderDistroSelUbuntu.fromJson(value));
    }
    return map;
  }
}
