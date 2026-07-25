//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class HomeDetailsModulesVps {
  /// Returns a new [HomeDetailsModulesVps] instance.
  HomeDetailsModulesVps({
    this.icon,
    this.viewLink,
    this.heading,
    this.buyLink,
    this.listLink,
  });

  /// The icon for VPS.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? icon;

  /// Link to view VPS.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? viewLink;

  /// Heading for VPS.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? heading;

  /// Link to order VPS.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? buyLink;

  /// Link to view VPS list.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? listLink;

  @override
  bool operator ==(Object other) => identical(this, other) || other is HomeDetailsModulesVps &&
    other.icon == icon &&
    other.viewLink == viewLink &&
    other.heading == heading &&
    other.buyLink == buyLink &&
    other.listLink == listLink;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (icon == null ? 0 : icon!.hashCode) +
    (viewLink == null ? 0 : viewLink!.hashCode) +
    (heading == null ? 0 : heading!.hashCode) +
    (buyLink == null ? 0 : buyLink!.hashCode) +
    (listLink == null ? 0 : listLink!.hashCode);

  @override
  String toString() => 'HomeDetailsModulesVps[icon=$icon, viewLink=$viewLink, heading=$heading, buyLink=$buyLink, listLink=$listLink]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.icon != null) {
      json[r'icon'] = this.icon;
    } else {
      json[r'icon'] = null;
    }
    if (this.viewLink != null) {
      json[r'view_link'] = this.viewLink;
    } else {
      json[r'view_link'] = null;
    }
    if (this.heading != null) {
      json[r'heading'] = this.heading;
    } else {
      json[r'heading'] = null;
    }
    if (this.buyLink != null) {
      json[r'buy_link'] = this.buyLink;
    } else {
      json[r'buy_link'] = null;
    }
    if (this.listLink != null) {
      json[r'list_link'] = this.listLink;
    } else {
      json[r'list_link'] = null;
    }
    return json;
  }

  /// Returns a new [HomeDetailsModulesVps] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static HomeDetailsModulesVps? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return HomeDetailsModulesVps(
        icon: mapValueOfType<String>(json, r'icon'),
        viewLink: mapValueOfType<String>(json, r'view_link'),
        heading: mapValueOfType<String>(json, r'heading'),
        buyLink: mapValueOfType<String>(json, r'buy_link'),
        listLink: mapValueOfType<String>(json, r'list_link'),
      );
    }
    return null;
  }

  static List<HomeDetailsModulesVps> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HomeDetailsModulesVps>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HomeDetailsModulesVps.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, HomeDetailsModulesVps> mapFromJson(dynamic json) {
    final map = <String, HomeDetailsModulesVps>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = HomeDetailsModulesVps.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of HomeDetailsModulesVps-objects as value to a dart map
  static Map<String, List<HomeDetailsModulesVps>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<HomeDetailsModulesVps>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = HomeDetailsModulesVps.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

