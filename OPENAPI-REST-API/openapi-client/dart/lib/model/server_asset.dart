//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class ServerAsset {
  /// Returns a new [ServerAsset] instance.
  ServerAsset({
    required this.id,
    required this.orderId,
    required this.hostname,
    required this.status,
    required this.primaryIpv4,
    required this.primaryIpv6,
    required this.datacenter,
    required this.typeId,
    required this.assetTag,
    required this.rack,
    required this.row,
    required this.col,
    required this.unitStart,
    required this.unitEnd,
    required this.unitSub,
    required this.ipmiMac,
    required this.ipmiIp,
    required this.ipmiWorking,
    required this.company,
    required this.comments,
    required this.make,
    required this.model,
    required this.description,
    required this.customerId,
    required this.externalId,
    required this.billingStatus,
    required this.overdue,
    required this.assetId,
    required this.assetName,
    required this.rackId,
    required this.rackName,
    required this.rackLocation,
    required this.rackSize,
    required this.rackX,
    required this.rackY,
    this.switchports = const [],
    this.vlans = const [],
    this.vlans6 = const [],
    required this.lease,
    this.mac,
    this.ipmiAdminUsername,
    this.ipmiAdminPassword,
    this.ipmiClientUsername,
    this.ipmiClientPassword,
    this.ipmiUpdated,
    this.createTimestamp,
    this.updateTimestamp,
    this.comment,
  });

  /// Unique identifier for the asset.
  int id;

  /// Order identifier for the asset.
  String orderId;

  /// Hostname associated with the asset.
  String hostname;

  /// Status of the asset.
  String status;

  /// Primary IPv4 address of the asset.
  String primaryIpv4;

  /// Primary IPv6 address of the asset.
  String primaryIpv6;

  /// Datacenter identifier for the asset.
  String datacenter;

  /// Type identifier for the asset.
  String typeId;

  /// Asset tag associated with the asset.
  String assetTag;

  /// Rack identifier for the asset.
  String rack;

  /// Row identifier for the asset.
  String row;

  /// Column identifier for the asset.
  String col;

  /// Starting unit identifier for the asset.
  String unitStart;

  /// Ending unit identifier for the asset.
  String unitEnd;

  /// Subunit identifier for the asset.
  String unitSub;

  /// IPMI MAC address associated with the asset.
  String ipmiMac;

  /// IPMI IP address associated with the asset.
  String ipmiIp;

  /// IPMI working status associated with the asset.
  String ipmiWorking;

  /// Company associated with the asset.
  String company;

  /// Comments associated with the asset.
  String comments;

  /// Make of the asset.
  String make;

  /// Model of the asset.
  String model;

  /// Description of the asset.
  String description;

  /// Customer identifier for the asset.
  String customerId;

  /// External identifier for the asset.
  String externalId;

  /// Billing status of the asset.
  String billingStatus;

  /// Overdue status of the asset.
  String overdue;

  /// Asset identifier for the asset.
  String assetId;

  /// Name of the asset.
  String assetName;

  /// Rack identifier for the asset.
  String rackId;

  /// Rack name associated with the asset.
  String rackName;

  /// Location of the rack associated with the asset.
  String rackLocation;

  /// Size of the rack associated with the asset.
  String rackSize;

  /// X-coordinate of the asset within the rack.
  String rackX;

  /// Y-coordinate of the asset within the rack.
  String rackY;

  /// List of switchports associated with the asset.
  List<int> switchports;

  /// List of VLANs associated with the asset.
  List<String> vlans;

  /// List of IPv6 VLANs associated with the asset.
  List<String> vlans6;

  ServerLease lease;

  /// MAC address associated with the asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? mac;

  /// IPMI admin username associated with the asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ipmiAdminUsername;

  /// IPMI admin password associated with the asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ipmiAdminPassword;

  /// IPMI client username associated with the asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ipmiClientUsername;

  /// IPMI client password associated with the asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ipmiClientPassword;

  /// IPMI update status associated with the asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ipmiUpdated;

  /// Timestamp of asset creation.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? createTimestamp;

  /// Timestamp of asset update.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? updateTimestamp;

  /// Comment associated with the asset.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? comment;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ServerAsset &&
    other.id == id &&
    other.orderId == orderId &&
    other.hostname == hostname &&
    other.status == status &&
    other.primaryIpv4 == primaryIpv4 &&
    other.primaryIpv6 == primaryIpv6 &&
    other.datacenter == datacenter &&
    other.typeId == typeId &&
    other.assetTag == assetTag &&
    other.rack == rack &&
    other.row == row &&
    other.col == col &&
    other.unitStart == unitStart &&
    other.unitEnd == unitEnd &&
    other.unitSub == unitSub &&
    other.ipmiMac == ipmiMac &&
    other.ipmiIp == ipmiIp &&
    other.ipmiWorking == ipmiWorking &&
    other.company == company &&
    other.comments == comments &&
    other.make == make &&
    other.model == model &&
    other.description == description &&
    other.customerId == customerId &&
    other.externalId == externalId &&
    other.billingStatus == billingStatus &&
    other.overdue == overdue &&
    other.assetId == assetId &&
    other.assetName == assetName &&
    other.rackId == rackId &&
    other.rackName == rackName &&
    other.rackLocation == rackLocation &&
    other.rackSize == rackSize &&
    other.rackX == rackX &&
    other.rackY == rackY &&
    _deepEquality.equals(other.switchports, switchports) &&
    _deepEquality.equals(other.vlans, vlans) &&
    _deepEquality.equals(other.vlans6, vlans6) &&
    other.lease == lease &&
    other.mac == mac &&
    other.ipmiAdminUsername == ipmiAdminUsername &&
    other.ipmiAdminPassword == ipmiAdminPassword &&
    other.ipmiClientUsername == ipmiClientUsername &&
    other.ipmiClientPassword == ipmiClientPassword &&
    other.ipmiUpdated == ipmiUpdated &&
    other.createTimestamp == createTimestamp &&
    other.updateTimestamp == updateTimestamp &&
    other.comment == comment;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (orderId.hashCode) +
    (hostname.hashCode) +
    (status.hashCode) +
    (primaryIpv4.hashCode) +
    (primaryIpv6.hashCode) +
    (datacenter.hashCode) +
    (typeId.hashCode) +
    (assetTag.hashCode) +
    (rack.hashCode) +
    (row.hashCode) +
    (col.hashCode) +
    (unitStart.hashCode) +
    (unitEnd.hashCode) +
    (unitSub.hashCode) +
    (ipmiMac.hashCode) +
    (ipmiIp.hashCode) +
    (ipmiWorking.hashCode) +
    (company.hashCode) +
    (comments.hashCode) +
    (make.hashCode) +
    (model.hashCode) +
    (description.hashCode) +
    (customerId.hashCode) +
    (externalId.hashCode) +
    (billingStatus.hashCode) +
    (overdue.hashCode) +
    (assetId.hashCode) +
    (assetName.hashCode) +
    (rackId.hashCode) +
    (rackName.hashCode) +
    (rackLocation.hashCode) +
    (rackSize.hashCode) +
    (rackX.hashCode) +
    (rackY.hashCode) +
    (switchports.hashCode) +
    (vlans.hashCode) +
    (vlans6.hashCode) +
    (lease.hashCode) +
    (mac == null ? 0 : mac!.hashCode) +
    (ipmiAdminUsername == null ? 0 : ipmiAdminUsername!.hashCode) +
    (ipmiAdminPassword == null ? 0 : ipmiAdminPassword!.hashCode) +
    (ipmiClientUsername == null ? 0 : ipmiClientUsername!.hashCode) +
    (ipmiClientPassword == null ? 0 : ipmiClientPassword!.hashCode) +
    (ipmiUpdated == null ? 0 : ipmiUpdated!.hashCode) +
    (createTimestamp == null ? 0 : createTimestamp!.hashCode) +
    (updateTimestamp == null ? 0 : updateTimestamp!.hashCode) +
    (comment == null ? 0 : comment!.hashCode);

  @override
  String toString() => 'ServerAsset[id=$id, orderId=$orderId, hostname=$hostname, status=$status, primaryIpv4=$primaryIpv4, primaryIpv6=$primaryIpv6, datacenter=$datacenter, typeId=$typeId, assetTag=$assetTag, rack=$rack, row=$row, col=$col, unitStart=$unitStart, unitEnd=$unitEnd, unitSub=$unitSub, ipmiMac=$ipmiMac, ipmiIp=$ipmiIp, ipmiWorking=$ipmiWorking, company=$company, comments=$comments, make=$make, model=$model, description=$description, customerId=$customerId, externalId=$externalId, billingStatus=$billingStatus, overdue=$overdue, assetId=$assetId, assetName=$assetName, rackId=$rackId, rackName=$rackName, rackLocation=$rackLocation, rackSize=$rackSize, rackX=$rackX, rackY=$rackY, switchports=$switchports, vlans=$vlans, vlans6=$vlans6, lease=$lease, mac=$mac, ipmiAdminUsername=$ipmiAdminUsername, ipmiAdminPassword=$ipmiAdminPassword, ipmiClientUsername=$ipmiClientUsername, ipmiClientPassword=$ipmiClientPassword, ipmiUpdated=$ipmiUpdated, createTimestamp=$createTimestamp, updateTimestamp=$updateTimestamp, comment=$comment]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'order_id'] = this.orderId;
      json[r'hostname'] = this.hostname;
      json[r'status'] = this.status;
      json[r'primary_ipv4'] = this.primaryIpv4;
      json[r'primary_ipv6'] = this.primaryIpv6;
      json[r'datacenter'] = this.datacenter;
      json[r'type_id'] = this.typeId;
      json[r'asset_tag'] = this.assetTag;
      json[r'rack'] = this.rack;
      json[r'row'] = this.row;
      json[r'col'] = this.col;
      json[r'unit_start'] = this.unitStart;
      json[r'unit_end'] = this.unitEnd;
      json[r'unit_sub'] = this.unitSub;
      json[r'ipmi_mac'] = this.ipmiMac;
      json[r'ipmi_ip'] = this.ipmiIp;
      json[r'ipmi_working'] = this.ipmiWorking;
      json[r'company'] = this.company;
      json[r'comments'] = this.comments;
      json[r'make'] = this.make;
      json[r'model'] = this.model;
      json[r'description'] = this.description;
      json[r'customer_id'] = this.customerId;
      json[r'external_id'] = this.externalId;
      json[r'billing_status'] = this.billingStatus;
      json[r'overdue'] = this.overdue;
      json[r'asset_id'] = this.assetId;
      json[r'asset_name'] = this.assetName;
      json[r'rack_id'] = this.rackId;
      json[r'rack_name'] = this.rackName;
      json[r'rack_location'] = this.rackLocation;
      json[r'rack_size'] = this.rackSize;
      json[r'rack_x'] = this.rackX;
      json[r'rack_y'] = this.rackY;
      json[r'switchports'] = this.switchports;
      json[r'vlans'] = this.vlans;
      json[r'vlans6'] = this.vlans6;
      json[r'lease'] = this.lease;
    if (this.mac != null) {
      json[r'mac'] = this.mac;
    } else {
      json[r'mac'] = null;
    }
    if (this.ipmiAdminUsername != null) {
      json[r'ipmi_admin_username'] = this.ipmiAdminUsername;
    } else {
      json[r'ipmi_admin_username'] = null;
    }
    if (this.ipmiAdminPassword != null) {
      json[r'ipmi_admin_password'] = this.ipmiAdminPassword;
    } else {
      json[r'ipmi_admin_password'] = null;
    }
    if (this.ipmiClientUsername != null) {
      json[r'ipmi_client_username'] = this.ipmiClientUsername;
    } else {
      json[r'ipmi_client_username'] = null;
    }
    if (this.ipmiClientPassword != null) {
      json[r'ipmi_client_password'] = this.ipmiClientPassword;
    } else {
      json[r'ipmi_client_password'] = null;
    }
    if (this.ipmiUpdated != null) {
      json[r'ipmi_updated'] = this.ipmiUpdated;
    } else {
      json[r'ipmi_updated'] = null;
    }
    if (this.createTimestamp != null) {
      json[r'create_timestamp'] = this.createTimestamp;
    } else {
      json[r'create_timestamp'] = null;
    }
    if (this.updateTimestamp != null) {
      json[r'update_timestamp'] = this.updateTimestamp;
    } else {
      json[r'update_timestamp'] = null;
    }
    if (this.comment != null) {
      json[r'comment'] = this.comment;
    } else {
      json[r'comment'] = null;
    }
    return json;
  }

  /// Returns a new [ServerAsset] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ServerAsset? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'id'), 'Required key "ServerAsset[id]" is missing from JSON.');
        assert(json[r'id'] != null, 'Required key "ServerAsset[id]" has a null value in JSON.');
        assert(json.containsKey(r'order_id'), 'Required key "ServerAsset[order_id]" is missing from JSON.');
        assert(json[r'order_id'] != null, 'Required key "ServerAsset[order_id]" has a null value in JSON.');
        assert(json.containsKey(r'hostname'), 'Required key "ServerAsset[hostname]" is missing from JSON.');
        assert(json[r'hostname'] != null, 'Required key "ServerAsset[hostname]" has a null value in JSON.');
        assert(json.containsKey(r'status'), 'Required key "ServerAsset[status]" is missing from JSON.');
        assert(json[r'status'] != null, 'Required key "ServerAsset[status]" has a null value in JSON.');
        assert(json.containsKey(r'primary_ipv4'), 'Required key "ServerAsset[primary_ipv4]" is missing from JSON.');
        assert(json[r'primary_ipv4'] != null, 'Required key "ServerAsset[primary_ipv4]" has a null value in JSON.');
        assert(json.containsKey(r'primary_ipv6'), 'Required key "ServerAsset[primary_ipv6]" is missing from JSON.');
        assert(json[r'primary_ipv6'] != null, 'Required key "ServerAsset[primary_ipv6]" has a null value in JSON.');
        assert(json.containsKey(r'datacenter'), 'Required key "ServerAsset[datacenter]" is missing from JSON.');
        assert(json[r'datacenter'] != null, 'Required key "ServerAsset[datacenter]" has a null value in JSON.');
        assert(json.containsKey(r'type_id'), 'Required key "ServerAsset[type_id]" is missing from JSON.');
        assert(json[r'type_id'] != null, 'Required key "ServerAsset[type_id]" has a null value in JSON.');
        assert(json.containsKey(r'asset_tag'), 'Required key "ServerAsset[asset_tag]" is missing from JSON.');
        assert(json[r'asset_tag'] != null, 'Required key "ServerAsset[asset_tag]" has a null value in JSON.');
        assert(json.containsKey(r'rack'), 'Required key "ServerAsset[rack]" is missing from JSON.');
        assert(json[r'rack'] != null, 'Required key "ServerAsset[rack]" has a null value in JSON.');
        assert(json.containsKey(r'row'), 'Required key "ServerAsset[row]" is missing from JSON.');
        assert(json[r'row'] != null, 'Required key "ServerAsset[row]" has a null value in JSON.');
        assert(json.containsKey(r'col'), 'Required key "ServerAsset[col]" is missing from JSON.');
        assert(json[r'col'] != null, 'Required key "ServerAsset[col]" has a null value in JSON.');
        assert(json.containsKey(r'unit_start'), 'Required key "ServerAsset[unit_start]" is missing from JSON.');
        assert(json[r'unit_start'] != null, 'Required key "ServerAsset[unit_start]" has a null value in JSON.');
        assert(json.containsKey(r'unit_end'), 'Required key "ServerAsset[unit_end]" is missing from JSON.');
        assert(json[r'unit_end'] != null, 'Required key "ServerAsset[unit_end]" has a null value in JSON.');
        assert(json.containsKey(r'unit_sub'), 'Required key "ServerAsset[unit_sub]" is missing from JSON.');
        assert(json[r'unit_sub'] != null, 'Required key "ServerAsset[unit_sub]" has a null value in JSON.');
        assert(json.containsKey(r'ipmi_mac'), 'Required key "ServerAsset[ipmi_mac]" is missing from JSON.');
        assert(json[r'ipmi_mac'] != null, 'Required key "ServerAsset[ipmi_mac]" has a null value in JSON.');
        assert(json.containsKey(r'ipmi_ip'), 'Required key "ServerAsset[ipmi_ip]" is missing from JSON.');
        assert(json[r'ipmi_ip'] != null, 'Required key "ServerAsset[ipmi_ip]" has a null value in JSON.');
        assert(json.containsKey(r'ipmi_working'), 'Required key "ServerAsset[ipmi_working]" is missing from JSON.');
        assert(json[r'ipmi_working'] != null, 'Required key "ServerAsset[ipmi_working]" has a null value in JSON.');
        assert(json.containsKey(r'company'), 'Required key "ServerAsset[company]" is missing from JSON.');
        assert(json[r'company'] != null, 'Required key "ServerAsset[company]" has a null value in JSON.');
        assert(json.containsKey(r'comments'), 'Required key "ServerAsset[comments]" is missing from JSON.');
        assert(json[r'comments'] != null, 'Required key "ServerAsset[comments]" has a null value in JSON.');
        assert(json.containsKey(r'make'), 'Required key "ServerAsset[make]" is missing from JSON.');
        assert(json[r'make'] != null, 'Required key "ServerAsset[make]" has a null value in JSON.');
        assert(json.containsKey(r'model'), 'Required key "ServerAsset[model]" is missing from JSON.');
        assert(json[r'model'] != null, 'Required key "ServerAsset[model]" has a null value in JSON.');
        assert(json.containsKey(r'description'), 'Required key "ServerAsset[description]" is missing from JSON.');
        assert(json[r'description'] != null, 'Required key "ServerAsset[description]" has a null value in JSON.');
        assert(json.containsKey(r'customer_id'), 'Required key "ServerAsset[customer_id]" is missing from JSON.');
        assert(json[r'customer_id'] != null, 'Required key "ServerAsset[customer_id]" has a null value in JSON.');
        assert(json.containsKey(r'external_id'), 'Required key "ServerAsset[external_id]" is missing from JSON.');
        assert(json[r'external_id'] != null, 'Required key "ServerAsset[external_id]" has a null value in JSON.');
        assert(json.containsKey(r'billing_status'), 'Required key "ServerAsset[billing_status]" is missing from JSON.');
        assert(json[r'billing_status'] != null, 'Required key "ServerAsset[billing_status]" has a null value in JSON.');
        assert(json.containsKey(r'overdue'), 'Required key "ServerAsset[overdue]" is missing from JSON.');
        assert(json[r'overdue'] != null, 'Required key "ServerAsset[overdue]" has a null value in JSON.');
        assert(json.containsKey(r'asset_id'), 'Required key "ServerAsset[asset_id]" is missing from JSON.');
        assert(json[r'asset_id'] != null, 'Required key "ServerAsset[asset_id]" has a null value in JSON.');
        assert(json.containsKey(r'asset_name'), 'Required key "ServerAsset[asset_name]" is missing from JSON.');
        assert(json[r'asset_name'] != null, 'Required key "ServerAsset[asset_name]" has a null value in JSON.');
        assert(json.containsKey(r'rack_id'), 'Required key "ServerAsset[rack_id]" is missing from JSON.');
        assert(json[r'rack_id'] != null, 'Required key "ServerAsset[rack_id]" has a null value in JSON.');
        assert(json.containsKey(r'rack_name'), 'Required key "ServerAsset[rack_name]" is missing from JSON.');
        assert(json[r'rack_name'] != null, 'Required key "ServerAsset[rack_name]" has a null value in JSON.');
        assert(json.containsKey(r'rack_location'), 'Required key "ServerAsset[rack_location]" is missing from JSON.');
        assert(json[r'rack_location'] != null, 'Required key "ServerAsset[rack_location]" has a null value in JSON.');
        assert(json.containsKey(r'rack_size'), 'Required key "ServerAsset[rack_size]" is missing from JSON.');
        assert(json[r'rack_size'] != null, 'Required key "ServerAsset[rack_size]" has a null value in JSON.');
        assert(json.containsKey(r'rack_x'), 'Required key "ServerAsset[rack_x]" is missing from JSON.');
        assert(json[r'rack_x'] != null, 'Required key "ServerAsset[rack_x]" has a null value in JSON.');
        assert(json.containsKey(r'rack_y'), 'Required key "ServerAsset[rack_y]" is missing from JSON.');
        assert(json[r'rack_y'] != null, 'Required key "ServerAsset[rack_y]" has a null value in JSON.');
        assert(json.containsKey(r'switchports'), 'Required key "ServerAsset[switchports]" is missing from JSON.');
        assert(json[r'switchports'] != null, 'Required key "ServerAsset[switchports]" has a null value in JSON.');
        assert(json.containsKey(r'vlans'), 'Required key "ServerAsset[vlans]" is missing from JSON.');
        assert(json[r'vlans'] != null, 'Required key "ServerAsset[vlans]" has a null value in JSON.');
        assert(json.containsKey(r'vlans6'), 'Required key "ServerAsset[vlans6]" is missing from JSON.');
        assert(json[r'vlans6'] != null, 'Required key "ServerAsset[vlans6]" has a null value in JSON.');
        assert(json.containsKey(r'lease'), 'Required key "ServerAsset[lease]" is missing from JSON.');
        assert(json[r'lease'] != null, 'Required key "ServerAsset[lease]" has a null value in JSON.');
        return true;
      }());

      return ServerAsset(
        id: mapValueOfType<int>(json, r'id')!,
        orderId: mapValueOfType<String>(json, r'order_id')!,
        hostname: mapValueOfType<String>(json, r'hostname')!,
        status: mapValueOfType<String>(json, r'status')!,
        primaryIpv4: mapValueOfType<String>(json, r'primary_ipv4')!,
        primaryIpv6: mapValueOfType<String>(json, r'primary_ipv6')!,
        datacenter: mapValueOfType<String>(json, r'datacenter')!,
        typeId: mapValueOfType<String>(json, r'type_id')!,
        assetTag: mapValueOfType<String>(json, r'asset_tag')!,
        rack: mapValueOfType<String>(json, r'rack')!,
        row: mapValueOfType<String>(json, r'row')!,
        col: mapValueOfType<String>(json, r'col')!,
        unitStart: mapValueOfType<String>(json, r'unit_start')!,
        unitEnd: mapValueOfType<String>(json, r'unit_end')!,
        unitSub: mapValueOfType<String>(json, r'unit_sub')!,
        ipmiMac: mapValueOfType<String>(json, r'ipmi_mac')!,
        ipmiIp: mapValueOfType<String>(json, r'ipmi_ip')!,
        ipmiWorking: mapValueOfType<String>(json, r'ipmi_working')!,
        company: mapValueOfType<String>(json, r'company')!,
        comments: mapValueOfType<String>(json, r'comments')!,
        make: mapValueOfType<String>(json, r'make')!,
        model: mapValueOfType<String>(json, r'model')!,
        description: mapValueOfType<String>(json, r'description')!,
        customerId: mapValueOfType<String>(json, r'customer_id')!,
        externalId: mapValueOfType<String>(json, r'external_id')!,
        billingStatus: mapValueOfType<String>(json, r'billing_status')!,
        overdue: mapValueOfType<String>(json, r'overdue')!,
        assetId: mapValueOfType<String>(json, r'asset_id')!,
        assetName: mapValueOfType<String>(json, r'asset_name')!,
        rackId: mapValueOfType<String>(json, r'rack_id')!,
        rackName: mapValueOfType<String>(json, r'rack_name')!,
        rackLocation: mapValueOfType<String>(json, r'rack_location')!,
        rackSize: mapValueOfType<String>(json, r'rack_size')!,
        rackX: mapValueOfType<String>(json, r'rack_x')!,
        rackY: mapValueOfType<String>(json, r'rack_y')!,
        switchports: json[r'switchports'] is Iterable
            ? (json[r'switchports'] as Iterable).cast<int>().toList(growable: false)
            : const [],
        vlans: json[r'vlans'] is Iterable
            ? (json[r'vlans'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        vlans6: json[r'vlans6'] is Iterable
            ? (json[r'vlans6'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        lease: ServerLease.fromJson(json[r'lease'])!,
        mac: mapValueOfType<String>(json, r'mac'),
        ipmiAdminUsername: mapValueOfType<String>(json, r'ipmi_admin_username'),
        ipmiAdminPassword: mapValueOfType<String>(json, r'ipmi_admin_password'),
        ipmiClientUsername: mapValueOfType<String>(json, r'ipmi_client_username'),
        ipmiClientPassword: mapValueOfType<String>(json, r'ipmi_client_password'),
        ipmiUpdated: mapValueOfType<String>(json, r'ipmi_updated'),
        createTimestamp: mapValueOfType<String>(json, r'create_timestamp'),
        updateTimestamp: mapValueOfType<String>(json, r'update_timestamp'),
        comment: mapValueOfType<String>(json, r'comment'),
      );
    }
    return null;
  }

  static List<ServerAsset> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ServerAsset>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ServerAsset.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ServerAsset> mapFromJson(dynamic json) {
    final map = <String, ServerAsset>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ServerAsset.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ServerAsset-objects as value to a dart map
  static Map<String, List<ServerAsset>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ServerAsset>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ServerAsset.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'order_id',
    'hostname',
    'status',
    'primary_ipv4',
    'primary_ipv6',
    'datacenter',
    'type_id',
    'asset_tag',
    'rack',
    'row',
    'col',
    'unit_start',
    'unit_end',
    'unit_sub',
    'ipmi_mac',
    'ipmi_ip',
    'ipmi_working',
    'company',
    'comments',
    'make',
    'model',
    'description',
    'customer_id',
    'external_id',
    'billing_status',
    'overdue',
    'asset_id',
    'asset_name',
    'rack_id',
    'rack_name',
    'rack_location',
    'rack_size',
    'rack_x',
    'rack_y',
    'switchports',
    'vlans',
    'vlans6',
    'lease',
  };
}

