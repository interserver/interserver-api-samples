//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class VpsOrderPlatformNames {
  /// Returns a new [VpsOrderPlatformNames] instance.
  VpsOrderPlatformNames({
    this.kvm,
    this.kvmstorage,
    this.hyperv,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kvm;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kvmstorage;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? hyperv;

  @override
  bool operator ==(Object other) => identical(this, other) || other is VpsOrderPlatformNames &&
    other.kvm == kvm &&
    other.kvmstorage == kvmstorage &&
    other.hyperv == hyperv;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (kvm == null ? 0 : kvm!.hashCode) +
    (kvmstorage == null ? 0 : kvmstorage!.hashCode) +
    (hyperv == null ? 0 : hyperv!.hashCode);

  @override
  String toString() => 'VpsOrderPlatformNames[kvm=$kvm, kvmstorage=$kvmstorage, hyperv=$hyperv]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.kvm != null) {
      json[r'kvm'] = this.kvm;
    } else {
      json[r'kvm'] = null;
    }
    if (this.kvmstorage != null) {
      json[r'kvmstorage'] = this.kvmstorage;
    } else {
      json[r'kvmstorage'] = null;
    }
    if (this.hyperv != null) {
      json[r'hyperv'] = this.hyperv;
    } else {
      json[r'hyperv'] = null;
    }
    return json;
  }

  /// Returns a new [VpsOrderPlatformNames] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static VpsOrderPlatformNames? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return VpsOrderPlatformNames(
        kvm: mapValueOfType<String>(json, r'kvm'),
        kvmstorage: mapValueOfType<String>(json, r'kvmstorage'),
        hyperv: mapValueOfType<String>(json, r'hyperv'),
      );
    }
    return null;
  }

  static List<VpsOrderPlatformNames> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <VpsOrderPlatformNames>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VpsOrderPlatformNames.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, VpsOrderPlatformNames> mapFromJson(dynamic json) {
    final map = <String, VpsOrderPlatformNames>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = VpsOrderPlatformNames.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of VpsOrderPlatformNames-objects as value to a dart map
  static Map<String, List<VpsOrderPlatformNames>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<VpsOrderPlatformNames>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = VpsOrderPlatformNames.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

