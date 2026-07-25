//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class MailDeliverabilityResponse {
  /// Returns a new [MailDeliverabilityResponse] instance.
  MailDeliverabilityResponse({
    this.stat,
    this.percent,
    this.tableData = const [],
  });

  /// Delivered and bounced counts.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? stat;

  /// Bounce percentage.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? percent;

  /// Detailed deliverability breakdown by sender or domain.
  List<List<String>> tableData;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MailDeliverabilityResponse &&
    other.stat == stat &&
    other.percent == percent &&
    _deepEquality.equals(other.tableData, tableData);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (stat == null ? 0 : stat!.hashCode) +
    (percent == null ? 0 : percent!.hashCode) +
    (tableData.hashCode);

  @override
  String toString() => 'MailDeliverabilityResponse[stat=$stat, percent=$percent, tableData=$tableData]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.stat != null) {
      json[r'stat'] = this.stat;
    } else {
      json[r'stat'] = null;
    }
    if (this.percent != null) {
      json[r'percent'] = this.percent;
    } else {
      json[r'percent'] = null;
    }
      json[r'table_data'] = this.tableData;
    return json;
  }

  /// Returns a new [MailDeliverabilityResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MailDeliverabilityResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return MailDeliverabilityResponse(
        stat: mapValueOfType<Object>(json, r'stat'),
        percent: num.parse('${json[r'percent']}'),
        tableData: json[r'table_data'] is List
          ? (json[r'table_data'] as List).map((e) =>
              e == null ? const <String>[] : (e as List).map((value) => value as String).toList(growable: false)
            ).toList()
          :  const [],
      );
    }
    return null;
  }

  static List<MailDeliverabilityResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MailDeliverabilityResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MailDeliverabilityResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MailDeliverabilityResponse> mapFromJson(dynamic json) {
    final map = <String, MailDeliverabilityResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MailDeliverabilityResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MailDeliverabilityResponse-objects as value to a dart map
  static Map<String, List<MailDeliverabilityResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MailDeliverabilityResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MailDeliverabilityResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

