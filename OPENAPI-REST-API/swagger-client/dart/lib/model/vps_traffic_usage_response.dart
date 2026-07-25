part of swagger.api;

class VpsTrafficUsageResponse {
  
  VpsTrafficTotalsSectionResponse current = null;

  VpsTrafficTotalsSectionResponse peak = null;

  VpsTrafficUsageAverageResponse average = null;

  VpsTrafficUsageResponse();

  @override
  String toString() {
    return 'VpsTrafficUsageResponse[current=$current, peak=$peak, average=$average, ]';
  }

  VpsTrafficUsageResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    current = new VpsTrafficTotalsSectionResponse.fromJson(json['current']);
    peak = new VpsTrafficTotalsSectionResponse.fromJson(json['peak']);
    average = new VpsTrafficUsageAverageResponse.fromJson(json['average']);
  }

  Map<String, dynamic> toJson() {
    return {
      'current': current,
      'peak': peak,
      'average': average
     };
  }

  static List<VpsTrafficUsageResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<VpsTrafficUsageResponse>() : json.map((value) => new VpsTrafficUsageResponse.fromJson(value)).toList();
  }

  static Map<String, VpsTrafficUsageResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, VpsTrafficUsageResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new VpsTrafficUsageResponse.fromJson(value));
    }
    return map;
  }
}
