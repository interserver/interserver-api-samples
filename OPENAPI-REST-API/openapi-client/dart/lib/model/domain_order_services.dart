//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class DomainOrderServices {
  /// Returns a new [DomainOrderServices] instance.
  DomainOrderServices({
    this.domainOrderServices10001,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DomainOrderServices10001? domainOrderServices10001;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DomainOrderServices &&
    other.domainOrderServices10001 == domainOrderServices10001;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (domainOrderServices10001 == null ? 0 : domainOrderServices10001!.hashCode);

  @override
  String toString() => 'DomainOrderServices[domainOrderServices10001=$domainOrderServices10001]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.domainOrderServices10001 != null) {
      json[r'DomainOrderServices10001'] = this.domainOrderServices10001;
    } else {
      json[r'DomainOrderServices10001'] = null;
    }
    return json;
  }

  /// Returns a new [DomainOrderServices] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DomainOrderServices? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return DomainOrderServices(
        domainOrderServices10001: DomainOrderServices10001.fromJson(json[r'DomainOrderServices10001']),
      );
    }
    return null;
  }

  static List<DomainOrderServices> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DomainOrderServices>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DomainOrderServices.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DomainOrderServices> mapFromJson(dynamic json) {
    final map = <String, DomainOrderServices>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DomainOrderServices.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DomainOrderServices-objects as value to a dart map
  static Map<String, List<DomainOrderServices>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DomainOrderServices>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DomainOrderServices.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

