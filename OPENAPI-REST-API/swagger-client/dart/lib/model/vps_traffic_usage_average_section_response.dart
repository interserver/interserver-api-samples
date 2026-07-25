part of swagger.api;

class VpsTrafficUsageAverageSectionResponse {
  
  int total = null;

  int count = null;

  int value = null;

  VpsTrafficUsageAverageSectionResponse();

  @override
  String toString() {
    return 'VpsTrafficUsageAverageSectionResponse[total=$total, count=$count, value=$value, ]';
  }

  VpsTrafficUsageAverageSectionResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    total = json['total'];
    count = json['count'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    return {
      'total': total,
      'count': count,
      'value': value
     };
  }

  static List<VpsTrafficUsageAverageSectionResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<VpsTrafficUsageAverageSectionResponse>() : json.map((value) => new VpsTrafficUsageAverageSectionResponse.fromJson(value)).toList();
  }

  static Map<String, VpsTrafficUsageAverageSectionResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, VpsTrafficUsageAverageSectionResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new VpsTrafficUsageAverageSectionResponse.fromJson(value));
    }
    return map;
  }
}
