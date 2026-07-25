part of swagger.api;

class DnsListItem {
  
  int id = null;

  String name = null;

  String content = null;

  DnsListItem();

  @override
  String toString() {
    return 'DnsListItem[id=$id, name=$name, content=$content, ]';
  }

  DnsListItem.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    name = json['name'];
    content = json['content'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'content': content
     };
  }

  static List<DnsListItem> listFromJson(List<dynamic> json) {
    return json == null ? new List<DnsListItem>() : json.map((value) => new DnsListItem.fromJson(value)).toList();
  }

  static Map<String, DnsListItem> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DnsListItem>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DnsListItem.fromJson(value));
    }
    return map;
  }
}
