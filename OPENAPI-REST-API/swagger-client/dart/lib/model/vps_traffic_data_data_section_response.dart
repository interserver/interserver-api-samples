part of swagger.api;

class VPSTrafficDataDataSectionResponse {
  
  VPSTrafficDataDataSectionResponse();

  @override
  String toString() {
    return 'VPSTrafficDataDataSectionResponse[]';
  }

  VPSTrafficDataDataSectionResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<VPSTrafficDataDataSectionResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<VPSTrafficDataDataSectionResponse>() : json.map((value) => new VPSTrafficDataDataSectionResponse.fromJson(value)).toList();
  }

  static Map<String, VPSTrafficDataDataSectionResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, VPSTrafficDataDataSectionResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new VPSTrafficDataDataSectionResponse.fromJson(value));
    }
    return map;
  }
}
