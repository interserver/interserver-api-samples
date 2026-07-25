part of swagger.api;

class InlineResponse20019Ips {
  
  double serviceId = null;

  String serviceModule = null;

  String serviceHostname = null;

  InlineResponse20019Ips();

  @override
  String toString() {
    return 'InlineResponse20019Ips[serviceId=$serviceId, serviceModule=$serviceModule, serviceHostname=$serviceHostname, ]';
  }

  InlineResponse20019Ips.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    serviceId = json['service_id'];
    serviceModule = json['service_module'];
    serviceHostname = json['service_hostname'];
  }

  Map<String, dynamic> toJson() {
    return {
      'service_id': serviceId,
      'service_module': serviceModule,
      'service_hostname': serviceHostname
     };
  }

  static List<InlineResponse20019Ips> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20019Ips>() : json.map((value) => new InlineResponse20019Ips.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20019Ips> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse20019Ips>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse20019Ips.fromJson(value));
    }
    return map;
  }
}
