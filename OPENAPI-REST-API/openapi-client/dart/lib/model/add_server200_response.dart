//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class AddServer200Response {
  /// Returns a new [AddServer200Response] instance.
  AddServer200Response({
    this.text,
    this.invoice,
    this.order,
  });

  /// Status message.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? text;

  /// Invoice ID for payment.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? invoice;

  /// Server order ID.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? order;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AddServer200Response &&
    other.text == text &&
    other.invoice == invoice &&
    other.order == order;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (text == null ? 0 : text!.hashCode) +
    (invoice == null ? 0 : invoice!.hashCode) +
    (order == null ? 0 : order!.hashCode);

  @override
  String toString() => 'AddServer200Response[text=$text, invoice=$invoice, order=$order]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.text != null) {
      json[r'text'] = this.text;
    } else {
      json[r'text'] = null;
    }
    if (this.invoice != null) {
      json[r'invoice'] = this.invoice;
    } else {
      json[r'invoice'] = null;
    }
    if (this.order != null) {
      json[r'order'] = this.order;
    } else {
      json[r'order'] = null;
    }
    return json;
  }

  /// Returns a new [AddServer200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AddServer200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return AddServer200Response(
        text: mapValueOfType<String>(json, r'text'),
        invoice: mapValueOfType<int>(json, r'invoice'),
        order: mapValueOfType<int>(json, r'order'),
      );
    }
    return null;
  }

  static List<AddServer200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AddServer200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AddServer200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AddServer200Response> mapFromJson(dynamic json) {
    final map = <String, AddServer200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AddServer200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AddServer200Response-objects as value to a dart map
  static Map<String, List<AddServer200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AddServer200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AddServer200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

