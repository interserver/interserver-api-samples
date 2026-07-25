part of swagger.api;

class OneOfServerOrderPostRequestHd {
  
  OneOfServerOrderPostRequestHd();

  @override
  String toString() {
    return 'OneOfServerOrderPostRequestHd[]';
  }

  OneOfServerOrderPostRequestHd.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<OneOfServerOrderPostRequestHd> listFromJson(List<dynamic> json) {
    return json == null ? new List<OneOfServerOrderPostRequestHd>() : json.map((value) => new OneOfServerOrderPostRequestHd.fromJson(value)).toList();
  }

  static Map<String, OneOfServerOrderPostRequestHd> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OneOfServerOrderPostRequestHd>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OneOfServerOrderPostRequestHd.fromJson(value));
    }
    return map;
  }
}
