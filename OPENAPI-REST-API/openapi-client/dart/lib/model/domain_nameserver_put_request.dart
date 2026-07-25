//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class DomainNameserverPutRequest {
  /// Returns a new [DomainNameserverPutRequest] instance.
  DomainNameserverPutRequest({
    this.nameserver = const [],
  });

  List<String> nameserver;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DomainNameserverPutRequest &&
    _deepEquality.equals(other.nameserver, nameserver);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (nameserver.hashCode);

  @override
  String toString() => 'DomainNameserverPutRequest[nameserver=$nameserver]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'nameserver'] = this.nameserver;
    return json;
  }

  /// Returns a new [DomainNameserverPutRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DomainNameserverPutRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'nameserver'), 'Required key "DomainNameserverPutRequest[nameserver]" is missing from JSON.');
        assert(json[r'nameserver'] != null, 'Required key "DomainNameserverPutRequest[nameserver]" has a null value in JSON.');
        return true;
      }());

      return DomainNameserverPutRequest(
        nameserver: json[r'nameserver'] is Iterable
            ? (json[r'nameserver'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<DomainNameserverPutRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DomainNameserverPutRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DomainNameserverPutRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DomainNameserverPutRequest> mapFromJson(dynamic json) {
    final map = <String, DomainNameserverPutRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DomainNameserverPutRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DomainNameserverPutRequest-objects as value to a dart map
  static Map<String, List<DomainNameserverPutRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DomainNameserverPutRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DomainNameserverPutRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'nameserver',
  };
}

