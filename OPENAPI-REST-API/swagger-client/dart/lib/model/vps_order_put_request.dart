part of swagger.api;

class VpsOrderPutRequest {
  /* OS Distribution */
  String osDistro = null;
/* Number of slices */
  int slices = 1;
   // range from 1 to 32//
/* VPS Platform */
  String vpsPlatform = null;
  //enum vpsPlatformEnum {  kvm,  hyperv,  kvmstorage,  };
/* Control Panel */
  String controlpanel = null;
  //enum controlpanelEnum {  none,  cpanel,  da,  };
/* Billing Period or Frequency */
  int period = 1;
   // range from 1 to 12//
/* Location */
  int location = 1;
   // range from 1 to 3//
/* OS Version */
  String osVersion = null;
/* The hostname to assign to the VPS */
  String hostname = "";
/* Coupon */
  String coupon = "";
/* Root password to assign to the VVPS */
  String rootpass = null;
/* Order comments or notes */
  String comment = "";

  VpsOrderPutRequest();

  @override
  String toString() {
    return 'VpsOrderPutRequest[osDistro=$osDistro, slices=$slices, vpsPlatform=$vpsPlatform, controlpanel=$controlpanel, period=$period, location=$location, osVersion=$osVersion, hostname=$hostname, coupon=$coupon, rootpass=$rootpass, comment=$comment, ]';
  }

  VpsOrderPutRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    osDistro = json['osDistro'];
    slices = json['slices'];
    vpsPlatform = json['vpsPlatform'];
    controlpanel = json['controlpanel'];
    period = json['period'];
    location = json['location'];
    osVersion = json['osVersion'];
    hostname = json['hostname'];
    coupon = json['coupon'];
    rootpass = json['rootpass'];
    comment = json['comment'];
  }

  Map<String, dynamic> toJson() {
    return {
      'osDistro': osDistro,
      'slices': slices,
      'vpsPlatform': vpsPlatform,
      'controlpanel': controlpanel,
      'period': period,
      'location': location,
      'osVersion': osVersion,
      'hostname': hostname,
      'coupon': coupon,
      'rootpass': rootpass,
      'comment': comment
     };
  }

  static List<VpsOrderPutRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<VpsOrderPutRequest>() : json.map((value) => new VpsOrderPutRequest.fromJson(value)).toList();
  }

  static Map<String, VpsOrderPutRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, VpsOrderPutRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new VpsOrderPutRequest.fromJson(value));
    }
    return map;
  }
}
