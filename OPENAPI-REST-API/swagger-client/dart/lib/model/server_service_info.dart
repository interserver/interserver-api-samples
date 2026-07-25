part of swagger.api;

class ServerServiceInfo {
  /* The ID of the server. */
  String serverId = null;
/* The hostname of the server. */
  String serverHostname = null;
/* The customer ID associated with the server. */
  String serverCustid = null;
/* The type of the server. */
  String serverType = null;
/* The currency used for billing. */
  String serverCurrency = null;
/* The date when the server was ordered. */
  String serverOrderDate = null;
/* The invoice number for the server. */
  String serverInvoice = null;
/* The coupon associated with the server. */
  String serverCoupon = null;
/* The status of the server. */
  String serverStatus = null;
/* The root of the server. */
  String serverRoot = null;
/* The dedicated tag of the server. */
  String serverDedicatedTag = null;
/* The custom tag of the server. */
  String serverCustomTag = null;
/* Comments related to the server. */
  String serverComment = null;
/* The initial billing amount for the server. */
  String serverInitialBill = null;
/* The hardware information of the server. */
  String serverHardware = null;
/* The number of IPs associated with the server. */
  String serverIps = null;
/* The monthly billing amount for the server. */
  String serverMonthlyBill = null;
/* The setup status of the server. */
  String serverSetup = null;
/* Discount information for the server. */
  String serverDiscount = null;
/* The reputation of the server. */
  String serverRep = null;
/* The date related to the server. */
  String serverDate = null;
/* The total cost of the server. */
  String serverTotalCost = null;
/* The location of the server. */
  String serverLocation = null;
/* The ordered hardware for the server. */
  String serverHardwareOrdered = null;
/* The billed amount for the server. */
  String serverBilled = null;
/* Indicates whether a welcome email was sent. */
  String serverWelcomeEmail = null;
/* The number of dedicated CPUs for the server. */
  String serverDedicatedCpu = null;
/* The amount of dedicated memory for the server. */
  String serverDedicatedMemory = null;
/* The size of the first dedicated hard drive. */
  String serverDedicatedHd1 = null;
/* The size of the second dedicated hard drive. */
  String serverDedicatedHd2 = null;
/* The bandwidth of the server. */
  String serverDedicatedBandwidth = null;
/* The number of dedicated IPs for the server. */
  String serverDedicatedIps = null;
/* The operating system of the server. */
  String serverDedicatedOs = null;
/* The control panel of the server. */
  String serverDedicatedCp = null;
/* The RAID configuration of the server. */
  String serverDedicatedRaid = null;
/* Additional information about the server. */
  String serverExtra = null;

  ServerServiceInfo();

  @override
  String toString() {
    return 'ServerServiceInfo[serverId=$serverId, serverHostname=$serverHostname, serverCustid=$serverCustid, serverType=$serverType, serverCurrency=$serverCurrency, serverOrderDate=$serverOrderDate, serverInvoice=$serverInvoice, serverCoupon=$serverCoupon, serverStatus=$serverStatus, serverRoot=$serverRoot, serverDedicatedTag=$serverDedicatedTag, serverCustomTag=$serverCustomTag, serverComment=$serverComment, serverInitialBill=$serverInitialBill, serverHardware=$serverHardware, serverIps=$serverIps, serverMonthlyBill=$serverMonthlyBill, serverSetup=$serverSetup, serverDiscount=$serverDiscount, serverRep=$serverRep, serverDate=$serverDate, serverTotalCost=$serverTotalCost, serverLocation=$serverLocation, serverHardwareOrdered=$serverHardwareOrdered, serverBilled=$serverBilled, serverWelcomeEmail=$serverWelcomeEmail, serverDedicatedCpu=$serverDedicatedCpu, serverDedicatedMemory=$serverDedicatedMemory, serverDedicatedHd1=$serverDedicatedHd1, serverDedicatedHd2=$serverDedicatedHd2, serverDedicatedBandwidth=$serverDedicatedBandwidth, serverDedicatedIps=$serverDedicatedIps, serverDedicatedOs=$serverDedicatedOs, serverDedicatedCp=$serverDedicatedCp, serverDedicatedRaid=$serverDedicatedRaid, serverExtra=$serverExtra, ]';
  }

  ServerServiceInfo.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    serverId = json['server_id'];
    serverHostname = json['server_hostname'];
    serverCustid = json['server_custid'];
    serverType = json['server_type'];
    serverCurrency = json['server_currency'];
    serverOrderDate = json['server_order_date'];
    serverInvoice = json['server_invoice'];
    serverCoupon = json['server_coupon'];
    serverStatus = json['server_status'];
    serverRoot = json['server_root'];
    serverDedicatedTag = json['server_dedicated_tag'];
    serverCustomTag = json['server_custom_tag'];
    serverComment = json['server_comment'];
    serverInitialBill = json['server_initial_bill'];
    serverHardware = json['server_hardware'];
    serverIps = json['server_ips'];
    serverMonthlyBill = json['server_monthly_bill'];
    serverSetup = json['server_setup'];
    serverDiscount = json['server_discount'];
    serverRep = json['server_rep'];
    serverDate = json['server_date'];
    serverTotalCost = json['server_total_cost'];
    serverLocation = json['server_location'];
    serverHardwareOrdered = json['server_hardware_ordered'];
    serverBilled = json['server_billed'];
    serverWelcomeEmail = json['server_welcome_email'];
    serverDedicatedCpu = json['server_dedicated_cpu'];
    serverDedicatedMemory = json['server_dedicated_memory'];
    serverDedicatedHd1 = json['server_dedicated_hd1'];
    serverDedicatedHd2 = json['server_dedicated_hd2'];
    serverDedicatedBandwidth = json['server_dedicated_bandwidth'];
    serverDedicatedIps = json['server_dedicated_ips'];
    serverDedicatedOs = json['server_dedicated_os'];
    serverDedicatedCp = json['server_dedicated_cp'];
    serverDedicatedRaid = json['server_dedicated_raid'];
    serverExtra = json['server_extra'];
  }

  Map<String, dynamic> toJson() {
    return {
      'server_id': serverId,
      'server_hostname': serverHostname,
      'server_custid': serverCustid,
      'server_type': serverType,
      'server_currency': serverCurrency,
      'server_order_date': serverOrderDate,
      'server_invoice': serverInvoice,
      'server_coupon': serverCoupon,
      'server_status': serverStatus,
      'server_root': serverRoot,
      'server_dedicated_tag': serverDedicatedTag,
      'server_custom_tag': serverCustomTag,
      'server_comment': serverComment,
      'server_initial_bill': serverInitialBill,
      'server_hardware': serverHardware,
      'server_ips': serverIps,
      'server_monthly_bill': serverMonthlyBill,
      'server_setup': serverSetup,
      'server_discount': serverDiscount,
      'server_rep': serverRep,
      'server_date': serverDate,
      'server_total_cost': serverTotalCost,
      'server_location': serverLocation,
      'server_hardware_ordered': serverHardwareOrdered,
      'server_billed': serverBilled,
      'server_welcome_email': serverWelcomeEmail,
      'server_dedicated_cpu': serverDedicatedCpu,
      'server_dedicated_memory': serverDedicatedMemory,
      'server_dedicated_hd1': serverDedicatedHd1,
      'server_dedicated_hd2': serverDedicatedHd2,
      'server_dedicated_bandwidth': serverDedicatedBandwidth,
      'server_dedicated_ips': serverDedicatedIps,
      'server_dedicated_os': serverDedicatedOs,
      'server_dedicated_cp': serverDedicatedCp,
      'server_dedicated_raid': serverDedicatedRaid,
      'server_extra': serverExtra
     };
  }

  static List<ServerServiceInfo> listFromJson(List<dynamic> json) {
    return json == null ? new List<ServerServiceInfo>() : json.map((value) => new ServerServiceInfo.fromJson(value)).toList();
  }

  static Map<String, ServerServiceInfo> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ServerServiceInfo>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ServerServiceInfo.fromJson(value));
    }
    return map;
  }
}
