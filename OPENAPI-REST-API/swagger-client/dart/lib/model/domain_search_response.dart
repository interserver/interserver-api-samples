part of swagger.api;

class DomainSearchResponse {
  /* Indicates whether the registrar search succeeded. */
  bool success = null;
/* Human-readable status text from the registrar. */
  String responseText = null;
/* Response time as reported by the registrar. */
  String responseTime = null;
/* Availability lookup results for queried domains. */
  List<Object> lookup = [];
/* Suggested alternative domains and availability data. */
  List<Object> suggest = [];
/* TLDs evaluated during the search. */
  List<String> tlds = [];

  DomainSearchResponse();

  @override
  String toString() {
    return 'DomainSearchResponse[success=$success, responseText=$responseText, responseTime=$responseTime, lookup=$lookup, suggest=$suggest, tlds=$tlds, ]';
  }

  DomainSearchResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    success = json['success'];
    responseText = json['response_text'];
    responseTime = json['response_time'];
    lookup = Object.listFromJson(json['lookup']);
    suggest = Object.listFromJson(json['suggest']);
    tlds = (json['tlds'] as List).map((item) => item as String).toList();
  }

  Map<String, dynamic> toJson() {
    return {
      'success': success,
      'response_text': responseText,
      'response_time': responseTime,
      'lookup': lookup,
      'suggest': suggest,
      'tlds': tlds
     };
  }

  static List<DomainSearchResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<DomainSearchResponse>() : json.map((value) => new DomainSearchResponse.fromJson(value)).toList();
  }

  static Map<String, DomainSearchResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DomainSearchResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DomainSearchResponse.fromJson(value));
    }
    return map;
  }
}
