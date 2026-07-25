//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class TicketNew {
  /// Returns a new [TicketNew] instance.
  TicketNew({
    required this.subject,
    required this.body,
    this.serviceId,
    this.serviceModule,
  });

  String subject;

  String body;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? serviceId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? serviceModule;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TicketNew &&
    other.subject == subject &&
    other.body == body &&
    other.serviceId == serviceId &&
    other.serviceModule == serviceModule;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (subject.hashCode) +
    (body.hashCode) +
    (serviceId == null ? 0 : serviceId!.hashCode) +
    (serviceModule == null ? 0 : serviceModule!.hashCode);

  @override
  String toString() => 'TicketNew[subject=$subject, body=$body, serviceId=$serviceId, serviceModule=$serviceModule]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'subject'] = this.subject;
      json[r'body'] = this.body;
    if (this.serviceId != null) {
      json[r'service_id'] = this.serviceId;
    } else {
      json[r'service_id'] = null;
    }
    if (this.serviceModule != null) {
      json[r'service_module'] = this.serviceModule;
    } else {
      json[r'service_module'] = null;
    }
    return json;
  }

  /// Returns a new [TicketNew] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TicketNew? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'subject'), 'Required key "TicketNew[subject]" is missing from JSON.');
        assert(json[r'subject'] != null, 'Required key "TicketNew[subject]" has a null value in JSON.');
        assert(json.containsKey(r'body'), 'Required key "TicketNew[body]" is missing from JSON.');
        assert(json[r'body'] != null, 'Required key "TicketNew[body]" has a null value in JSON.');
        return true;
      }());

      return TicketNew(
        subject: mapValueOfType<String>(json, r'subject')!,
        body: mapValueOfType<String>(json, r'body')!,
        serviceId: mapValueOfType<int>(json, r'service_id'),
        serviceModule: mapValueOfType<String>(json, r'service_module'),
      );
    }
    return null;
  }

  static List<TicketNew> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TicketNew>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TicketNew.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TicketNew> mapFromJson(dynamic json) {
    final map = <String, TicketNew>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TicketNew.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TicketNew-objects as value to a dart map
  static Map<String, List<TicketNew>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TicketNew>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TicketNew.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'subject',
    'body',
  };
}

