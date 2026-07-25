part of swagger.api;

class VpsTrafficTotalsSectionResponse {
  
  int in_ = null;

  int out = null;

  VpsTrafficTotalsSectionResponse();

  @override
  String toString() {
    return 'VpsTrafficTotalsSectionResponse[in_=$in_, out=$out, ]';
  }

  VpsTrafficTotalsSectionResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    in_ = json['in'];
    out = json['out'];
  }

  Map<String, dynamic> toJson() {
    return {
      'in': in_,
      'out': out
     };
  }

  static List<VpsTrafficTotalsSectionResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<VpsTrafficTotalsSectionResponse>() : json.map((value) => new VpsTrafficTotalsSectionResponse.fromJson(value)).toList();
  }

  static Map<String, VpsTrafficTotalsSectionResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, VpsTrafficTotalsSectionResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new VpsTrafficTotalsSectionResponse.fromJson(value));
    }
    return map;
  }
}
