//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class MailStatsTypeVolume {
  /// Returns a new [MailStatsTypeVolume] instance.
  MailStatsTypeVolume({
    this.to,
    this.from,
    this.ip,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  MailStatsTypeVolumeTo? to;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  MailStatsTypeVolumeFrom? from;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  MailStatsTypeVolumeIp? ip;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MailStatsTypeVolume &&
    other.to == to &&
    other.from == from &&
    other.ip == ip;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (to == null ? 0 : to!.hashCode) +
    (from == null ? 0 : from!.hashCode) +
    (ip == null ? 0 : ip!.hashCode);

  @override
  String toString() => 'MailStatsTypeVolume[to=$to, from=$from, ip=$ip]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.to != null) {
      json[r'to'] = this.to;
    } else {
      json[r'to'] = null;
    }
    if (this.from != null) {
      json[r'from'] = this.from;
    } else {
      json[r'from'] = null;
    }
    if (this.ip != null) {
      json[r'ip'] = this.ip;
    } else {
      json[r'ip'] = null;
    }
    return json;
  }

  /// Returns a new [MailStatsTypeVolume] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MailStatsTypeVolume? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return MailStatsTypeVolume(
        to: MailStatsTypeVolumeTo.fromJson(json[r'to']),
        from: MailStatsTypeVolumeFrom.fromJson(json[r'from']),
        ip: MailStatsTypeVolumeIp.fromJson(json[r'ip']),
      );
    }
    return null;
  }

  static List<MailStatsTypeVolume> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MailStatsTypeVolume>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MailStatsTypeVolume.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MailStatsTypeVolume> mapFromJson(dynamic json) {
    final map = <String, MailStatsTypeVolume>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MailStatsTypeVolume.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MailStatsTypeVolume-objects as value to a dart map
  static Map<String, List<MailStatsTypeVolume>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MailStatsTypeVolume>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MailStatsTypeVolume.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

