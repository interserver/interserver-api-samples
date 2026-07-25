part of swagger.api;

class DomainAllInfo {
  
  String oPSVersion = null;

  DomainAllInfoAttributes attributes = null;

  String object = null;

  String protocol = null;

  String responseText = null;

  String responseCode = null;

  String action = null;

  String isSuccess = null;

  DomainAllInfo();

  @override
  String toString() {
    return 'DomainAllInfo[oPSVersion=$oPSVersion, attributes=$attributes, object=$object, protocol=$protocol, responseText=$responseText, responseCode=$responseCode, action=$action, isSuccess=$isSuccess, ]';
  }

  DomainAllInfo.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    oPSVersion = json['_OPS_version'];
    attributes = new DomainAllInfoAttributes.fromJson(json['attributes']);
    object = json['object'];
    protocol = json['protocol'];
    responseText = json['response_text'];
    responseCode = json['response_code'];
    action = json['action'];
    isSuccess = json['is_success'];
  }

  Map<String, dynamic> toJson() {
    return {
      '_OPS_version': oPSVersion,
      'attributes': attributes,
      'object': object,
      'protocol': protocol,
      'response_text': responseText,
      'response_code': responseCode,
      'action': action,
      'is_success': isSuccess
     };
  }

  static List<DomainAllInfo> listFromJson(List<dynamic> json) {
    return json == null ? new List<DomainAllInfo>() : json.map((value) => new DomainAllInfo.fromJson(value)).toList();
  }

  static Map<String, DomainAllInfo> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DomainAllInfo>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DomainAllInfo.fromJson(value));
    }
    return map;
  }
}
