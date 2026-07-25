part of swagger.api;

class ServerAsset {
  /* Unique identifier for the asset. */
  int id = null;
/* Order identifier for the asset. */
  String orderId = null;
/* Hostname associated with the asset. */
  String hostname = null;
/* Status of the asset. */
  String status = null;
/* Primary IPv4 address of the asset. */
  String primaryIpv4 = null;
/* Primary IPv6 address of the asset. */
  String primaryIpv6 = null;
/* MAC address associated with the asset. */
  String mac = null;
/* Datacenter identifier for the asset. */
  String datacenter = null;
/* Type identifier for the asset. */
  String typeId = null;
/* Asset tag associated with the asset. */
  String assetTag = null;
/* Rack identifier for the asset. */
  String rack = null;
/* Row identifier for the asset. */
  String row = null;
/* Column identifier for the asset. */
  String col = null;
/* Starting unit identifier for the asset. */
  String unitStart = null;
/* Ending unit identifier for the asset. */
  String unitEnd = null;
/* Subunit identifier for the asset. */
  String unitSub = null;
/* IPMI MAC address associated with the asset. */
  String ipmiMac = null;
/* IPMI IP address associated with the asset. */
  String ipmiIp = null;
/* IPMI admin username associated with the asset. */
  String ipmiAdminUsername = null;
/* IPMI admin password associated with the asset. */
  String ipmiAdminPassword = null;
/* IPMI client username associated with the asset. */
  String ipmiClientUsername = null;
/* IPMI client password associated with the asset. */
  String ipmiClientPassword = null;
/* IPMI update status associated with the asset. */
  String ipmiUpdated = null;
/* IPMI working status associated with the asset. */
  String ipmiWorking = null;
/* Company associated with the asset. */
  String company = null;
/* Comments associated with the asset. */
  String comments = null;
/* Make of the asset. */
  String make = null;
/* Model of the asset. */
  String model = null;
/* Description of the asset. */
  String description = null;
/* Customer identifier for the asset. */
  String customerId = null;
/* External identifier for the asset. */
  String externalId = null;
/* Billing status of the asset. */
  String billingStatus = null;
/* Overdue status of the asset. */
  String overdue = null;
/* Timestamp of asset creation. */
  String createTimestamp = null;
/* Timestamp of asset update. */
  String updateTimestamp = null;
/* Asset identifier for the asset. */
  String assetId = null;
/* Name of the asset. */
  String assetName = null;
/* Rack identifier for the asset. */
  String rackId = null;
/* Rack name associated with the asset. */
  String rackName = null;
/* Location of the rack associated with the asset. */
  String rackLocation = null;
/* Size of the rack associated with the asset. */
  String rackSize = null;
/* X-coordinate of the asset within the rack. */
  String rackX = null;
/* Y-coordinate of the asset within the rack. */
  String rackY = null;
/* Comment associated with the asset. */
  String comment = null;
/* List of switchports associated with the asset. */
  List<int> switchports = [];
/* List of VLANs associated with the asset. */
  List<String> vlans = [];
/* List of IPv6 VLANs associated with the asset. */
  List<String> vlans6 = [];

  ServerLease lease = null;

  ServerAsset();

  @override
  String toString() {
    return 'ServerAsset[id=$id, orderId=$orderId, hostname=$hostname, status=$status, primaryIpv4=$primaryIpv4, primaryIpv6=$primaryIpv6, mac=$mac, datacenter=$datacenter, typeId=$typeId, assetTag=$assetTag, rack=$rack, row=$row, col=$col, unitStart=$unitStart, unitEnd=$unitEnd, unitSub=$unitSub, ipmiMac=$ipmiMac, ipmiIp=$ipmiIp, ipmiAdminUsername=$ipmiAdminUsername, ipmiAdminPassword=$ipmiAdminPassword, ipmiClientUsername=$ipmiClientUsername, ipmiClientPassword=$ipmiClientPassword, ipmiUpdated=$ipmiUpdated, ipmiWorking=$ipmiWorking, company=$company, comments=$comments, make=$make, model=$model, description=$description, customerId=$customerId, externalId=$externalId, billingStatus=$billingStatus, overdue=$overdue, createTimestamp=$createTimestamp, updateTimestamp=$updateTimestamp, assetId=$assetId, assetName=$assetName, rackId=$rackId, rackName=$rackName, rackLocation=$rackLocation, rackSize=$rackSize, rackX=$rackX, rackY=$rackY, comment=$comment, switchports=$switchports, vlans=$vlans, vlans6=$vlans6, lease=$lease, ]';
  }

  ServerAsset.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    orderId = json['order_id'];
    hostname = json['hostname'];
    status = json['status'];
    primaryIpv4 = json['primary_ipv4'];
    primaryIpv6 = json['primary_ipv6'];
    mac = json['mac'];
    datacenter = json['datacenter'];
    typeId = json['type_id'];
    assetTag = json['asset_tag'];
    rack = json['rack'];
    row = json['row'];
    col = json['col'];
    unitStart = json['unit_start'];
    unitEnd = json['unit_end'];
    unitSub = json['unit_sub'];
    ipmiMac = json['ipmi_mac'];
    ipmiIp = json['ipmi_ip'];
    ipmiAdminUsername = json['ipmi_admin_username'];
    ipmiAdminPassword = json['ipmi_admin_password'];
    ipmiClientUsername = json['ipmi_client_username'];
    ipmiClientPassword = json['ipmi_client_password'];
    ipmiUpdated = json['ipmi_updated'];
    ipmiWorking = json['ipmi_working'];
    company = json['company'];
    comments = json['comments'];
    make = json['make'];
    model = json['model'];
    description = json['description'];
    customerId = json['customer_id'];
    externalId = json['external_id'];
    billingStatus = json['billing_status'];
    overdue = json['overdue'];
    createTimestamp = json['create_timestamp'];
    updateTimestamp = json['update_timestamp'];
    assetId = json['asset_id'];
    assetName = json['asset_name'];
    rackId = json['rack_id'];
    rackName = json['rack_name'];
    rackLocation = json['rack_location'];
    rackSize = json['rack_size'];
    rackX = json['rack_x'];
    rackY = json['rack_y'];
    comment = json['comment'];
    switchports = (json['switchports'] as List).map((item) => item as int).toList();
    vlans = (json['vlans'] as List).map((item) => item as String).toList();
    vlans6 = (json['vlans6'] as List).map((item) => item as String).toList();
    lease = new ServerLease.fromJson(json['lease']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'order_id': orderId,
      'hostname': hostname,
      'status': status,
      'primary_ipv4': primaryIpv4,
      'primary_ipv6': primaryIpv6,
      'mac': mac,
      'datacenter': datacenter,
      'type_id': typeId,
      'asset_tag': assetTag,
      'rack': rack,
      'row': row,
      'col': col,
      'unit_start': unitStart,
      'unit_end': unitEnd,
      'unit_sub': unitSub,
      'ipmi_mac': ipmiMac,
      'ipmi_ip': ipmiIp,
      'ipmi_admin_username': ipmiAdminUsername,
      'ipmi_admin_password': ipmiAdminPassword,
      'ipmi_client_username': ipmiClientUsername,
      'ipmi_client_password': ipmiClientPassword,
      'ipmi_updated': ipmiUpdated,
      'ipmi_working': ipmiWorking,
      'company': company,
      'comments': comments,
      'make': make,
      'model': model,
      'description': description,
      'customer_id': customerId,
      'external_id': externalId,
      'billing_status': billingStatus,
      'overdue': overdue,
      'create_timestamp': createTimestamp,
      'update_timestamp': updateTimestamp,
      'asset_id': assetId,
      'asset_name': assetName,
      'rack_id': rackId,
      'rack_name': rackName,
      'rack_location': rackLocation,
      'rack_size': rackSize,
      'rack_x': rackX,
      'rack_y': rackY,
      'comment': comment,
      'switchports': switchports,
      'vlans': vlans,
      'vlans6': vlans6,
      'lease': lease
     };
  }

  static List<ServerAsset> listFromJson(List<dynamic> json) {
    return json == null ? new List<ServerAsset>() : json.map((value) => new ServerAsset.fromJson(value)).toList();
  }

  static Map<String, ServerAsset> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ServerAsset>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ServerAsset.fromJson(value));
    }
    return map;
  }
}
