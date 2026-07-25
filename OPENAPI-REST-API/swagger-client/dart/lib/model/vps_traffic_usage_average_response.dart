part of swagger.api;

class VpsTrafficUsageAverageResponse {
  
  VpsTrafficUsageAverageSectionResponse in_ = null;

  VpsTrafficUsageAverageSectionResponse out = null;

  VpsTrafficUsageAverageResponse();

  @override
  String toString() {
    return 'VpsTrafficUsageAverageResponse[in_=$in_, out=$out, ]';
  }

  VpsTrafficUsageAverageResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    in_ = new VpsTrafficUsageAverageSectionResponse.fromJson(json['in']);
    out = new VpsTrafficUsageAverageSectionResponse.fromJson(json['out']);
  }

  Map<String, dynamic> toJson() {
    return {
      'in': in_,
      'out': out
     };
  }

  static List<VpsTrafficUsageAverageResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<VpsTrafficUsageAverageResponse>() : json.map((value) => new VpsTrafficUsageAverageResponse.fromJson(value)).toList();
  }

  static Map<String, VpsTrafficUsageAverageResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, VpsTrafficUsageAverageResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new VpsTrafficUsageAverageResponse.fromJson(value));
    }
    return map;
  }
}
