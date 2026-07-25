part of swagger.api;

class ServerBulkIpmiPowerResponse {
  
  List<ServerBulkIpmiPowerResponseResults> results = [];

  ServerBulkIpmiPowerResponse();

  @override
  String toString() {
    return 'ServerBulkIpmiPowerResponse[results=$results, ]';
  }

  ServerBulkIpmiPowerResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    results = ServerBulkIpmiPowerResponseResults.listFromJson(json['results']);
  }

  Map<String, dynamic> toJson() {
    return {
      'results': results
     };
  }

  static List<ServerBulkIpmiPowerResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<ServerBulkIpmiPowerResponse>() : json.map((value) => new ServerBulkIpmiPowerResponse.fromJson(value)).toList();
  }

  static Map<String, ServerBulkIpmiPowerResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ServerBulkIpmiPowerResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ServerBulkIpmiPowerResponse.fromJson(value));
    }
    return map;
  }
}
