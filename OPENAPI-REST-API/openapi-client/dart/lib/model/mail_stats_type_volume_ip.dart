//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class MailStatsTypeVolumeIp {
  /// Returns a new [MailStatsTypeVolumeIp] instance.
  MailStatsTypeVolumeIp({
    this.n1period1Period1Period1,
    this.n2period2Period2Period2,
    this.n3period3Period3Period3,
    this.n4period4Period4Period4,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? n1period1Period1Period1;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? n2period2Period2Period2;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? n3period3Period3Period3;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? n4period4Period4Period4;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MailStatsTypeVolumeIp &&
    other.n1period1Period1Period1 == n1period1Period1Period1 &&
    other.n2period2Period2Period2 == n2period2Period2Period2 &&
    other.n3period3Period3Period3 == n3period3Period3Period3 &&
    other.n4period4Period4Period4 == n4period4Period4Period4;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (n1period1Period1Period1 == null ? 0 : n1period1Period1Period1!.hashCode) +
    (n2period2Period2Period2 == null ? 0 : n2period2Period2Period2!.hashCode) +
    (n3period3Period3Period3 == null ? 0 : n3period3Period3Period3!.hashCode) +
    (n4period4Period4Period4 == null ? 0 : n4period4Period4Period4!.hashCode);

  @override
  String toString() => 'MailStatsTypeVolumeIp[n1period1Period1Period1=$n1period1Period1Period1, n2period2Period2Period2=$n2period2Period2Period2, n3period3Period3Period3=$n3period3Period3Period3, n4period4Period4Period4=$n4period4Period4Period4]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.n1period1Period1Period1 != null) {
      json[r'1.1.1.1'] = this.n1period1Period1Period1;
    } else {
      json[r'1.1.1.1'] = null;
    }
    if (this.n2period2Period2Period2 != null) {
      json[r'2.2.2.2'] = this.n2period2Period2Period2;
    } else {
      json[r'2.2.2.2'] = null;
    }
    if (this.n3period3Period3Period3 != null) {
      json[r'3.3.3.3'] = this.n3period3Period3Period3;
    } else {
      json[r'3.3.3.3'] = null;
    }
    if (this.n4period4Period4Period4 != null) {
      json[r'4.4.4.4'] = this.n4period4Period4Period4;
    } else {
      json[r'4.4.4.4'] = null;
    }
    return json;
  }

  /// Returns a new [MailStatsTypeVolumeIp] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MailStatsTypeVolumeIp? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return MailStatsTypeVolumeIp(
        n1period1Period1Period1: mapValueOfType<int>(json, r'1.1.1.1'),
        n2period2Period2Period2: mapValueOfType<int>(json, r'2.2.2.2'),
        n3period3Period3Period3: mapValueOfType<int>(json, r'3.3.3.3'),
        n4period4Period4Period4: mapValueOfType<int>(json, r'4.4.4.4'),
      );
    }
    return null;
  }

  static List<MailStatsTypeVolumeIp> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MailStatsTypeVolumeIp>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MailStatsTypeVolumeIp.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MailStatsTypeVolumeIp> mapFromJson(dynamic json) {
    final map = <String, MailStatsTypeVolumeIp>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MailStatsTypeVolumeIp.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MailStatsTypeVolumeIp-objects as value to a dart map
  static Map<String, List<MailStatsTypeVolumeIp>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MailStatsTypeVolumeIp>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MailStatsTypeVolumeIp.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

