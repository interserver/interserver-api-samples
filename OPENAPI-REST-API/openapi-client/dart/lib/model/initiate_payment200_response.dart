//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class InitiatePayment200Response {
  /// Returns a new [InitiatePayment200Response] instance.
  InitiatePayment200Response({
    this.type,
    this.redirect,
    this.action,
    this.method,
    this.items,
    this.text,
  });

  /// The response type indicating how to handle the payment. Possible values: `redirect` (redirect user to a URL), `submit` (submit a form to a URL), `single` (immediate result).
  InitiatePayment200ResponseTypeEnum? type;

  /// URL to redirect the user to for payment (when type is `redirect`).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? redirect;

  /// Form action URL (when type is `submit`).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? action;

  /// HTTP method for the form submission (when type is `submit`).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? method;

  /// Form field name-value pairs to submit (when type is `submit`).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? items;

  /// Status or result text.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? text;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InitiatePayment200Response &&
    other.type == type &&
    other.redirect == redirect &&
    other.action == action &&
    other.method == method &&
    other.items == items &&
    other.text == text;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type == null ? 0 : type!.hashCode) +
    (redirect == null ? 0 : redirect!.hashCode) +
    (action == null ? 0 : action!.hashCode) +
    (method == null ? 0 : method!.hashCode) +
    (items == null ? 0 : items!.hashCode) +
    (text == null ? 0 : text!.hashCode);

  @override
  String toString() => 'InitiatePayment200Response[type=$type, redirect=$redirect, action=$action, method=$method, items=$items, text=$text]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    if (this.redirect != null) {
      json[r'redirect'] = this.redirect;
    } else {
      json[r'redirect'] = null;
    }
    if (this.action != null) {
      json[r'action'] = this.action;
    } else {
      json[r'action'] = null;
    }
    if (this.method != null) {
      json[r'method'] = this.method;
    } else {
      json[r'method'] = null;
    }
    if (this.items != null) {
      json[r'items'] = this.items;
    } else {
      json[r'items'] = null;
    }
    if (this.text != null) {
      json[r'text'] = this.text;
    } else {
      json[r'text'] = null;
    }
    return json;
  }

  /// Returns a new [InitiatePayment200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InitiatePayment200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return InitiatePayment200Response(
        type: InitiatePayment200ResponseTypeEnum.fromJson(json[r'type']),
        redirect: mapValueOfType<String>(json, r'redirect'),
        action: mapValueOfType<String>(json, r'action'),
        method: mapValueOfType<String>(json, r'method'),
        items: mapValueOfType<Object>(json, r'items'),
        text: mapValueOfType<String>(json, r'text'),
      );
    }
    return null;
  }

  static List<InitiatePayment200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InitiatePayment200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InitiatePayment200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InitiatePayment200Response> mapFromJson(dynamic json) {
    final map = <String, InitiatePayment200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InitiatePayment200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InitiatePayment200Response-objects as value to a dart map
  static Map<String, List<InitiatePayment200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<InitiatePayment200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = InitiatePayment200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

/// The response type indicating how to handle the payment. Possible values: `redirect` (redirect user to a URL), `submit` (submit a form to a URL), `single` (immediate result).
enum InitiatePayment200ResponseTypeEnum {
  redirect._(r'redirect'),
  submit._(r'submit'),
  single._(r'single'),
  unknownDefaultOpenApi._(r'unknown_default_open_api'),
  ;

  /// Instantiate a new enum with the provided value.
  const InitiatePayment200ResponseTypeEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [InitiatePayment200ResponseTypeEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static InitiatePayment200ResponseTypeEnum? fromJson(dynamic value) => InitiatePayment200ResponseTypeEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [InitiatePayment200ResponseTypeEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<InitiatePayment200ResponseTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InitiatePayment200ResponseTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InitiatePayment200ResponseTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [InitiatePayment200ResponseTypeEnum] to String,
/// and [decode] dynamic data back to [InitiatePayment200ResponseTypeEnum].
class InitiatePayment200ResponseTypeEnumTypeTransformer {
  factory InitiatePayment200ResponseTypeEnumTypeTransformer() => _instance ??= const InitiatePayment200ResponseTypeEnumTypeTransformer._();

  const InitiatePayment200ResponseTypeEnumTypeTransformer._();

  String encode(InitiatePayment200ResponseTypeEnum data) => data._value;

  /// Returns the instance of [InitiatePayment200ResponseTypeEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InitiatePayment200ResponseTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data is InitiatePayment200ResponseTypeEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'redirect': return InitiatePayment200ResponseTypeEnum.redirect;
        case r'submit': return InitiatePayment200ResponseTypeEnum.submit;
        case r'single': return InitiatePayment200ResponseTypeEnum.single;
        case r'unknown_default_open_api': return InitiatePayment200ResponseTypeEnum.unknownDefaultOpenApi;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static InitiatePayment200ResponseTypeEnumTypeTransformer? _instance;
}


