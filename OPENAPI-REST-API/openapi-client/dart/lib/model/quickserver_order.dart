//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class QuickserverOrder {
  /// Returns a new [QuickserverOrder] instance.
  QuickserverOrder({
    this.qsId,
    this.serverDetails,
    this.templates,
    this.version,
    this.distroSel,
  });

  /// Quickserver ID.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? qsId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  QuickserverOrderServerDetails? serverDetails;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  QuickserverOrderTemplates? templates;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  QuickserverOrderVersion? version;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  QuickserverOrderDistroSel? distroSel;

  @override
  bool operator ==(Object other) => identical(this, other) || other is QuickserverOrder &&
    other.qsId == qsId &&
    other.serverDetails == serverDetails &&
    other.templates == templates &&
    other.version == version &&
    other.distroSel == distroSel;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (qsId == null ? 0 : qsId!.hashCode) +
    (serverDetails == null ? 0 : serverDetails!.hashCode) +
    (templates == null ? 0 : templates!.hashCode) +
    (version == null ? 0 : version!.hashCode) +
    (distroSel == null ? 0 : distroSel!.hashCode);

  @override
  String toString() => 'QuickserverOrder[qsId=$qsId, serverDetails=$serverDetails, templates=$templates, version=$version, distroSel=$distroSel]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.qsId != null) {
      json[r'qs_id'] = this.qsId;
    } else {
      json[r'qs_id'] = null;
    }
    if (this.serverDetails != null) {
      json[r'server_details'] = this.serverDetails;
    } else {
      json[r'server_details'] = null;
    }
    if (this.templates != null) {
      json[r'templates'] = this.templates;
    } else {
      json[r'templates'] = null;
    }
    if (this.version != null) {
      json[r'version'] = this.version;
    } else {
      json[r'version'] = null;
    }
    if (this.distroSel != null) {
      json[r'distro_sel'] = this.distroSel;
    } else {
      json[r'distro_sel'] = null;
    }
    return json;
  }

  /// Returns a new [QuickserverOrder] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static QuickserverOrder? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return QuickserverOrder(
        qsId: mapValueOfType<String>(json, r'qs_id'),
        serverDetails: QuickserverOrderServerDetails.fromJson(json[r'server_details']),
        templates: QuickserverOrderTemplates.fromJson(json[r'templates']),
        version: QuickserverOrderVersion.fromJson(json[r'version']),
        distroSel: QuickserverOrderDistroSel.fromJson(json[r'distro_sel']),
      );
    }
    return null;
  }

  static List<QuickserverOrder> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <QuickserverOrder>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = QuickserverOrder.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, QuickserverOrder> mapFromJson(dynamic json) {
    final map = <String, QuickserverOrder>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = QuickserverOrder.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of QuickserverOrder-objects as value to a dart map
  static Map<String, List<QuickserverOrder>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<QuickserverOrder>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = QuickserverOrder.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

