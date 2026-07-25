//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class TicketsCountArray {
  /// Returns a new [TicketsCountArray] instance.
  TicketsCountArray({
    this.open,
    this.onHold,
    this.closed,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? open;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? onHold;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? closed;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TicketsCountArray &&
    other.open == open &&
    other.onHold == onHold &&
    other.closed == closed;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (open == null ? 0 : open!.hashCode) +
    (onHold == null ? 0 : onHold!.hashCode) +
    (closed == null ? 0 : closed!.hashCode);

  @override
  String toString() => 'TicketsCountArray[open=$open, onHold=$onHold, closed=$closed]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.open != null) {
      json[r'Open'] = this.open;
    } else {
      json[r'Open'] = null;
    }
    if (this.onHold != null) {
      json[r'On Hold'] = this.onHold;
    } else {
      json[r'On Hold'] = null;
    }
    if (this.closed != null) {
      json[r'Closed'] = this.closed;
    } else {
      json[r'Closed'] = null;
    }
    return json;
  }

  /// Returns a new [TicketsCountArray] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TicketsCountArray? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return TicketsCountArray(
        open: mapValueOfType<int>(json, r'Open'),
        onHold: mapValueOfType<int>(json, r'On Hold'),
        closed: mapValueOfType<int>(json, r'Closed'),
      );
    }
    return null;
  }

  static List<TicketsCountArray> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TicketsCountArray>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TicketsCountArray.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TicketsCountArray> mapFromJson(dynamic json) {
    final map = <String, TicketsCountArray>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TicketsCountArray.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TicketsCountArray-objects as value to a dart map
  static Map<String, List<TicketsCountArray>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TicketsCountArray>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TicketsCountArray.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

