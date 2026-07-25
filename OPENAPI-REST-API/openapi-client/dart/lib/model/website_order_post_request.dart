//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WebsiteOrderPostRequest {
  /// Returns a new [WebsiteOrderPostRequest] instance.
  WebsiteOrderPostRequest({
    required this.hostname,
    required this.packageId,
    this.rootpass = '',
    this.period = 1,
    this.coupon = '',
    this.serviceOfferId = 0,
    this.script = 0,
    this.comment = '',
    this.registerDomain = false,
  });

  /// Primary FQDN for the website. Must pass valid_hostname() and the keyword blocklist.
  String hostname;

  /// Plan id from getNewWebsite.serviceTypes[].services_id (must be buyable).
  int packageId;

  /// Control-panel admin password. If blank, a random password is generated server-side.
  String rootpass;

  /// Billing cycle in months (1 / 6 / 12 / 24 / 36).
  int period;

  /// Coupon code.
  String coupon;

  /// Promo bundle id from getNewWebsite.serviceOffers.
  int serviceOfferId;

  /// Auto-installer id (0 = none).
  int script;

  /// Free-form note saved on the service row.
  String comment;

  /// When true and enableDomainRegistering=true from the catalog, also registers/transfers the domain through the order.
  bool registerDomain;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WebsiteOrderPostRequest &&
    other.hostname == hostname &&
    other.packageId == packageId &&
    other.rootpass == rootpass &&
    other.period == period &&
    other.coupon == coupon &&
    other.serviceOfferId == serviceOfferId &&
    other.script == script &&
    other.comment == comment &&
    other.registerDomain == registerDomain;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (hostname.hashCode) +
    (packageId.hashCode) +
    (rootpass.hashCode) +
    (period.hashCode) +
    (coupon.hashCode) +
    (serviceOfferId.hashCode) +
    (script.hashCode) +
    (comment.hashCode) +
    (registerDomain.hashCode);

  @override
  String toString() => 'WebsiteOrderPostRequest[hostname=$hostname, packageId=$packageId, rootpass=$rootpass, period=$period, coupon=$coupon, serviceOfferId=$serviceOfferId, script=$script, comment=$comment, registerDomain=$registerDomain]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'hostname'] = this.hostname;
      json[r'packageId'] = this.packageId;
      json[r'rootpass'] = this.rootpass;
      json[r'period'] = this.period;
      json[r'coupon'] = this.coupon;
      json[r'serviceOfferId'] = this.serviceOfferId;
      json[r'script'] = this.script;
      json[r'comment'] = this.comment;
      json[r'registerDomain'] = this.registerDomain;
    return json;
  }

  /// Returns a new [WebsiteOrderPostRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WebsiteOrderPostRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'hostname'), 'Required key "WebsiteOrderPostRequest[hostname]" is missing from JSON.');
        assert(json[r'hostname'] != null, 'Required key "WebsiteOrderPostRequest[hostname]" has a null value in JSON.');
        assert(json.containsKey(r'packageId'), 'Required key "WebsiteOrderPostRequest[packageId]" is missing from JSON.');
        assert(json[r'packageId'] != null, 'Required key "WebsiteOrderPostRequest[packageId]" has a null value in JSON.');
        return true;
      }());

      return WebsiteOrderPostRequest(
        hostname: mapValueOfType<String>(json, r'hostname')!,
        packageId: mapValueOfType<int>(json, r'packageId')!,
        rootpass: mapValueOfType<String>(json, r'rootpass') ?? '',
        period: mapValueOfType<int>(json, r'period') ?? 1,
        coupon: mapValueOfType<String>(json, r'coupon') ?? '',
        serviceOfferId: mapValueOfType<int>(json, r'serviceOfferId') ?? 0,
        script: mapValueOfType<int>(json, r'script') ?? 0,
        comment: mapValueOfType<String>(json, r'comment') ?? '',
        registerDomain: mapValueOfType<bool>(json, r'registerDomain') ?? false,
      );
    }
    return null;
  }

  static List<WebsiteOrderPostRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WebsiteOrderPostRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebsiteOrderPostRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WebsiteOrderPostRequest> mapFromJson(dynamic json) {
    final map = <String, WebsiteOrderPostRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WebsiteOrderPostRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WebsiteOrderPostRequest-objects as value to a dart map
  static Map<String, List<WebsiteOrderPostRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WebsiteOrderPostRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WebsiteOrderPostRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'hostname',
    'packageId',
  };
}

