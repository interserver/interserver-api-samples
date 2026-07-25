part of swagger.api;

class VpsTrafficHistorySectionResponse {
  
  List<VpsTrafficHistorySectionDataResponse> data = [];

  List<DateTime> times = [];

  VpsTrafficHistorySectionResponse();

  @override
  String toString() {
    return 'VpsTrafficHistorySectionResponse[data=$data, times=$times, ]';
  }

  VpsTrafficHistorySectionResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    data = VpsTrafficHistorySectionDataResponse.listFromJson(json['data']);
    times = DateTime.listFromJson(json['times']);
  }

  Map<String, dynamic> toJson() {
    return {
      'data': data,
      'times': times
     };
  }

  static List<VpsTrafficHistorySectionResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<VpsTrafficHistorySectionResponse>() : json.map((value) => new VpsTrafficHistorySectionResponse.fromJson(value)).toList();
  }

  static Map<String, VpsTrafficHistorySectionResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, VpsTrafficHistorySectionResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new VpsTrafficHistorySectionResponse.fromJson(value));
    }
    return map;
  }
}
