//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DeleteMailAlertRequest {
  /// Returns a new [DeleteMailAlertRequest] instance.
  DeleteMailAlertRequest({
    required this.alertId,
  });

  /// The ID of the alert to delete.
  int alertId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DeleteMailAlertRequest &&
    other.alertId == alertId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (alertId.hashCode);

  @override
  String toString() => 'DeleteMailAlertRequest[alertId=$alertId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'alert_id'] = this.alertId;
    return json;
  }

  /// Returns a new [DeleteMailAlertRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DeleteMailAlertRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'alert_id'), 'Required key "DeleteMailAlertRequest[alert_id]" is missing from JSON.');
        assert(json[r'alert_id'] != null, 'Required key "DeleteMailAlertRequest[alert_id]" has a null value in JSON.');
        return true;
      }());

      return DeleteMailAlertRequest(
        alertId: mapValueOfType<int>(json, r'alert_id')!,
      );
    }
    return null;
  }

  static List<DeleteMailAlertRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeleteMailAlertRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeleteMailAlertRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DeleteMailAlertRequest> mapFromJson(dynamic json) {
    final map = <String, DeleteMailAlertRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DeleteMailAlertRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DeleteMailAlertRequest-objects as value to a dart map
  static Map<String, List<DeleteMailAlertRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DeleteMailAlertRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DeleteMailAlertRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'alert_id',
  };
}

