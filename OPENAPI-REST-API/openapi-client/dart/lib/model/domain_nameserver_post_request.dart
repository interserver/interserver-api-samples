//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class DomainNameserverPostRequest {
  /// Returns a new [DomainNameserverPostRequest] instance.
  DomainNameserverPostRequest({
    required this.name,
    required this.ipAddress,
  });

  String name;

  String ipAddress;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DomainNameserverPostRequest &&
    other.name == name &&
    other.ipAddress == ipAddress;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name.hashCode) +
    (ipAddress.hashCode);

  @override
  String toString() => 'DomainNameserverPostRequest[name=$name, ipAddress=$ipAddress]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'ipAddress'] = this.ipAddress;
    return json;
  }

  /// Returns a new [DomainNameserverPostRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DomainNameserverPostRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'name'), 'Required key "DomainNameserverPostRequest[name]" is missing from JSON.');
        assert(json[r'name'] != null, 'Required key "DomainNameserverPostRequest[name]" has a null value in JSON.');
        assert(json.containsKey(r'ipAddress'), 'Required key "DomainNameserverPostRequest[ipAddress]" is missing from JSON.');
        assert(json[r'ipAddress'] != null, 'Required key "DomainNameserverPostRequest[ipAddress]" has a null value in JSON.');
        return true;
      }());

      return DomainNameserverPostRequest(
        name: mapValueOfType<String>(json, r'name')!,
        ipAddress: mapValueOfType<String>(json, r'ipAddress')!,
      );
    }
    return null;
  }

  static List<DomainNameserverPostRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DomainNameserverPostRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DomainNameserverPostRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DomainNameserverPostRequest> mapFromJson(dynamic json) {
    final map = <String, DomainNameserverPostRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DomainNameserverPostRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DomainNameserverPostRequest-objects as value to a dart map
  static Map<String, List<DomainNameserverPostRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DomainNameserverPostRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DomainNameserverPostRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
    'ipAddress',
  };
}

