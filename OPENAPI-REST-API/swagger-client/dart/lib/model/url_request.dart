part of swagger.api;

class UrlRequest {
  
  String url = null;

  UrlRequest();

  @override
  String toString() {
    return 'UrlRequest[url=$url, ]';
  }

  UrlRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    return {
      'url': url
     };
  }

  static List<UrlRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<UrlRequest>() : json.map((value) => new UrlRequest.fromJson(value)).toList();
  }

  static Map<String, UrlRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UrlRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UrlRequest.fromJson(value));
    }
    return map;
  }
}
