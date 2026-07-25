part of swagger.api;

class VpsOrderPutResponse {
  
  bool continue_ = null;

  List<Object> errors = [];

  int couponCode = null;

  int serviceCost = null;

  int sliceCost = null;

  int serviceType = null;

  int repeatSliceCost = null;

  int originalSliceCost = null;

  int originalCost = null;

  int repeatServiceCost = null;

  int monthlyServiceCost = null;

  String custid = null;

  String os = null;

  String slices = null;

  String platform = null;

  String controlpanel = null;

  int period = null;

  int location = null;

  String version = null;

  String hostname = null;

  String coupon = null;

  String rootpass = null;

  VpsOrderPutResponse();

  @override
  String toString() {
    return 'VpsOrderPutResponse[continue_=$continue_, errors=$errors, couponCode=$couponCode, serviceCost=$serviceCost, sliceCost=$sliceCost, serviceType=$serviceType, repeatSliceCost=$repeatSliceCost, originalSliceCost=$originalSliceCost, originalCost=$originalCost, repeatServiceCost=$repeatServiceCost, monthlyServiceCost=$monthlyServiceCost, custid=$custid, os=$os, slices=$slices, platform=$platform, controlpanel=$controlpanel, period=$period, location=$location, version=$version, hostname=$hostname, coupon=$coupon, rootpass=$rootpass, ]';
  }

  VpsOrderPutResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    continue_ = json['continue'];
    errors = Object.listFromJson(json['errors']);
    couponCode = json['coupon_code'];
    serviceCost = json['service_cost'];
    sliceCost = json['slice_cost'];
    serviceType = json['service_type'];
    repeatSliceCost = json['repeat_slice_cost'];
    originalSliceCost = json['original_slice_cost'];
    originalCost = json['original_cost'];
    repeatServiceCost = json['repeat_service_cost'];
    monthlyServiceCost = json['monthly_service_cost'];
    custid = json['custid'];
    os = json['os'];
    slices = json['slices'];
    platform = json['platform'];
    controlpanel = json['controlpanel'];
    period = json['period'];
    location = json['location'];
    version = json['version'];
    hostname = json['hostname'];
    coupon = json['coupon'];
    rootpass = json['rootpass'];
  }

  Map<String, dynamic> toJson() {
    return {
      'continue': continue_,
      'errors': errors,
      'coupon_code': couponCode,
      'service_cost': serviceCost,
      'slice_cost': sliceCost,
      'service_type': serviceType,
      'repeat_slice_cost': repeatSliceCost,
      'original_slice_cost': originalSliceCost,
      'original_cost': originalCost,
      'repeat_service_cost': repeatServiceCost,
      'monthly_service_cost': monthlyServiceCost,
      'custid': custid,
      'os': os,
      'slices': slices,
      'platform': platform,
      'controlpanel': controlpanel,
      'period': period,
      'location': location,
      'version': version,
      'hostname': hostname,
      'coupon': coupon,
      'rootpass': rootpass
     };
  }

  static List<VpsOrderPutResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<VpsOrderPutResponse>() : json.map((value) => new VpsOrderPutResponse.fromJson(value)).toList();
  }

  static Map<String, VpsOrderPutResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, VpsOrderPutResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new VpsOrderPutResponse.fromJson(value));
    }
    return map;
  }
}
