part of swagger.api;

class BackupOrderPutResponse {
  
  bool continue_ = null;

  List<String> errors = [];

  int serviceType = null;

  String serviceCost = null;

  String originalCost = null;

  String repeatServiceCost = null;

  String hostname = null;

  String password = null;

  String coupon = null;

  int couponCode = null;

  BackupOrderPutResponse();

  @override
  String toString() {
    return 'BackupOrderPutResponse[continue_=$continue_, errors=$errors, serviceType=$serviceType, serviceCost=$serviceCost, originalCost=$originalCost, repeatServiceCost=$repeatServiceCost, hostname=$hostname, password=$password, coupon=$coupon, couponCode=$couponCode, ]';
  }

  BackupOrderPutResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    continue_ = json['continue'];
    errors = (json['errors'] as List).map((item) => item as String).toList();
    serviceType = json['serviceType'];
    serviceCost = json['serviceCost'];
    originalCost = json['originalCost'];
    repeatServiceCost = json['repeatServiceCost'];
    hostname = json['hostname'];
    password = json['password'];
    coupon = json['coupon'];
    couponCode = json['couponCode'];
  }

  Map<String, dynamic> toJson() {
    return {
      'continue': continue_,
      'errors': errors,
      'serviceType': serviceType,
      'serviceCost': serviceCost,
      'originalCost': originalCost,
      'repeatServiceCost': repeatServiceCost,
      'hostname': hostname,
      'password': password,
      'coupon': coupon,
      'couponCode': couponCode
     };
  }

  static List<BackupOrderPutResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<BackupOrderPutResponse>() : json.map((value) => new BackupOrderPutResponse.fromJson(value)).toList();
  }

  static Map<String, BackupOrderPutResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BackupOrderPutResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new BackupOrderPutResponse.fromJson(value));
    }
    return map;
  }
}
