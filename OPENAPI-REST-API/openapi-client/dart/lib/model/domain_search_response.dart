//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class DomainSearchResponse {
  /// Returns a new [DomainSearchResponse] instance.
  DomainSearchResponse({
    this.success,
    this.responseText,
    this.responseTime,
    this.lookup = const [],
    this.suggest = const [],
    this.tlds = const [],
  });

  /// Indicates whether the registrar search succeeded.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? success;

  /// Human-readable status text from the registrar.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? responseText;

  /// Response time as reported by the registrar.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? responseTime;

  /// Availability lookup results for queried domains.
  List<Object> lookup;

  /// Suggested alternative domains and availability data.
  List<Object> suggest;

  /// TLDs evaluated during the search.
  List<String> tlds;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DomainSearchResponse &&
    other.success == success &&
    other.responseText == responseText &&
    other.responseTime == responseTime &&
    _deepEquality.equals(other.lookup, lookup) &&
    _deepEquality.equals(other.suggest, suggest) &&
    _deepEquality.equals(other.tlds, tlds);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (success == null ? 0 : success!.hashCode) +
    (responseText == null ? 0 : responseText!.hashCode) +
    (responseTime == null ? 0 : responseTime!.hashCode) +
    (lookup.hashCode) +
    (suggest.hashCode) +
    (tlds.hashCode);

  @override
  String toString() => 'DomainSearchResponse[success=$success, responseText=$responseText, responseTime=$responseTime, lookup=$lookup, suggest=$suggest, tlds=$tlds]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.success != null) {
      json[r'success'] = this.success;
    } else {
      json[r'success'] = null;
    }
    if (this.responseText != null) {
      json[r'response_text'] = this.responseText;
    } else {
      json[r'response_text'] = null;
    }
    if (this.responseTime != null) {
      json[r'response_time'] = this.responseTime;
    } else {
      json[r'response_time'] = null;
    }
      json[r'lookup'] = this.lookup;
      json[r'suggest'] = this.suggest;
      json[r'tlds'] = this.tlds;
    return json;
  }

  /// Returns a new [DomainSearchResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DomainSearchResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return DomainSearchResponse(
        success: mapValueOfType<bool>(json, r'success'),
        responseText: mapValueOfType<String>(json, r'response_text'),
        responseTime: mapValueOfType<String>(json, r'response_time'),
        lookup: json[r'lookup'] is Iterable
            ? (json[r'lookup'] as Iterable).cast<Object>().toList(growable: false)
            : const [],
        suggest: json[r'suggest'] is Iterable
            ? (json[r'suggest'] as Iterable).cast<Object>().toList(growable: false)
            : const [],
        tlds: json[r'tlds'] is Iterable
            ? (json[r'tlds'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<DomainSearchResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DomainSearchResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DomainSearchResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DomainSearchResponse> mapFromJson(dynamic json) {
    final map = <String, DomainSearchResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DomainSearchResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DomainSearchResponse-objects as value to a dart map
  static Map<String, List<DomainSearchResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DomainSearchResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DomainSearchResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

