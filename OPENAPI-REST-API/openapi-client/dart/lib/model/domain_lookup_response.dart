//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class DomainLookupResponse {
  /// Returns a new [DomainLookupResponse] instance.
  DomainLookupResponse({
    this.available,
    this.premium,
    this.website,
    this.domainService,
    this.service,
    this.whoisPrivacy,
    this.new_,
    this.renewal,
    this.transfer,
    this.fields,
    this.currencies,
  });

  /// Whether the domain is available to register.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? available;

  /// Whether the domain is marked as premium by the registrar.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? premium;

  /// Indicates if the domain is already used by a website service.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? website;

  /// Indicates if the domain already exists as a domain service on the account.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? domainService;

  /// Service catalog details for the domain's TLD.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? service;

  /// Whether Whois privacy is available for the TLD.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? whoisPrivacy;

  /// Calculated registration price, when available.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? new_;

  /// Calculated renewal price, when available.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? renewal;

  /// Calculated transfer price, when available.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? transfer;

  /// Registrar field requirements for this domain/TLD.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? fields;

  /// Pricing information normalized to supported currencies.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? currencies;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DomainLookupResponse &&
    other.available == available &&
    other.premium == premium &&
    other.website == website &&
    other.domainService == domainService &&
    other.service == service &&
    other.whoisPrivacy == whoisPrivacy &&
    other.new_ == new_ &&
    other.renewal == renewal &&
    other.transfer == transfer &&
    other.fields == fields &&
    other.currencies == currencies;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (available == null ? 0 : available!.hashCode) +
    (premium == null ? 0 : premium!.hashCode) +
    (website == null ? 0 : website!.hashCode) +
    (domainService == null ? 0 : domainService!.hashCode) +
    (service == null ? 0 : service!.hashCode) +
    (whoisPrivacy == null ? 0 : whoisPrivacy!.hashCode) +
    (new_ == null ? 0 : new_!.hashCode) +
    (renewal == null ? 0 : renewal!.hashCode) +
    (transfer == null ? 0 : transfer!.hashCode) +
    (fields == null ? 0 : fields!.hashCode) +
    (currencies == null ? 0 : currencies!.hashCode);

  @override
  String toString() => 'DomainLookupResponse[available=$available, premium=$premium, website=$website, domainService=$domainService, service=$service, whoisPrivacy=$whoisPrivacy, new_=$new_, renewal=$renewal, transfer=$transfer, fields=$fields, currencies=$currencies]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.available != null) {
      json[r'available'] = this.available;
    } else {
      json[r'available'] = null;
    }
    if (this.premium != null) {
      json[r'premium'] = this.premium;
    } else {
      json[r'premium'] = null;
    }
    if (this.website != null) {
      json[r'website'] = this.website;
    } else {
      json[r'website'] = null;
    }
    if (this.domainService != null) {
      json[r'domain_service'] = this.domainService;
    } else {
      json[r'domain_service'] = null;
    }
    if (this.service != null) {
      json[r'service'] = this.service;
    } else {
      json[r'service'] = null;
    }
    if (this.whoisPrivacy != null) {
      json[r'whois_privacy'] = this.whoisPrivacy;
    } else {
      json[r'whois_privacy'] = null;
    }
    if (this.new_ != null) {
      json[r'new'] = this.new_;
    } else {
      json[r'new'] = null;
    }
    if (this.renewal != null) {
      json[r'renewal'] = this.renewal;
    } else {
      json[r'renewal'] = null;
    }
    if (this.transfer != null) {
      json[r'transfer'] = this.transfer;
    } else {
      json[r'transfer'] = null;
    }
    if (this.fields != null) {
      json[r'fields'] = this.fields;
    } else {
      json[r'fields'] = null;
    }
    if (this.currencies != null) {
      json[r'currencies'] = this.currencies;
    } else {
      json[r'currencies'] = null;
    }
    return json;
  }

  /// Returns a new [DomainLookupResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DomainLookupResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return DomainLookupResponse(
        available: mapValueOfType<bool>(json, r'available'),
        premium: mapValueOfType<bool>(json, r'premium'),
        website: mapValueOfType<bool>(json, r'website'),
        domainService: mapValueOfType<bool>(json, r'domain_service'),
        service: mapValueOfType<Object>(json, r'service'),
        whoisPrivacy: mapValueOfType<bool>(json, r'whois_privacy'),
        new_: mapValueOfType<String>(json, r'new'),
        renewal: mapValueOfType<String>(json, r'renewal'),
        transfer: mapValueOfType<String>(json, r'transfer'),
        fields: mapValueOfType<Object>(json, r'fields'),
        currencies: mapValueOfType<Object>(json, r'currencies'),
      );
    }
    return null;
  }

  static List<DomainLookupResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DomainLookupResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DomainLookupResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DomainLookupResponse> mapFromJson(dynamic json) {
    final map = <String, DomainLookupResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DomainLookupResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DomainLookupResponse-objects as value to a dart map
  static Map<String, List<DomainLookupResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DomainLookupResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DomainLookupResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

