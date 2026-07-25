//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class HomeTicketStatusView {
  /// Returns a new [HomeTicketStatusView] instance.
  HomeTicketStatusView({
    this.n4,
    this.n5,
    this.n6,
  });

  /// Status corresponding to view number 4.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? n4;

  /// Status corresponding to view number 5.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? n5;

  /// Status corresponding to view number 6.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? n6;

  @override
  bool operator ==(Object other) => identical(this, other) || other is HomeTicketStatusView &&
    other.n4 == n4 &&
    other.n5 == n5 &&
    other.n6 == n6;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (n4 == null ? 0 : n4!.hashCode) +
    (n5 == null ? 0 : n5!.hashCode) +
    (n6 == null ? 0 : n6!.hashCode);

  @override
  String toString() => 'HomeTicketStatusView[n4=$n4, n5=$n5, n6=$n6]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.n4 != null) {
      json[r'4'] = this.n4;
    } else {
      json[r'4'] = null;
    }
    if (this.n5 != null) {
      json[r'5'] = this.n5;
    } else {
      json[r'5'] = null;
    }
    if (this.n6 != null) {
      json[r'6'] = this.n6;
    } else {
      json[r'6'] = null;
    }
    return json;
  }

  /// Returns a new [HomeTicketStatusView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static HomeTicketStatusView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return HomeTicketStatusView(
        n4: mapValueOfType<String>(json, r'4'),
        n5: mapValueOfType<String>(json, r'5'),
        n6: mapValueOfType<String>(json, r'6'),
      );
    }
    return null;
  }

  static List<HomeTicketStatusView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HomeTicketStatusView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HomeTicketStatusView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, HomeTicketStatusView> mapFromJson(dynamic json) {
    final map = <String, HomeTicketStatusView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = HomeTicketStatusView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of HomeTicketStatusView-objects as value to a dart map
  static Map<String, List<HomeTicketStatusView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<HomeTicketStatusView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = HomeTicketStatusView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

