//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class TicketNewResponse {
  /// Returns a new [TicketNewResponse] instance.
  TicketNewResponse({
    required this.text,
    required this.success,
    this.ticketId,
  });

  String text;

  bool success;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? ticketId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TicketNewResponse &&
    other.text == text &&
    other.success == success &&
    other.ticketId == ticketId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (text.hashCode) +
    (success.hashCode) +
    (ticketId == null ? 0 : ticketId!.hashCode);

  @override
  String toString() => 'TicketNewResponse[text=$text, success=$success, ticketId=$ticketId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'text'] = this.text;
      json[r'success'] = this.success;
    if (this.ticketId != null) {
      json[r'ticket_id'] = this.ticketId;
    } else {
      json[r'ticket_id'] = null;
    }
    return json;
  }

  /// Returns a new [TicketNewResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TicketNewResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'text'), 'Required key "TicketNewResponse[text]" is missing from JSON.');
        assert(json[r'text'] != null, 'Required key "TicketNewResponse[text]" has a null value in JSON.');
        assert(json.containsKey(r'success'), 'Required key "TicketNewResponse[success]" is missing from JSON.');
        assert(json[r'success'] != null, 'Required key "TicketNewResponse[success]" has a null value in JSON.');
        return true;
      }());

      return TicketNewResponse(
        text: mapValueOfType<String>(json, r'text')!,
        success: mapValueOfType<bool>(json, r'success')!,
        ticketId: mapValueOfType<int>(json, r'ticket_id'),
      );
    }
    return null;
  }

  static List<TicketNewResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TicketNewResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TicketNewResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TicketNewResponse> mapFromJson(dynamic json) {
    final map = <String, TicketNewResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TicketNewResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TicketNewResponse-objects as value to a dart map
  static Map<String, List<TicketNewResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TicketNewResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TicketNewResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'text',
    'success',
  };
}

