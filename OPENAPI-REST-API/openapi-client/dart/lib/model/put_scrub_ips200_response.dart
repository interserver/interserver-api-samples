//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PutScrubIps200Response {
  /// Returns a new [PutScrubIps200Response] instance.
  PutScrubIps200Response({
    this.continue_,
    this.errors = const [],
    this.serviceType,
    this.serviceCost,
    this.originalCost,
    this.repeatServiceCost,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? continue_;

  List<String> errors;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? serviceType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? serviceCost;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? originalCost;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? repeatServiceCost;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PutScrubIps200Response &&
    other.continue_ == continue_ &&
    _deepEquality.equals(other.errors, errors) &&
    other.serviceType == serviceType &&
    other.serviceCost == serviceCost &&
    other.originalCost == originalCost &&
    other.repeatServiceCost == repeatServiceCost;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (continue_ == null ? 0 : continue_!.hashCode) +
    (errors.hashCode) +
    (serviceType == null ? 0 : serviceType!.hashCode) +
    (serviceCost == null ? 0 : serviceCost!.hashCode) +
    (originalCost == null ? 0 : originalCost!.hashCode) +
    (repeatServiceCost == null ? 0 : repeatServiceCost!.hashCode);

  @override
  String toString() => 'PutScrubIps200Response[continue_=$continue_, errors=$errors, serviceType=$serviceType, serviceCost=$serviceCost, originalCost=$originalCost, repeatServiceCost=$repeatServiceCost]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.continue_ != null) {
      json[r'continue'] = this.continue_;
    } else {
      json[r'continue'] = null;
    }
      json[r'errors'] = this.errors;
    if (this.serviceType != null) {
      json[r'serviceType'] = this.serviceType;
    } else {
      json[r'serviceType'] = null;
    }
    if (this.serviceCost != null) {
      json[r'serviceCost'] = this.serviceCost;
    } else {
      json[r'serviceCost'] = null;
    }
    if (this.originalCost != null) {
      json[r'originalCost'] = this.originalCost;
    } else {
      json[r'originalCost'] = null;
    }
    if (this.repeatServiceCost != null) {
      json[r'repeatServiceCost'] = this.repeatServiceCost;
    } else {
      json[r'repeatServiceCost'] = null;
    }
    return json;
  }

  /// Returns a new [PutScrubIps200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PutScrubIps200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return PutScrubIps200Response(
        continue_: mapValueOfType<bool>(json, r'continue'),
        errors: json[r'errors'] is Iterable
            ? (json[r'errors'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        serviceType: mapValueOfType<int>(json, r'serviceType'),
        serviceCost: num.parse('${json[r'serviceCost']}'),
        originalCost: num.parse('${json[r'originalCost']}'),
        repeatServiceCost: num.parse('${json[r'repeatServiceCost']}'),
      );
    }
    return null;
  }

  static List<PutScrubIps200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PutScrubIps200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PutScrubIps200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PutScrubIps200Response> mapFromJson(dynamic json) {
    final map = <String, PutScrubIps200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PutScrubIps200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PutScrubIps200Response-objects as value to a dart map
  static Map<String, List<PutScrubIps200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PutScrubIps200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PutScrubIps200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

