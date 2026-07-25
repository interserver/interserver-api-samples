//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class PostWebsiteBuyIpRequest {
  /// Returns a new [PostWebsiteBuyIpRequest] instance.
  PostWebsiteBuyIpRequest({
    this.ips = const {},
  });

  /// A map of IP addresses to their desired reverse DNS hostnames.
  Map<String, String> ips;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PostWebsiteBuyIpRequest &&
    _deepEquality.equals(other.ips, ips);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (ips.hashCode);

  @override
  String toString() => 'PostWebsiteBuyIpRequest[ips=$ips]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'ips'] = this.ips;
    return json;
  }

  /// Returns a new [PostWebsiteBuyIpRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PostWebsiteBuyIpRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return PostWebsiteBuyIpRequest(
        ips: mapCastOfType<String, String>(json, r'ips') ?? const {},
      );
    }
    return null;
  }

  static List<PostWebsiteBuyIpRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PostWebsiteBuyIpRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PostWebsiteBuyIpRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PostWebsiteBuyIpRequest> mapFromJson(dynamic json) {
    final map = <String, PostWebsiteBuyIpRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PostWebsiteBuyIpRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PostWebsiteBuyIpRequest-objects as value to a dart map
  static Map<String, List<PostWebsiteBuyIpRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PostWebsiteBuyIpRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PostWebsiteBuyIpRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

