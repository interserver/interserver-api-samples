part of swagger.api;

class VpsTrafficHistorySectionDataResponse {
  
  VpsTrafficHistorySectionDataResponse();

  @override
  String toString() {
    return 'VpsTrafficHistorySectionDataResponse[]';
  }

  VpsTrafficHistorySectionDataResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<VpsTrafficHistorySectionDataResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<VpsTrafficHistorySectionDataResponse>() : json.map((value) => new VpsTrafficHistorySectionDataResponse.fromJson(value)).toList();
  }

  static Map<String, VpsTrafficHistorySectionDataResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, VpsTrafficHistorySectionDataResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new VpsTrafficHistorySectionDataResponse.fromJson(value));
    }
    return map;
  }
}
