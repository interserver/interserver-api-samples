part of swagger.api;

class QuickserverServiceInfo {
  /* Quickserver ID */
  String qsId = null;
/* Customer ID */
  String qsCustid = null;
/* Server information */
  String qsServer = null;
/* IP address */
  String qsIp = null;
/* IPv6 address (null) */
  String qsIpv6 = null;
/* VZ ID */
  String qsVzid = null;
/* Currency */
  String qsCurrency = null;
/* Type */
  String qsType = null;
/* Order date */
  String qsOrderDate = null;
/* Status */
  String qsStatus = null;
/* Invoice number */
  String qsInvoice = null;
/* Coupon information */
  String qsCoupon = null;
/* Extra information */
  String qsExtra = null;
/* Hostname */
  String qsHostname = null;
/* Server status */
  String qsServerStatus = null;
/* Comment */
  String qsComment = null;
/* Slices information */
  String qsSlices = null;
/* VNC information */
  String qsVnc = null;
/* VNC port (null) */
  int qsVncPort = null;
/* Root password */
  String qsRootpass = null;
/* MAC address */
  String qsMac = null;
/* Operating system */
  String qsOs = null;
/* OS version */
  String qsVersion = null;
/* Location */
  String qsLocation = null;
/* Platform (null) */
  String qsPlatform = null;

  QuickserverServiceInfo();

  @override
  String toString() {
    return 'QuickserverServiceInfo[qsId=$qsId, qsCustid=$qsCustid, qsServer=$qsServer, qsIp=$qsIp, qsIpv6=$qsIpv6, qsVzid=$qsVzid, qsCurrency=$qsCurrency, qsType=$qsType, qsOrderDate=$qsOrderDate, qsStatus=$qsStatus, qsInvoice=$qsInvoice, qsCoupon=$qsCoupon, qsExtra=$qsExtra, qsHostname=$qsHostname, qsServerStatus=$qsServerStatus, qsComment=$qsComment, qsSlices=$qsSlices, qsVnc=$qsVnc, qsVncPort=$qsVncPort, qsRootpass=$qsRootpass, qsMac=$qsMac, qsOs=$qsOs, qsVersion=$qsVersion, qsLocation=$qsLocation, qsPlatform=$qsPlatform, ]';
  }

  QuickserverServiceInfo.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    qsId = json['qs_id'];
    qsCustid = json['qs_custid'];
    qsServer = json['qs_server'];
    qsIp = json['qs_ip'];
    qsIpv6 = json['qs_ipv6'];
    qsVzid = json['qs_vzid'];
    qsCurrency = json['qs_currency'];
    qsType = json['qs_type'];
    qsOrderDate = json['qs_order_date'];
    qsStatus = json['qs_status'];
    qsInvoice = json['qs_invoice'];
    qsCoupon = json['qs_coupon'];
    qsExtra = json['qs_extra'];
    qsHostname = json['qs_hostname'];
    qsServerStatus = json['qs_server_status'];
    qsComment = json['qs_comment'];
    qsSlices = json['qs_slices'];
    qsVnc = json['qs_vnc'];
    qsVncPort = json['qs_vnc_port'];
    qsRootpass = json['qs_rootpass'];
    qsMac = json['qs_mac'];
    qsOs = json['qs_os'];
    qsVersion = json['qs_version'];
    qsLocation = json['qs_location'];
    qsPlatform = json['qs_platform'];
  }

  Map<String, dynamic> toJson() {
    return {
      'qs_id': qsId,
      'qs_custid': qsCustid,
      'qs_server': qsServer,
      'qs_ip': qsIp,
      'qs_ipv6': qsIpv6,
      'qs_vzid': qsVzid,
      'qs_currency': qsCurrency,
      'qs_type': qsType,
      'qs_order_date': qsOrderDate,
      'qs_status': qsStatus,
      'qs_invoice': qsInvoice,
      'qs_coupon': qsCoupon,
      'qs_extra': qsExtra,
      'qs_hostname': qsHostname,
      'qs_server_status': qsServerStatus,
      'qs_comment': qsComment,
      'qs_slices': qsSlices,
      'qs_vnc': qsVnc,
      'qs_vnc_port': qsVncPort,
      'qs_rootpass': qsRootpass,
      'qs_mac': qsMac,
      'qs_os': qsOs,
      'qs_version': qsVersion,
      'qs_location': qsLocation,
      'qs_platform': qsPlatform
     };
  }

  static List<QuickserverServiceInfo> listFromJson(List<dynamic> json) {
    return json == null ? new List<QuickserverServiceInfo>() : json.map((value) => new QuickserverServiceInfo.fromJson(value)).toList();
  }

  static Map<String, QuickserverServiceInfo> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, QuickserverServiceInfo>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new QuickserverServiceInfo.fromJson(value));
    }
    return map;
  }
}
