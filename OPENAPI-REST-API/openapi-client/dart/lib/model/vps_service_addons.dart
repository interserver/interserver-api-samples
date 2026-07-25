//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class VpsServiceAddons {
  /// Returns a new [VpsServiceAddons] instance.
  VpsServiceAddons({
    this.hasCpanel,
    this.hasDirectadmin,
    this.hasFantastico,
    this.hasSoftaculous,
    this.hasHdspace,
    this.dedicatedIp,
    this.extraIps = const [],
    this.extraIps6 = const [],
    this.unpaidIps = const [],
    this.ips = const [],
    this.ips6 = const [],
    this.cpanelId,
    this.cost,
    this.ids = const [],
    this.rdata = const [],
  });

  /// Whether a cPanel license is active on this VPS.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? hasCpanel;

  /// Whether a DirectAdmin license is active on this VPS.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? hasDirectadmin;

  /// Whether a Fantastico license is active on this VPS.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? hasFantastico;

  /// Whether a Softaculous license is active on this VPS.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? hasSoftaculous;

  /// Whether extra disk space has been added to this VPS.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? hasHdspace;

  /// Whether a dedicated IP address is assigned to this VPS.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? dedicatedIp;

  /// List of additional IPv4 addresses assigned to this VPS.
  List<String> extraIps;

  /// List of additional IPv6 addresses assigned to this VPS.
  List<String> extraIps6;

  /// List of IP addresses that have unpaid charges.
  List<String> unpaidIps;

  /// All IPv4 addresses assigned to this VPS.
  List<String> ips;

  /// All IPv6 addresses assigned to this VPS.
  List<String> ips6;

  /// The add-on service ID for the cPanel license.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? cpanelId;

  /// Total monthly add-on cost in cents.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? cost;

  /// List of add-on service IDs active on this VPS.
  List<String> ids;

  /// Raw add-on data entries.
  List<String> rdata;

  @override
  bool operator ==(Object other) => identical(this, other) || other is VpsServiceAddons &&
    other.hasCpanel == hasCpanel &&
    other.hasDirectadmin == hasDirectadmin &&
    other.hasFantastico == hasFantastico &&
    other.hasSoftaculous == hasSoftaculous &&
    other.hasHdspace == hasHdspace &&
    other.dedicatedIp == dedicatedIp &&
    _deepEquality.equals(other.extraIps, extraIps) &&
    _deepEquality.equals(other.extraIps6, extraIps6) &&
    _deepEquality.equals(other.unpaidIps, unpaidIps) &&
    _deepEquality.equals(other.ips, ips) &&
    _deepEquality.equals(other.ips6, ips6) &&
    other.cpanelId == cpanelId &&
    other.cost == cost &&
    _deepEquality.equals(other.ids, ids) &&
    _deepEquality.equals(other.rdata, rdata);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (hasCpanel == null ? 0 : hasCpanel!.hashCode) +
    (hasDirectadmin == null ? 0 : hasDirectadmin!.hashCode) +
    (hasFantastico == null ? 0 : hasFantastico!.hashCode) +
    (hasSoftaculous == null ? 0 : hasSoftaculous!.hashCode) +
    (hasHdspace == null ? 0 : hasHdspace!.hashCode) +
    (dedicatedIp == null ? 0 : dedicatedIp!.hashCode) +
    (extraIps.hashCode) +
    (extraIps6.hashCode) +
    (unpaidIps.hashCode) +
    (ips.hashCode) +
    (ips6.hashCode) +
    (cpanelId == null ? 0 : cpanelId!.hashCode) +
    (cost == null ? 0 : cost!.hashCode) +
    (ids.hashCode) +
    (rdata.hashCode);

  @override
  String toString() => 'VpsServiceAddons[hasCpanel=$hasCpanel, hasDirectadmin=$hasDirectadmin, hasFantastico=$hasFantastico, hasSoftaculous=$hasSoftaculous, hasHdspace=$hasHdspace, dedicatedIp=$dedicatedIp, extraIps=$extraIps, extraIps6=$extraIps6, unpaidIps=$unpaidIps, ips=$ips, ips6=$ips6, cpanelId=$cpanelId, cost=$cost, ids=$ids, rdata=$rdata]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.hasCpanel != null) {
      json[r'has_cpanel'] = this.hasCpanel;
    } else {
      json[r'has_cpanel'] = null;
    }
    if (this.hasDirectadmin != null) {
      json[r'has_directadmin'] = this.hasDirectadmin;
    } else {
      json[r'has_directadmin'] = null;
    }
    if (this.hasFantastico != null) {
      json[r'has_fantastico'] = this.hasFantastico;
    } else {
      json[r'has_fantastico'] = null;
    }
    if (this.hasSoftaculous != null) {
      json[r'has_softaculous'] = this.hasSoftaculous;
    } else {
      json[r'has_softaculous'] = null;
    }
    if (this.hasHdspace != null) {
      json[r'has_hdspace'] = this.hasHdspace;
    } else {
      json[r'has_hdspace'] = null;
    }
    if (this.dedicatedIp != null) {
      json[r'dedicated_ip'] = this.dedicatedIp;
    } else {
      json[r'dedicated_ip'] = null;
    }
      json[r'extra_ips'] = this.extraIps;
      json[r'extra_ips6'] = this.extraIps6;
      json[r'unpaid_ips'] = this.unpaidIps;
      json[r'ips'] = this.ips;
      json[r'ips6'] = this.ips6;
    if (this.cpanelId != null) {
      json[r'cpanel_id'] = this.cpanelId;
    } else {
      json[r'cpanel_id'] = null;
    }
    if (this.cost != null) {
      json[r'cost'] = this.cost;
    } else {
      json[r'cost'] = null;
    }
      json[r'ids'] = this.ids;
      json[r'rdata'] = this.rdata;
    return json;
  }

  /// Returns a new [VpsServiceAddons] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static VpsServiceAddons? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return VpsServiceAddons(
        hasCpanel: mapValueOfType<bool>(json, r'has_cpanel'),
        hasDirectadmin: mapValueOfType<bool>(json, r'has_directadmin'),
        hasFantastico: mapValueOfType<bool>(json, r'has_fantastico'),
        hasSoftaculous: mapValueOfType<bool>(json, r'has_softaculous'),
        hasHdspace: mapValueOfType<bool>(json, r'has_hdspace'),
        dedicatedIp: mapValueOfType<bool>(json, r'dedicated_ip'),
        extraIps: json[r'extra_ips'] is Iterable
            ? (json[r'extra_ips'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        extraIps6: json[r'extra_ips6'] is Iterable
            ? (json[r'extra_ips6'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        unpaidIps: json[r'unpaid_ips'] is Iterable
            ? (json[r'unpaid_ips'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        ips: json[r'ips'] is Iterable
            ? (json[r'ips'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        ips6: json[r'ips6'] is Iterable
            ? (json[r'ips6'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        cpanelId: mapValueOfType<int>(json, r'cpanel_id'),
        cost: mapValueOfType<int>(json, r'cost'),
        ids: json[r'ids'] is Iterable
            ? (json[r'ids'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        rdata: json[r'rdata'] is Iterable
            ? (json[r'rdata'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<VpsServiceAddons> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <VpsServiceAddons>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VpsServiceAddons.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, VpsServiceAddons> mapFromJson(dynamic json) {
    final map = <String, VpsServiceAddons>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = VpsServiceAddons.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of VpsServiceAddons-objects as value to a dart map
  static Map<String, List<VpsServiceAddons>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<VpsServiceAddons>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = VpsServiceAddons.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

