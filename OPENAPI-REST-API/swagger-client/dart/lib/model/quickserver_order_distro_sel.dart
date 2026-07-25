part of swagger.api;

class QuickserverOrderDistroSel {
  
  QuickserverOrderDistroSelUbuntu ubuntu = null;

  QuickserverOrderDistroSel();

  @override
  String toString() {
    return 'QuickserverOrderDistroSel[ubuntu=$ubuntu, ]';
  }

  QuickserverOrderDistroSel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    ubuntu = new QuickserverOrderDistroSelUbuntu.fromJson(json['Ubuntu']);
  }

  Map<String, dynamic> toJson() {
    return {
      'Ubuntu': ubuntu
     };
  }

  static List<QuickserverOrderDistroSel> listFromJson(List<dynamic> json) {
    return json == null ? new List<QuickserverOrderDistroSel>() : json.map((value) => new QuickserverOrderDistroSel.fromJson(value)).toList();
  }

  static Map<String, QuickserverOrderDistroSel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, QuickserverOrderDistroSel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new QuickserverOrderDistroSel.fromJson(value));
    }
    return map;
  }
}
