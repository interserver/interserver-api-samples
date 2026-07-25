//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class WebsitesOrderJsonServiceOffersItem {
  /// Returns a new [WebsitesOrderJsonServiceOffersItem] instance.
  WebsitesOrderJsonServiceOffersItem({
    this.serviceOfferId,
    this.serviceId,
    this.introCost,
    this.renewalCost,
    this.introFrequency,
    this.renewalFrequency,
    this.allowCoupon,
    this.serviceModule,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.currencySymbol,
  });

  /// Service offer ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? serviceOfferId;

  /// Service ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? serviceId;

  /// Introductory cost
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? introCost;

  /// Renewal cost
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? renewalCost;

  /// Introductory frequency
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? introFrequency;

  /// Renewal frequency
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? renewalFrequency;

  /// Allow coupon
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? allowCoupon;

  /// Service module
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? serviceModule;

  /// Creation date
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? createdAt;

  /// Update date
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? updatedAt;

  /// Deletion date
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? deletedAt;

  /// Currency symbol
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? currencySymbol;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WebsitesOrderJsonServiceOffersItem &&
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
    other.deletedAt == deletedAt &&
    other.currencySymbol == currencySymbol;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (serviceOfferId == null ? 0 : serviceOfferId!.hashCode) +
    (serviceId == null ? 0 : serviceId!.hashCode) +
    (introCost == null ? 0 : introCost!.hashCode) +
    (renewalCost == null ? 0 : renewalCost!.hashCode) +
    (introFrequency == null ? 0 : introFrequency!.hashCode) +
    (renewalFrequency == null ? 0 : renewalFrequency!.hashCode) +
    (allowCoupon == null ? 0 : allowCoupon!.hashCode) +
    (serviceModule == null ? 0 : serviceModule!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode) +
    (deletedAt == null ? 0 : deletedAt!.hashCode) +
    (currencySymbol == null ? 0 : currencySymbol!.hashCode);

  @override
  String toString() => 'WebsitesOrderJsonServiceOffersItem[serviceOfferId=$serviceOfferId, serviceId=$serviceId, introCost=$introCost, renewalCost=$renewalCost, introFrequency=$introFrequency, renewalFrequency=$renewalFrequency, allowCoupon=$allowCoupon, serviceModule=$serviceModule, createdAt=$createdAt, updatedAt=$updatedAt, deletedAt=$deletedAt, currencySymbol=$currencySymbol]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.serviceOfferId != null) {
      json[r'service_offer_id'] = this.serviceOfferId;
    } else {
      json[r'service_offer_id'] = null;
    }
    if (this.serviceId != null) {
      json[r'service_id'] = this.serviceId;
    } else {
      json[r'service_id'] = null;
    }
    if (this.introCost != null) {
      json[r'intro_cost'] = this.introCost;
    } else {
      json[r'intro_cost'] = null;
    }
    if (this.renewalCost != null) {
      json[r'renewal_cost'] = this.renewalCost;
    } else {
      json[r'renewal_cost'] = null;
    }
    if (this.introFrequency != null) {
      json[r'intro_frequency'] = this.introFrequency;
    } else {
      json[r'intro_frequency'] = null;
    }
    if (this.renewalFrequency != null) {
      json[r'renewal_frequency'] = this.renewalFrequency;
    } else {
      json[r'renewal_frequency'] = null;
    }
    if (this.allowCoupon != null) {
      json[r'allow_coupon'] = this.allowCoupon;
    } else {
      json[r'allow_coupon'] = null;
    }
    if (this.serviceModule != null) {
      json[r'service_module'] = this.serviceModule;
    } else {
      json[r'service_module'] = null;
    }
    if (this.createdAt != null) {
      json[r'created_at'] = this.createdAt;
    } else {
      json[r'created_at'] = null;
    }
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
    if (this.currencySymbol != null) {
      json[r'currencySymbol'] = this.currencySymbol;
    } else {
      json[r'currencySymbol'] = null;
    }
    return json;
  }

  /// Returns a new [WebsitesOrderJsonServiceOffersItem] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WebsitesOrderJsonServiceOffersItem? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return WebsitesOrderJsonServiceOffersItem(
        serviceOfferId: mapValueOfType<String>(json, r'service_offer_id'),
        serviceId: mapValueOfType<String>(json, r'service_id'),
        introCost: mapValueOfType<int>(json, r'intro_cost'),
        renewalCost: mapValueOfType<int>(json, r'renewal_cost'),
        introFrequency: mapValueOfType<String>(json, r'intro_frequency'),
        renewalFrequency: mapValueOfType<String>(json, r'renewal_frequency'),
        allowCoupon: mapValueOfType<String>(json, r'allow_coupon'),
        serviceModule: mapValueOfType<String>(json, r'service_module'),
        createdAt: mapValueOfType<String>(json, r'created_at'),
        updatedAt: mapValueOfType<String>(json, r'updated_at'),
        deletedAt: mapValueOfType<String>(json, r'deleted_at'),
        currencySymbol: mapValueOfType<String>(json, r'currencySymbol'),
      );
    }
    return null;
  }

  static List<WebsitesOrderJsonServiceOffersItem> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WebsitesOrderJsonServiceOffersItem>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebsitesOrderJsonServiceOffersItem.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WebsitesOrderJsonServiceOffersItem> mapFromJson(dynamic json) {
    final map = <String, WebsitesOrderJsonServiceOffersItem>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WebsitesOrderJsonServiceOffersItem.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WebsitesOrderJsonServiceOffersItem-objects as value to a dart map
  static Map<String, List<WebsitesOrderJsonServiceOffersItem>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WebsitesOrderJsonServiceOffersItem>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WebsitesOrderJsonServiceOffersItem.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

