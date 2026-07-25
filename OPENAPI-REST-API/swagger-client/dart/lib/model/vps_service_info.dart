part of swagger.api;

class VpsServiceInfo {
  /* VPS ID */
  String vpsId = null;
/* Customer ID */
  String vpsCustid = null;
/* Server ID */
  String vpsServer = null;
/* IP address of the VPS */
  String vpsIp = null;
/* IPv6 address of the VPS */
  String vpsIpv6 = null;
/* VPS Virtuozzo ID */
  String vpsVzid = null;
/* Currency used for billing */
  String vpsCurrency = null;
/* VPS type */
  String vpsType = null;
/* Date of VPS order */
  String vpsOrderDate = null;
/* VPS status */
  String vpsStatus = null;
/* VPS invoice number */
  String vpsInvoice = null;
/* VPS coupon code */
  String vpsCoupon = null;
/* Additional information about the VPS */
  String vpsExtra = null;
/* VPS hostname */
  String vpsHostname = null;
/* Status of the VPS server */
  String vpsServerStatus = null;
/* Comment associated with the VPS */
  String vpsComment = null;
/* Number of VPS slices */
  String vpsSlices = null;
/* VNC address */
  String vpsVnc = null;
/* VNC port */
  String vpsVncPort = null;
/* Root password of the VPS */
  String vpsRootpass = null;
/* MAC address of the VPS */
  String vpsMac = null;
/* Operating system of the VPS */
  String vpsOs = null;
/* Version of the operating system */
  String vpsVersion = null;
/* Location of the VPS */
  String vpsLocation = null;
/* Virtualization platform */
  String vpsPlatform = null;
/* Amount of disk space used */
  String vpsDiskused = null;
/* Maximum disk space available */
  String vpsDiskmax = null;

  VpsServiceInfo();

  @override
  String toString() {
    return 'VpsServiceInfo[vpsId=$vpsId, vpsCustid=$vpsCustid, vpsServer=$vpsServer, vpsIp=$vpsIp, vpsIpv6=$vpsIpv6, vpsVzid=$vpsVzid, vpsCurrency=$vpsCurrency, vpsType=$vpsType, vpsOrderDate=$vpsOrderDate, vpsStatus=$vpsStatus, vpsInvoice=$vpsInvoice, vpsCoupon=$vpsCoupon, vpsExtra=$vpsExtra, vpsHostname=$vpsHostname, vpsServerStatus=$vpsServerStatus, vpsComment=$vpsComment, vpsSlices=$vpsSlices, vpsVnc=$vpsVnc, vpsVncPort=$vpsVncPort, vpsRootpass=$vpsRootpass, vpsMac=$vpsMac, vpsOs=$vpsOs, vpsVersion=$vpsVersion, vpsLocation=$vpsLocation, vpsPlatform=$vpsPlatform, vpsDiskused=$vpsDiskused, vpsDiskmax=$vpsDiskmax, ]';
  }

  VpsServiceInfo.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    vpsId = json['vps_id'];
    vpsCustid = json['vps_custid'];
    vpsServer = json['vps_server'];
    vpsIp = json['vps_ip'];
    vpsIpv6 = json['vps_ipv6'];
    vpsVzid = json['vps_vzid'];
    vpsCurrency = json['vps_currency'];
    vpsType = json['vps_type'];
    vpsOrderDate = json['vps_order_date'];
    vpsStatus = json['vps_status'];
    vpsInvoice = json['vps_invoice'];
    vpsCoupon = json['vps_coupon'];
    vpsExtra = json['vps_extra'];
    vpsHostname = json['vps_hostname'];
    vpsServerStatus = json['vps_server_status'];
    vpsComment = json['vps_comment'];
    vpsSlices = json['vps_slices'];
    vpsVnc = json['vps_vnc'];
    vpsVncPort = json['vps_vnc_port'];
    vpsRootpass = json['vps_rootpass'];
    vpsMac = json['vps_mac'];
    vpsOs = json['vps_os'];
    vpsVersion = json['vps_version'];
    vpsLocation = json['vps_location'];
    vpsPlatform = json['vps_platform'];
    vpsDiskused = json['vps_diskused'];
    vpsDiskmax = json['vps_diskmax'];
  }

  Map<String, dynamic> toJson() {
    return {
      'vps_id': vpsId,
      'vps_custid': vpsCustid,
      'vps_server': vpsServer,
      'vps_ip': vpsIp,
      'vps_ipv6': vpsIpv6,
      'vps_vzid': vpsVzid,
      'vps_currency': vpsCurrency,
      'vps_type': vpsType,
      'vps_order_date': vpsOrderDate,
      'vps_status': vpsStatus,
      'vps_invoice': vpsInvoice,
      'vps_coupon': vpsCoupon,
      'vps_extra': vpsExtra,
      'vps_hostname': vpsHostname,
      'vps_server_status': vpsServerStatus,
      'vps_comment': vpsComment,
      'vps_slices': vpsSlices,
      'vps_vnc': vpsVnc,
      'vps_vnc_port': vpsVncPort,
      'vps_rootpass': vpsRootpass,
      'vps_mac': vpsMac,
      'vps_os': vpsOs,
      'vps_version': vpsVersion,
      'vps_location': vpsLocation,
      'vps_platform': vpsPlatform,
      'vps_diskused': vpsDiskused,
      'vps_diskmax': vpsDiskmax
     };
  }

  static List<VpsServiceInfo> listFromJson(List<dynamic> json) {
    return json == null ? new List<VpsServiceInfo>() : json.map((value) => new VpsServiceInfo.fromJson(value)).toList();
  }

  static Map<String, VpsServiceInfo> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, VpsServiceInfo>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new VpsServiceInfo.fromJson(value));
    }
    return map;
  }
}
