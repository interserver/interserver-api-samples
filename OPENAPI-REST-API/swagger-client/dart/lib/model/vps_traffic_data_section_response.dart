part of swagger.api;

class VpsTrafficDataSectionResponse {
  
  String name = null;

  List<VPSTrafficDataDataSectionResponse> data = [];

  VpsTrafficDataSectionResponse();

  @override
  String toString() {
    return 'VpsTrafficDataSectionResponse[name=$name, data=$data, ]';
  }

  VpsTrafficDataSectionResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
    data = VPSTrafficDataDataSectionResponse.listFromJson(json['data']);
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'data': data
     };
  }

  static List<VpsTrafficDataSectionResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<VpsTrafficDataSectionResponse>() : json.map((value) => new VpsTrafficDataSectionResponse.fromJson(value)).toList();
  }

  static Map<String, VpsTrafficDataSectionResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, VpsTrafficDataSectionResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new VpsTrafficDataSectionResponse.fromJson(value));
    }
    return map;
  }
}
