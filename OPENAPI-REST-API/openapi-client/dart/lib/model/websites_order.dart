//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class WebsitesOrder {
  /// Returns a new [WebsitesOrder] instance.
  WebsitesOrder({
    required this.step,
    required this.website,
    required this.period,
    required this.serviceOfferId,
    required this.packages,
    required this.enableDomainRegistering,
    required this.jsonServices,
    required this.jsonServiceOffers,
    required this.serviceTypes,
    required this.serviceOffers,
    this.packges,
  });

  /// Step description
  String step;

  /// Website description
  String website;

  /// Period description
  int period;

  /// Service offer ID description
  int serviceOfferId;

  WebsitesOrderPackages packages;

  /// Enable domain registering description
  bool enableDomainRegistering;

  WebsitesOrderJsonServices jsonServices;

  WebsitesOrderJsonServiceOffers jsonServiceOffers;

  WebsitesOrderServiceTypes serviceTypes;

  WebsitesOrderServiceOffers serviceOffers;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  WebsitesOrderPackges? packges;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WebsitesOrder &&
    other.step == step &&
    other.website == website &&
    other.period == period &&
    other.serviceOfferId == serviceOfferId &&
    other.packages == packages &&
    other.enableDomainRegistering == enableDomainRegistering &&
    other.jsonServices == jsonServices &&
    other.jsonServiceOffers == jsonServiceOffers &&
    other.serviceTypes == serviceTypes &&
    other.serviceOffers == serviceOffers &&
    other.packges == packges;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (step.hashCode) +
    (website.hashCode) +
    (period.hashCode) +
    (serviceOfferId.hashCode) +
    (packages.hashCode) +
    (enableDomainRegistering.hashCode) +
    (jsonServices.hashCode) +
    (jsonServiceOffers.hashCode) +
    (serviceTypes.hashCode) +
    (serviceOffers.hashCode) +
    (packges == null ? 0 : packges!.hashCode);

  @override
  String toString() => 'WebsitesOrder[step=$step, website=$website, period=$period, serviceOfferId=$serviceOfferId, packages=$packages, enableDomainRegistering=$enableDomainRegistering, jsonServices=$jsonServices, jsonServiceOffers=$jsonServiceOffers, serviceTypes=$serviceTypes, serviceOffers=$serviceOffers, packges=$packges]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'step'] = this.step;
      json[r'website'] = this.website;
      json[r'period'] = this.period;
      json[r'serviceOfferId'] = this.serviceOfferId;
      json[r'packages'] = this.packages;
      json[r'enableDomainRegistering'] = this.enableDomainRegistering;
      json[r'jsonServices'] = this.jsonServices;
      json[r'jsonServiceOffers'] = this.jsonServiceOffers;
      json[r'serviceTypes'] = this.serviceTypes;
      json[r'serviceOffers'] = this.serviceOffers;
    if (this.packges != null) {
      json[r'packges'] = this.packges;
    } else {
      json[r'packges'] = null;
    }
    return json;
  }

  /// Returns a new [WebsitesOrder] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WebsitesOrder? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'step'), 'Required key "WebsitesOrder[step]" is missing from JSON.');
        assert(json[r'step'] != null, 'Required key "WebsitesOrder[step]" has a null value in JSON.');
        assert(json.containsKey(r'website'), 'Required key "WebsitesOrder[website]" is missing from JSON.');
        assert(json[r'website'] != null, 'Required key "WebsitesOrder[website]" has a null value in JSON.');
        assert(json.containsKey(r'period'), 'Required key "WebsitesOrder[period]" is missing from JSON.');
        assert(json[r'period'] != null, 'Required key "WebsitesOrder[period]" has a null value in JSON.');
        assert(json.containsKey(r'serviceOfferId'), 'Required key "WebsitesOrder[serviceOfferId]" is missing from JSON.');
        assert(json[r'serviceOfferId'] != null, 'Required key "WebsitesOrder[serviceOfferId]" has a null value in JSON.');
        assert(json.containsKey(r'packages'), 'Required key "WebsitesOrder[packages]" is missing from JSON.');
        assert(json[r'packages'] != null, 'Required key "WebsitesOrder[packages]" has a null value in JSON.');
        assert(json.containsKey(r'enableDomainRegistering'), 'Required key "WebsitesOrder[enableDomainRegistering]" is missing from JSON.');
        assert(json[r'enableDomainRegistering'] != null, 'Required key "WebsitesOrder[enableDomainRegistering]" has a null value in JSON.');
        assert(json.containsKey(r'jsonServices'), 'Required key "WebsitesOrder[jsonServices]" is missing from JSON.');
        assert(json[r'jsonServices'] != null, 'Required key "WebsitesOrder[jsonServices]" has a null value in JSON.');
        assert(json.containsKey(r'jsonServiceOffers'), 'Required key "WebsitesOrder[jsonServiceOffers]" is missing from JSON.');
        assert(json[r'jsonServiceOffers'] != null, 'Required key "WebsitesOrder[jsonServiceOffers]" has a null value in JSON.');
        assert(json.containsKey(r'serviceTypes'), 'Required key "WebsitesOrder[serviceTypes]" is missing from JSON.');
        assert(json[r'serviceTypes'] != null, 'Required key "WebsitesOrder[serviceTypes]" has a null value in JSON.');
        assert(json.containsKey(r'serviceOffers'), 'Required key "WebsitesOrder[serviceOffers]" is missing from JSON.');
        assert(json[r'serviceOffers'] != null, 'Required key "WebsitesOrder[serviceOffers]" has a null value in JSON.');
        return true;
      }());

      return WebsitesOrder(
        step: mapValueOfType<String>(json, r'step')!,
        website: mapValueOfType<String>(json, r'website')!,
        period: mapValueOfType<int>(json, r'period')!,
        serviceOfferId: mapValueOfType<int>(json, r'serviceOfferId')!,
        packages: WebsitesOrderPackages.fromJson(json[r'packages'])!,
        enableDomainRegistering: mapValueOfType<bool>(json, r'enableDomainRegistering')!,
        jsonServices: WebsitesOrderJsonServices.fromJson(json[r'jsonServices'])!,
        jsonServiceOffers: WebsitesOrderJsonServiceOffers.fromJson(json[r'jsonServiceOffers'])!,
        serviceTypes: WebsitesOrderServiceTypes.fromJson(json[r'serviceTypes'])!,
        serviceOffers: WebsitesOrderServiceOffers.fromJson(json[r'serviceOffers'])!,
        packges: WebsitesOrderPackges.fromJson(json[r'packges']),
      );
    }
    return null;
  }

  static List<WebsitesOrder> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WebsitesOrder>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebsitesOrder.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WebsitesOrder> mapFromJson(dynamic json) {
    final map = <String, WebsitesOrder>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WebsitesOrder.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WebsitesOrder-objects as value to a dart map
  static Map<String, List<WebsitesOrder>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WebsitesOrder>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WebsitesOrder.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'step',
    'website',
    'period',
    'serviceOfferId',
    'packages',
    'enableDomainRegistering',
    'jsonServices',
    'jsonServiceOffers',
    'serviceTypes',
    'serviceOffers',
  };
}

