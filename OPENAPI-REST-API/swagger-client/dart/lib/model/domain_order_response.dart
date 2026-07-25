part of swagger.api;

class DomainOrderResponse {
  
  String oPSVersion = null;

  String protocol = null;

  String isSuccess = null;

  String action = null;

  DomainOrderResponseAttributes attributes = null;

  String responseText = null;

  String object = null;

  String responseCode = null;

  DomainOrderResponse();

  @override
  String toString() {
    return 'DomainOrderResponse[oPSVersion=$oPSVersion, protocol=$protocol, isSuccess=$isSuccess, action=$action, attributes=$attributes, responseText=$responseText, object=$object, responseCode=$responseCode, ]';
  }

  DomainOrderResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    oPSVersion = json['_OPS_version'];
    protocol = json['protocol'];
    isSuccess = json['is_success'];
    action = json['action'];
    attributes = new DomainOrderResponseAttributes.fromJson(json['attributes']);
    responseText = json['response_text'];
    object = json['object'];
    responseCode = json['response_code'];
  }

  Map<String, dynamic> toJson() {
    return {
      '_OPS_version': oPSVersion,
      'protocol': protocol,
      'is_success': isSuccess,
      'action': action,
      'attributes': attributes,
      'response_text': responseText,
      'object': object,
      'response_code': responseCode
     };
  }

  static List<DomainOrderResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<DomainOrderResponse>() : json.map((value) => new DomainOrderResponse.fromJson(value)).toList();
  }

  static Map<String, DomainOrderResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DomainOrderResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DomainOrderResponse.fromJson(value));
    }
    return map;
  }
}
