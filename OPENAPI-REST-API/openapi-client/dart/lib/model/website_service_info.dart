//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class WebsiteServiceInfo {
  /// Returns a new [WebsiteServiceInfo] instance.
  WebsiteServiceInfo({
    this.websiteId,
    this.websiteServer,
    this.websiteType,
    this.websiteCurrency,
    this.websiteOrderDate,
    this.websiteCustid,
    this.websiteIp,
    this.websiteStatus,
    this.websiteInvoice,
    this.websiteCoupon,
    this.websiteExtra,
    this.websiteHostname,
    this.websiteComment,
    this.websiteUsername,
    this.websiteServerStatus,
  });

  /// Website ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? websiteId;

  /// Website server
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? websiteServer;

  /// Website type
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? websiteType;

  /// Currency of the website
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? websiteCurrency;

  /// Order date of the website
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? websiteOrderDate;

  /// Customer ID of the website
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? websiteCustid;

  /// IP address of the website
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? websiteIp;

  /// Status of the website
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? websiteStatus;

  /// Invoice of the website
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? websiteInvoice;

  /// Coupon for the website
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? websiteCoupon;

  /// Extra information in JSON format for the website
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? websiteExtra;

  /// Hostname of the website
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? websiteHostname;

  /// Comment for the website
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? websiteComment;

  /// Username for the website
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? websiteUsername;

  /// Server status of the website
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? websiteServerStatus;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WebsiteServiceInfo &&
    other.websiteId == websiteId &&
    other.websiteServer == websiteServer &&
    other.websiteType == websiteType &&
    other.websiteCurrency == websiteCurrency &&
    other.websiteOrderDate == websiteOrderDate &&
    other.websiteCustid == websiteCustid &&
    other.websiteIp == websiteIp &&
    other.websiteStatus == websiteStatus &&
    other.websiteInvoice == websiteInvoice &&
    other.websiteCoupon == websiteCoupon &&
    other.websiteExtra == websiteExtra &&
    other.websiteHostname == websiteHostname &&
    other.websiteComment == websiteComment &&
    other.websiteUsername == websiteUsername &&
    other.websiteServerStatus == websiteServerStatus;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (websiteId == null ? 0 : websiteId!.hashCode) +
    (websiteServer == null ? 0 : websiteServer!.hashCode) +
    (websiteType == null ? 0 : websiteType!.hashCode) +
    (websiteCurrency == null ? 0 : websiteCurrency!.hashCode) +
    (websiteOrderDate == null ? 0 : websiteOrderDate!.hashCode) +
    (websiteCustid == null ? 0 : websiteCustid!.hashCode) +
    (websiteIp == null ? 0 : websiteIp!.hashCode) +
    (websiteStatus == null ? 0 : websiteStatus!.hashCode) +
    (websiteInvoice == null ? 0 : websiteInvoice!.hashCode) +
    (websiteCoupon == null ? 0 : websiteCoupon!.hashCode) +
    (websiteExtra == null ? 0 : websiteExtra!.hashCode) +
    (websiteHostname == null ? 0 : websiteHostname!.hashCode) +
    (websiteComment == null ? 0 : websiteComment!.hashCode) +
    (websiteUsername == null ? 0 : websiteUsername!.hashCode) +
    (websiteServerStatus == null ? 0 : websiteServerStatus!.hashCode);

  @override
  String toString() => 'WebsiteServiceInfo[websiteId=$websiteId, websiteServer=$websiteServer, websiteType=$websiteType, websiteCurrency=$websiteCurrency, websiteOrderDate=$websiteOrderDate, websiteCustid=$websiteCustid, websiteIp=$websiteIp, websiteStatus=$websiteStatus, websiteInvoice=$websiteInvoice, websiteCoupon=$websiteCoupon, websiteExtra=$websiteExtra, websiteHostname=$websiteHostname, websiteComment=$websiteComment, websiteUsername=$websiteUsername, websiteServerStatus=$websiteServerStatus]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.websiteId != null) {
      json[r'website_id'] = this.websiteId;
    } else {
      json[r'website_id'] = null;
    }
    if (this.websiteServer != null) {
      json[r'website_server'] = this.websiteServer;
    } else {
      json[r'website_server'] = null;
    }
    if (this.websiteType != null) {
      json[r'website_type'] = this.websiteType;
    } else {
      json[r'website_type'] = null;
    }
    if (this.websiteCurrency != null) {
      json[r'website_currency'] = this.websiteCurrency;
    } else {
      json[r'website_currency'] = null;
    }
    if (this.websiteOrderDate != null) {
      json[r'website_order_date'] = this.websiteOrderDate;
    } else {
      json[r'website_order_date'] = null;
    }
    if (this.websiteCustid != null) {
      json[r'website_custid'] = this.websiteCustid;
    } else {
      json[r'website_custid'] = null;
    }
    if (this.websiteIp != null) {
      json[r'website_ip'] = this.websiteIp;
    } else {
      json[r'website_ip'] = null;
    }
    if (this.websiteStatus != null) {
      json[r'website_status'] = this.websiteStatus;
    } else {
      json[r'website_status'] = null;
    }
    if (this.websiteInvoice != null) {
      json[r'website_invoice'] = this.websiteInvoice;
    } else {
      json[r'website_invoice'] = null;
    }
    if (this.websiteCoupon != null) {
      json[r'website_coupon'] = this.websiteCoupon;
    } else {
      json[r'website_coupon'] = null;
    }
    if (this.websiteExtra != null) {
      json[r'website_extra'] = this.websiteExtra;
    } else {
      json[r'website_extra'] = null;
    }
    if (this.websiteHostname != null) {
      json[r'website_hostname'] = this.websiteHostname;
    } else {
      json[r'website_hostname'] = null;
    }
    if (this.websiteComment != null) {
      json[r'website_comment'] = this.websiteComment;
    } else {
      json[r'website_comment'] = null;
    }
    if (this.websiteUsername != null) {
      json[r'website_username'] = this.websiteUsername;
    } else {
      json[r'website_username'] = null;
    }
    if (this.websiteServerStatus != null) {
      json[r'website_server_status'] = this.websiteServerStatus;
    } else {
      json[r'website_server_status'] = null;
    }
    return json;
  }

  /// Returns a new [WebsiteServiceInfo] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WebsiteServiceInfo? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return WebsiteServiceInfo(
        websiteId: mapValueOfType<String>(json, r'website_id'),
        websiteServer: mapValueOfType<String>(json, r'website_server'),
        websiteType: mapValueOfType<String>(json, r'website_type'),
        websiteCurrency: mapValueOfType<String>(json, r'website_currency'),
        websiteOrderDate: mapValueOfType<String>(json, r'website_order_date'),
        websiteCustid: mapValueOfType<String>(json, r'website_custid'),
        websiteIp: mapValueOfType<String>(json, r'website_ip'),
        websiteStatus: mapValueOfType<String>(json, r'website_status'),
        websiteInvoice: mapValueOfType<String>(json, r'website_invoice'),
        websiteCoupon: mapValueOfType<String>(json, r'website_coupon'),
        websiteExtra: mapValueOfType<String>(json, r'website_extra'),
        websiteHostname: mapValueOfType<String>(json, r'website_hostname'),
        websiteComment: mapValueOfType<String>(json, r'website_comment'),
        websiteUsername: mapValueOfType<String>(json, r'website_username'),
        websiteServerStatus: mapValueOfType<String>(json, r'website_server_status'),
      );
    }
    return null;
  }

  static List<WebsiteServiceInfo> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WebsiteServiceInfo>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebsiteServiceInfo.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WebsiteServiceInfo> mapFromJson(dynamic json) {
    final map = <String, WebsiteServiceInfo>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WebsiteServiceInfo.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WebsiteServiceInfo-objects as value to a dart map
  static Map<String, List<WebsiteServiceInfo>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WebsiteServiceInfo>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WebsiteServiceInfo.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

