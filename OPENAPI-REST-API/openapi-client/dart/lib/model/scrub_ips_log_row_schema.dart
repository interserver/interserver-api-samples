//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class ScrubIpsLogRowSchema {
  /// Returns a new [ScrubIpsLogRowSchema] instance.
  ScrubIpsLogRowSchema({
    this.date,
    this.filter,
    this.blockedIp,
    this.targetIp,
    this.targetPort,
    this.protocol,
    this.byteCount,
    this.xdpAction,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? date;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? filter;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? blockedIp;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? targetIp;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? targetPort;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? protocol;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? byteCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? xdpAction;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ScrubIpsLogRowSchema &&
    other.date == date &&
    other.filter == filter &&
    other.blockedIp == blockedIp &&
    other.targetIp == targetIp &&
    other.targetPort == targetPort &&
    other.protocol == protocol &&
    other.byteCount == byteCount &&
    other.xdpAction == xdpAction;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (date == null ? 0 : date!.hashCode) +
    (filter == null ? 0 : filter!.hashCode) +
    (blockedIp == null ? 0 : blockedIp!.hashCode) +
    (targetIp == null ? 0 : targetIp!.hashCode) +
    (targetPort == null ? 0 : targetPort!.hashCode) +
    (protocol == null ? 0 : protocol!.hashCode) +
    (byteCount == null ? 0 : byteCount!.hashCode) +
    (xdpAction == null ? 0 : xdpAction!.hashCode);

  @override
  String toString() => 'ScrubIpsLogRowSchema[date=$date, filter=$filter, blockedIp=$blockedIp, targetIp=$targetIp, targetPort=$targetPort, protocol=$protocol, byteCount=$byteCount, xdpAction=$xdpAction]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.date != null) {
      json[r'date'] = this.date;
    } else {
      json[r'date'] = null;
    }
    if (this.filter != null) {
      json[r'filter'] = this.filter;
    } else {
      json[r'filter'] = null;
    }
    if (this.blockedIp != null) {
      json[r'blocked_ip'] = this.blockedIp;
    } else {
      json[r'blocked_ip'] = null;
    }
    if (this.targetIp != null) {
      json[r'target_ip'] = this.targetIp;
    } else {
      json[r'target_ip'] = null;
    }
    if (this.targetPort != null) {
      json[r'target_port'] = this.targetPort;
    } else {
      json[r'target_port'] = null;
    }
    if (this.protocol != null) {
      json[r'protocol'] = this.protocol;
    } else {
      json[r'protocol'] = null;
    }
    if (this.byteCount != null) {
      json[r'byte_count'] = this.byteCount;
    } else {
      json[r'byte_count'] = null;
    }
    if (this.xdpAction != null) {
      json[r'xdp_action'] = this.xdpAction;
    } else {
      json[r'xdp_action'] = null;
    }
    return json;
  }

  /// Returns a new [ScrubIpsLogRowSchema] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ScrubIpsLogRowSchema? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return ScrubIpsLogRowSchema(
        date: mapValueOfType<String>(json, r'date'),
        filter: mapValueOfType<String>(json, r'filter'),
        blockedIp: mapValueOfType<String>(json, r'blocked_ip'),
        targetIp: mapValueOfType<String>(json, r'target_ip'),
        targetPort: num.parse('${json[r'target_port']}'),
        protocol: mapValueOfType<String>(json, r'protocol'),
        byteCount: num.parse('${json[r'byte_count']}'),
        xdpAction: mapValueOfType<String>(json, r'xdp_action'),
      );
    }
    return null;
  }

  static List<ScrubIpsLogRowSchema> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ScrubIpsLogRowSchema>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ScrubIpsLogRowSchema.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ScrubIpsLogRowSchema> mapFromJson(dynamic json) {
    final map = <String, ScrubIpsLogRowSchema>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ScrubIpsLogRowSchema.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ScrubIpsLogRowSchema-objects as value to a dart map
  static Map<String, List<ScrubIpsLogRowSchema>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ScrubIpsLogRowSchema>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ScrubIpsLogRowSchema.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

