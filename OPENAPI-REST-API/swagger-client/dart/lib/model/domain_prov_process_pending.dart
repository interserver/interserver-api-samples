part of swagger.api;

class DomainProvProcessPending {
  
  String oPSVersion = null;

  String responseText = null;

  String protocol = null;

  String responseCode = null;

  String action = null;

  String object = null;

  String isSuccess = null;

  DomainProvProcessPendingAttributes attributes = null;

  DomainProvProcessPending();

  @override
  String toString() {
    return 'DomainProvProcessPending[oPSVersion=$oPSVersion, responseText=$responseText, protocol=$protocol, responseCode=$responseCode, action=$action, object=$object, isSuccess=$isSuccess, attributes=$attributes, ]';
  }

  DomainProvProcessPending.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    oPSVersion = json['_OPS_version'];
    responseText = json['response_text'];
    protocol = json['protocol'];
    responseCode = json['response_code'];
    action = json['action'];
    object = json['object'];
    isSuccess = json['is_success'];
    attributes = new DomainProvProcessPendingAttributes.fromJson(json['attributes']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_OPS_version': oPSVersion,
      'response_text': responseText,
      'protocol': protocol,
      'response_code': responseCode,
      'action': action,
      'object': object,
      'is_success': isSuccess,
      'attributes': attributes
     };
  }

  static List<DomainProvProcessPending> listFromJson(List<dynamic> json) {
    return json == null ? new List<DomainProvProcessPending>() : json.map((value) => new DomainProvProcessPending.fromJson(value)).toList();
  }

  static Map<String, DomainProvProcessPending> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DomainProvProcessPending>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DomainProvProcessPending.fromJson(value));
    }
    return map;
  }
}
