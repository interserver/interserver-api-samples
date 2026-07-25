part of swagger.api;

class BackupOrderPutRequest {
  
  bool validateOnly = null;

  int serviceType = null;

  String coupon = null;

  BackupOrderPutRequest();

  @override
  String toString() {
    return 'BackupOrderPutRequest[validateOnly=$validateOnly, serviceType=$serviceType, coupon=$coupon, ]';
  }

  BackupOrderPutRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    validateOnly = json['validateOnly'];
    serviceType = json['serviceType'];
    coupon = json['coupon'];
  }

  Map<String, dynamic> toJson() {
    return {
      'validateOnly': validateOnly,
      'serviceType': serviceType,
      'coupon': coupon
     };
  }

  static List<BackupOrderPutRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<BackupOrderPutRequest>() : json.map((value) => new BackupOrderPutRequest.fromJson(value)).toList();
  }

  static Map<String, BackupOrderPutRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BackupOrderPutRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new BackupOrderPutRequest.fromJson(value));
    }
    return map;
  }
}
