part of swagger.api;

class VpsTrafficHistoryResponse {
  
  VpsTrafficHistorySectionResponse hour = null;

  VpsTrafficHistorySectionResponse day = null;

  VpsTrafficHistoryResponse();

  @override
  String toString() {
    return 'VpsTrafficHistoryResponse[hour=$hour, day=$day, ]';
  }

  VpsTrafficHistoryResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    hour = new VpsTrafficHistorySectionResponse.fromJson(json['hour']);
    day = new VpsTrafficHistorySectionResponse.fromJson(json['day']);
  }

  Map<String, dynamic> toJson() {
    return {
      'hour': hour,
      'day': day
     };
  }

  static List<VpsTrafficHistoryResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<VpsTrafficHistoryResponse>() : json.map((value) => new VpsTrafficHistoryResponse.fromJson(value)).toList();
  }

  static Map<String, VpsTrafficHistoryResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, VpsTrafficHistoryResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new VpsTrafficHistoryResponse.fromJson(value));
    }
    return map;
  }
}
