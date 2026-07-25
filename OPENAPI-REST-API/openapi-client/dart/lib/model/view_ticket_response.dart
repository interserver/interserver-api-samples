//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class ViewTicketResponse {
  /// Returns a new [ViewTicketResponse] instance.
  ViewTicketResponse({
    required this.success,
    required this.ticket,
    this.ticketCustomFields,
    this.ticketPosts,
  });

  bool success;

  TicketDetails ticket;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  TicketCustomFieldDetails? ticketCustomFields;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  TicketPostDetails? ticketPosts;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ViewTicketResponse &&
    other.success == success &&
    other.ticket == ticket &&
    other.ticketCustomFields == ticketCustomFields &&
    other.ticketPosts == ticketPosts;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (success.hashCode) +
    (ticket.hashCode) +
    (ticketCustomFields == null ? 0 : ticketCustomFields!.hashCode) +
    (ticketPosts == null ? 0 : ticketPosts!.hashCode);

  @override
  String toString() => 'ViewTicketResponse[success=$success, ticket=$ticket, ticketCustomFields=$ticketCustomFields, ticketPosts=$ticketPosts]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'success'] = this.success;
      json[r'ticket'] = this.ticket;
    if (this.ticketCustomFields != null) {
      json[r'ticket_custom_fields'] = this.ticketCustomFields;
    } else {
      json[r'ticket_custom_fields'] = null;
    }
    if (this.ticketPosts != null) {
      json[r'ticket_posts'] = this.ticketPosts;
    } else {
      json[r'ticket_posts'] = null;
    }
    return json;
  }

  /// Returns a new [ViewTicketResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ViewTicketResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'success'), 'Required key "ViewTicketResponse[success]" is missing from JSON.');
        assert(json[r'success'] != null, 'Required key "ViewTicketResponse[success]" has a null value in JSON.');
        assert(json.containsKey(r'ticket'), 'Required key "ViewTicketResponse[ticket]" is missing from JSON.');
        assert(json[r'ticket'] != null, 'Required key "ViewTicketResponse[ticket]" has a null value in JSON.');
        return true;
      }());

      return ViewTicketResponse(
        success: mapValueOfType<bool>(json, r'success')!,
        ticket: TicketDetails.fromJson(json[r'ticket'])!,
        ticketCustomFields: TicketCustomFieldDetails.fromJson(json[r'ticket_custom_fields']),
        ticketPosts: TicketPostDetails.fromJson(json[r'ticket_posts']),
      );
    }
    return null;
  }

  static List<ViewTicketResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ViewTicketResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ViewTicketResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ViewTicketResponse> mapFromJson(dynamic json) {
    final map = <String, ViewTicketResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ViewTicketResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ViewTicketResponse-objects as value to a dart map
  static Map<String, List<ViewTicketResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ViewTicketResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ViewTicketResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'success',
    'ticket',
  };
}

