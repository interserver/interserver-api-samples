//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class VpsRow {
  /// Returns a new [VpsRow] instance.
  VpsRow({
    required this.vpsId,
    required this.vpsName,
    required this.repeatInvoicesCost,
    required this.vpsHostname,
    required this.vpsIp,
    required this.vpsStatus,
    required this.servicesName,
    required this.vpsComment,
  });

  /// The id of the vps.
  String vpsId;

  /// The name of the vps.
  String vpsName;

  /// The repeat invoices cost of the vps.
  String repeatInvoicesCost;

  /// The hostname of the vps.
  String vpsHostname;

  /// The ip of the vps.
  String vpsIp;

  /// The status of the vps.
  String vpsStatus;

  /// The services name of the vps.
  String servicesName;

  /// The comment of the vps.
  String vpsComment;

  @override
  bool operator ==(Object other) => identical(this, other) || other is VpsRow &&
    other.vpsId == vpsId &&
    other.vpsName == vpsName &&
    other.repeatInvoicesCost == repeatInvoicesCost &&
    other.vpsHostname == vpsHostname &&
    other.vpsIp == vpsIp &&
    other.vpsStatus == vpsStatus &&
    other.servicesName == servicesName &&
    other.vpsComment == vpsComment;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (vpsId.hashCode) +
    (vpsName.hashCode) +
    (repeatInvoicesCost.hashCode) +
    (vpsHostname.hashCode) +
    (vpsIp.hashCode) +
    (vpsStatus.hashCode) +
    (servicesName.hashCode) +
    (vpsComment.hashCode);

  @override
  String toString() => 'VpsRow[vpsId=$vpsId, vpsName=$vpsName, repeatInvoicesCost=$repeatInvoicesCost, vpsHostname=$vpsHostname, vpsIp=$vpsIp, vpsStatus=$vpsStatus, servicesName=$servicesName, vpsComment=$vpsComment]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'vps_id'] = this.vpsId;
      json[r'vps_name'] = this.vpsName;
      json[r'repeat_invoices_cost'] = this.repeatInvoicesCost;
      json[r'vps_hostname'] = this.vpsHostname;
      json[r'vps_ip'] = this.vpsIp;
      json[r'vps_status'] = this.vpsStatus;
      json[r'services_name'] = this.servicesName;
      json[r'vps_comment'] = this.vpsComment;
    return json;
  }

  /// Returns a new [VpsRow] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static VpsRow? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'vps_id'), 'Required key "VpsRow[vps_id]" is missing from JSON.');
        assert(json[r'vps_id'] != null, 'Required key "VpsRow[vps_id]" has a null value in JSON.');
        assert(json.containsKey(r'vps_name'), 'Required key "VpsRow[vps_name]" is missing from JSON.');
        assert(json[r'vps_name'] != null, 'Required key "VpsRow[vps_name]" has a null value in JSON.');
        assert(json.containsKey(r'repeat_invoices_cost'), 'Required key "VpsRow[repeat_invoices_cost]" is missing from JSON.');
        assert(json[r'repeat_invoices_cost'] != null, 'Required key "VpsRow[repeat_invoices_cost]" has a null value in JSON.');
        assert(json.containsKey(r'vps_hostname'), 'Required key "VpsRow[vps_hostname]" is missing from JSON.');
        assert(json[r'vps_hostname'] != null, 'Required key "VpsRow[vps_hostname]" has a null value in JSON.');
        assert(json.containsKey(r'vps_ip'), 'Required key "VpsRow[vps_ip]" is missing from JSON.');
        assert(json[r'vps_ip'] != null, 'Required key "VpsRow[vps_ip]" has a null value in JSON.');
        assert(json.containsKey(r'vps_status'), 'Required key "VpsRow[vps_status]" is missing from JSON.');
        assert(json[r'vps_status'] != null, 'Required key "VpsRow[vps_status]" has a null value in JSON.');
        assert(json.containsKey(r'services_name'), 'Required key "VpsRow[services_name]" is missing from JSON.');
        assert(json[r'services_name'] != null, 'Required key "VpsRow[services_name]" has a null value in JSON.');
        assert(json.containsKey(r'vps_comment'), 'Required key "VpsRow[vps_comment]" is missing from JSON.');
        assert(json[r'vps_comment'] != null, 'Required key "VpsRow[vps_comment]" has a null value in JSON.');
        return true;
      }());

      return VpsRow(
        vpsId: mapValueOfType<String>(json, r'vps_id')!,
        vpsName: mapValueOfType<String>(json, r'vps_name')!,
        repeatInvoicesCost: mapValueOfType<String>(json, r'repeat_invoices_cost')!,
        vpsHostname: mapValueOfType<String>(json, r'vps_hostname')!,
        vpsIp: mapValueOfType<String>(json, r'vps_ip')!,
        vpsStatus: mapValueOfType<String>(json, r'vps_status')!,
        servicesName: mapValueOfType<String>(json, r'services_name')!,
        vpsComment: mapValueOfType<String>(json, r'vps_comment')!,
      );
    }
    return null;
  }

  static List<VpsRow> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <VpsRow>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VpsRow.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, VpsRow> mapFromJson(dynamic json) {
    final map = <String, VpsRow>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = VpsRow.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of VpsRow-objects as value to a dart map
  static Map<String, List<VpsRow>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<VpsRow>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = VpsRow.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'vps_id',
    'vps_name',
    'repeat_invoices_cost',
    'vps_hostname',
    'vps_ip',
    'vps_status',
    'services_name',
    'vps_comment',
  };
}

