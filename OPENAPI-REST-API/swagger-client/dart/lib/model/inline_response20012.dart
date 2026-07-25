part of swagger.api;

class InlineResponse20012 {
  
  String text = null;
/* A pre-signed download URL valid for 24 hours. */
  String url = null;

  InlineResponse20012();

  @override
  String toString() {
    return 'InlineResponse20012[text=$text, url=$url, ]';
  }

  InlineResponse20012.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    text = json['text'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    return {
      'text': text,
      'url': url
     };
  }

  static List<InlineResponse20012> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20012>() : json.map((value) => new InlineResponse20012.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20012> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse20012>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse20012.fromJson(value));
    }
    return map;
  }
}
