//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class WebsitesOrderServiceOffer {
  /// Returns a new [WebsitesOrderServiceOffer] instance.
  WebsitesOrderServiceOffer({
    required this.serviceOfferId,
    required this.serviceId,
    required this.introCost,
    required this.renewalCost,
    required this.introFrequency,
    required this.renewalFrequency,
    required this.allowCoupon,
    required this.serviceModule,
    required this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  /// The ID of the service offer.
  String serviceOfferId;

  /// The ID of the associated service.
  String serviceId;

  /// The introductory cost of the service offer.
  String introCost;

  /// The renewal cost of the service offer.
  String renewalCost;

  /// The introductory frequency of the service offer.
  String introFrequency;

  /// The renewal frequency of the service offer.
  String renewalFrequency;

  /// Indicates if coupons are allowed (1 for yes, 0 for no).
  String allowCoupon;

  /// The module of the service offer.
  String serviceModule;

  /// The creation timestamp of the service offer.
  String createdAt;

  /// The update timestamp of the service offer.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? updatedAt;

  /// The deletion timestamp of the service offer.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? deletedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WebsitesOrderServiceOffer &&
    other.serviceOfferId == serviceOfferId &&
    other.serviceId == serviceId &&
    other.introCost == introCost &&
    other.renewalCost == renewalCost &&
    other.introFrequency == introFrequency &&
    other.renewalFrequency == renewalFrequency &&
    other.allowCoupon == allowCoupon &&
    other.serviceModule == serviceModule &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt &&
    other.deletedAt == deletedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (serviceOfferId.hashCode) +
    (serviceId.hashCode) +
    (introCost.hashCode) +
    (renewalCost.hashCode) +
    (introFrequency.hashCode) +
    (renewalFrequency.hashCode) +
    (allowCoupon.hashCode) +
    (serviceModule.hashCode) +
    (createdAt.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode) +
    (deletedAt == null ? 0 : deletedAt!.hashCode);

  @override
  String toString() => 'WebsitesOrderServiceOffer[serviceOfferId=$serviceOfferId, serviceId=$serviceId, introCost=$introCost, renewalCost=$renewalCost, introFrequency=$introFrequency, renewalFrequency=$renewalFrequency, allowCoupon=$allowCoupon, serviceModule=$serviceModule, createdAt=$createdAt, updatedAt=$updatedAt, deletedAt=$deletedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'service_offer_id'] = this.serviceOfferId;
      json[r'service_id'] = this.serviceId;
      json[r'intro_cost'] = this.introCost;
      json[r'renewal_cost'] = this.renewalCost;
      json[r'intro_frequency'] = this.introFrequency;
      json[r'renewal_frequency'] = this.renewalFrequency;
      json[r'allow_coupon'] = this.allowCoupon;
      json[r'service_module'] = this.serviceModule;
      json[r'created_at'] = this.createdAt;
    if (this.updatedAt != null) {
      json[r'updated_at'] = this.updatedAt;
    } else {
      json[r'updated_at'] = null;
    }
    if (this.deletedAt != null) {
      json[r'deleted_at'] = this.deletedAt;
    } else {
      json[r'deleted_at'] = null;
    }
    return json;
  }

  /// Returns a new [WebsitesOrderServiceOffer] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WebsitesOrderServiceOffer? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'service_offer_id'), 'Required key "WebsitesOrderServiceOffer[service_offer_id]" is missing from JSON.');
        assert(json[r'service_offer_id'] != null, 'Required key "WebsitesOrderServiceOffer[service_offer_id]" has a null value in JSON.');
        assert(json.containsKey(r'service_id'), 'Required key "WebsitesOrderServiceOffer[service_id]" is missing from JSON.');
        assert(json[r'service_id'] != null, 'Required key "WebsitesOrderServiceOffer[service_id]" has a null value in JSON.');
        assert(json.containsKey(r'intro_cost'), 'Required key "WebsitesOrderServiceOffer[intro_cost]" is missing from JSON.');
        assert(json[r'intro_cost'] != null, 'Required key "WebsitesOrderServiceOffer[intro_cost]" has a null value in JSON.');
        assert(json.containsKey(r'renewal_cost'), 'Required key "WebsitesOrderServiceOffer[renewal_cost]" is missing from JSON.');
        assert(json[r'renewal_cost'] != null, 'Required key "WebsitesOrderServiceOffer[renewal_cost]" has a null value in JSON.');
        assert(json.containsKey(r'intro_frequency'), 'Required key "WebsitesOrderServiceOffer[intro_frequency]" is missing from JSON.');
        assert(json[r'intro_frequency'] != null, 'Required key "WebsitesOrderServiceOffer[intro_frequency]" has a null value in JSON.');
        assert(json.containsKey(r'renewal_frequency'), 'Required key "WebsitesOrderServiceOffer[renewal_frequency]" is missing from JSON.');
        assert(json[r'renewal_frequency'] != null, 'Required key "WebsitesOrderServiceOffer[renewal_frequency]" has a null value in JSON.');
        assert(json.containsKey(r'allow_coupon'), 'Required key "WebsitesOrderServiceOffer[allow_coupon]" is missing from JSON.');
        assert(json[r'allow_coupon'] != null, 'Required key "WebsitesOrderServiceOffer[allow_coupon]" has a null value in JSON.');
        assert(json.containsKey(r'service_module'), 'Required key "WebsitesOrderServiceOffer[service_module]" is missing from JSON.');
        assert(json[r'service_module'] != null, 'Required key "WebsitesOrderServiceOffer[service_module]" has a null value in JSON.');
        assert(json.containsKey(r'created_at'), 'Required key "WebsitesOrderServiceOffer[created_at]" is missing from JSON.');
        assert(json[r'created_at'] != null, 'Required key "WebsitesOrderServiceOffer[created_at]" has a null value in JSON.');
        return true;
      }());

      return WebsitesOrderServiceOffer(
        serviceOfferId: mapValueOfType<String>(json, r'service_offer_id')!,
        serviceId: mapValueOfType<String>(json, r'service_id')!,
        introCost: mapValueOfType<String>(json, r'intro_cost')!,
        renewalCost: mapValueOfType<String>(json, r'renewal_cost')!,
        introFrequency: mapValueOfType<String>(json, r'intro_frequency')!,
        renewalFrequency: mapValueOfType<String>(json, r'renewal_frequency')!,
        allowCoupon: mapValueOfType<String>(json, r'allow_coupon')!,
        serviceModule: mapValueOfType<String>(json, r'service_module')!,
        createdAt: mapValueOfType<String>(json, r'created_at')!,
        updatedAt: mapValueOfType<String>(json, r'updated_at'),
        deletedAt: mapValueOfType<String>(json, r'deleted_at'),
      );
    }
    return null;
  }

  static List<WebsitesOrderServiceOffer> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WebsitesOrderServiceOffer>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebsitesOrderServiceOffer.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WebsitesOrderServiceOffer> mapFromJson(dynamic json) {
    final map = <String, WebsitesOrderServiceOffer>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WebsitesOrderServiceOffer.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WebsitesOrderServiceOffer-objects as value to a dart map
  static Map<String, List<WebsitesOrderServiceOffer>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WebsitesOrderServiceOffer>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WebsitesOrderServiceOffer.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'service_offer_id',
    'service_id',
    'intro_cost',
    'renewal_cost',
    'intro_frequency',
    'renewal_frequency',
    'allow_coupon',
    'service_module',
    'created_at',
  };
}

