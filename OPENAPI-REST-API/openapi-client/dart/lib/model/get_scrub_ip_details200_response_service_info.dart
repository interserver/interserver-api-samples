//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetScrubIpDetails200ResponseServiceInfo {
  /// Returns a new [GetScrubIpDetails200ResponseServiceInfo] instance.
  GetScrubIpDetails200ResponseServiceInfo({
    this.scrubIpId,
    this.scrubIpType,
    this.scrubIpCustid,
    this.scrubIpOrderDate,
    this.scrubIpIp,
    this.scrubIpServiceId,
    this.scrubIpServiceModule,
    this.scrubIpStatus,
    this.scrubIpInvoice,
    this.scrubIpCurrency,
    this.scrubIpCoupon,
    this.scrubIpComment,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? scrubIpId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? scrubIpType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? scrubIpCustid;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? scrubIpOrderDate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? scrubIpIp;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? scrubIpServiceId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? scrubIpServiceModule;

  GetScrubIpDetails200ResponseServiceInfoScrubIpStatusEnum? scrubIpStatus;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? scrubIpInvoice;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? scrubIpCurrency;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? scrubIpCoupon;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? scrubIpComment;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetScrubIpDetails200ResponseServiceInfo &&
    other.scrubIpId == scrubIpId &&
    other.scrubIpType == scrubIpType &&
    other.scrubIpCustid == scrubIpCustid &&
    other.scrubIpOrderDate == scrubIpOrderDate &&
    other.scrubIpIp == scrubIpIp &&
    other.scrubIpServiceId == scrubIpServiceId &&
    other.scrubIpServiceModule == scrubIpServiceModule &&
    other.scrubIpStatus == scrubIpStatus &&
    other.scrubIpInvoice == scrubIpInvoice &&
    other.scrubIpCurrency == scrubIpCurrency &&
    other.scrubIpCoupon == scrubIpCoupon &&
    other.scrubIpComment == scrubIpComment;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (scrubIpId == null ? 0 : scrubIpId!.hashCode) +
    (scrubIpType == null ? 0 : scrubIpType!.hashCode) +
    (scrubIpCustid == null ? 0 : scrubIpCustid!.hashCode) +
    (scrubIpOrderDate == null ? 0 : scrubIpOrderDate!.hashCode) +
    (scrubIpIp == null ? 0 : scrubIpIp!.hashCode) +
    (scrubIpServiceId == null ? 0 : scrubIpServiceId!.hashCode) +
    (scrubIpServiceModule == null ? 0 : scrubIpServiceModule!.hashCode) +
    (scrubIpStatus == null ? 0 : scrubIpStatus!.hashCode) +
    (scrubIpInvoice == null ? 0 : scrubIpInvoice!.hashCode) +
    (scrubIpCurrency == null ? 0 : scrubIpCurrency!.hashCode) +
    (scrubIpCoupon == null ? 0 : scrubIpCoupon!.hashCode) +
    (scrubIpComment == null ? 0 : scrubIpComment!.hashCode);

  @override
  String toString() => 'GetScrubIpDetails200ResponseServiceInfo[scrubIpId=$scrubIpId, scrubIpType=$scrubIpType, scrubIpCustid=$scrubIpCustid, scrubIpOrderDate=$scrubIpOrderDate, scrubIpIp=$scrubIpIp, scrubIpServiceId=$scrubIpServiceId, scrubIpServiceModule=$scrubIpServiceModule, scrubIpStatus=$scrubIpStatus, scrubIpInvoice=$scrubIpInvoice, scrubIpCurrency=$scrubIpCurrency, scrubIpCoupon=$scrubIpCoupon, scrubIpComment=$scrubIpComment]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.scrubIpId != null) {
      json[r'scrub_ip_id'] = this.scrubIpId;
    } else {
      json[r'scrub_ip_id'] = null;
    }
    if (this.scrubIpType != null) {
      json[r'scrub_ip_type'] = this.scrubIpType;
    } else {
      json[r'scrub_ip_type'] = null;
    }
    if (this.scrubIpCustid != null) {
      json[r'scrub_ip_custid'] = this.scrubIpCustid;
    } else {
      json[r'scrub_ip_custid'] = null;
    }
    if (this.scrubIpOrderDate != null) {
      json[r'scrub_ip_order_date'] = this.scrubIpOrderDate;
    } else {
      json[r'scrub_ip_order_date'] = null;
    }
    if (this.scrubIpIp != null) {
      json[r'scrub_ip_ip'] = this.scrubIpIp;
    } else {
      json[r'scrub_ip_ip'] = null;
    }
    if (this.scrubIpServiceId != null) {
      json[r'scrub_ip_service_id'] = this.scrubIpServiceId;
    } else {
      json[r'scrub_ip_service_id'] = null;
    }
    if (this.scrubIpServiceModule != null) {
      json[r'scrub_ip_service_module'] = this.scrubIpServiceModule;
    } else {
      json[r'scrub_ip_service_module'] = null;
    }
    if (this.scrubIpStatus != null) {
      json[r'scrub_ip_status'] = this.scrubIpStatus;
    } else {
      json[r'scrub_ip_status'] = null;
    }
    if (this.scrubIpInvoice != null) {
      json[r'scrub_ip_invoice'] = this.scrubIpInvoice;
    } else {
      json[r'scrub_ip_invoice'] = null;
    }
    if (this.scrubIpCurrency != null) {
      json[r'scrub_ip_currency'] = this.scrubIpCurrency;
    } else {
      json[r'scrub_ip_currency'] = null;
    }
    if (this.scrubIpCoupon != null) {
      json[r'scrub_ip_coupon'] = this.scrubIpCoupon;
    } else {
      json[r'scrub_ip_coupon'] = null;
    }
    if (this.scrubIpComment != null) {
      json[r'scrub_ip_comment'] = this.scrubIpComment;
    } else {
      json[r'scrub_ip_comment'] = null;
    }
    return json;
  }

  /// Returns a new [GetScrubIpDetails200ResponseServiceInfo] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetScrubIpDetails200ResponseServiceInfo? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return GetScrubIpDetails200ResponseServiceInfo(
        scrubIpId: mapValueOfType<String>(json, r'scrub_ip_id'),
        scrubIpType: mapValueOfType<String>(json, r'scrub_ip_type'),
        scrubIpCustid: mapValueOfType<String>(json, r'scrub_ip_custid'),
        scrubIpOrderDate: mapValueOfType<String>(json, r'scrub_ip_order_date'),
        scrubIpIp: mapValueOfType<String>(json, r'scrub_ip_ip'),
        scrubIpServiceId: mapValueOfType<String>(json, r'scrub_ip_service_id'),
        scrubIpServiceModule: mapValueOfType<String>(json, r'scrub_ip_service_module'),
        scrubIpStatus: GetScrubIpDetails200ResponseServiceInfoScrubIpStatusEnum.fromJson(json[r'scrub_ip_status']),
        scrubIpInvoice: mapValueOfType<String>(json, r'scrub_ip_invoice'),
        scrubIpCurrency: mapValueOfType<String>(json, r'scrub_ip_currency'),
        scrubIpCoupon: mapValueOfType<String>(json, r'scrub_ip_coupon'),
        scrubIpComment: mapValueOfType<String>(json, r'scrub_ip_comment'),
      );
    }
    return null;
  }

  static List<GetScrubIpDetails200ResponseServiceInfo> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetScrubIpDetails200ResponseServiceInfo>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetScrubIpDetails200ResponseServiceInfo.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetScrubIpDetails200ResponseServiceInfo> mapFromJson(dynamic json) {
    final map = <String, GetScrubIpDetails200ResponseServiceInfo>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetScrubIpDetails200ResponseServiceInfo.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetScrubIpDetails200ResponseServiceInfo-objects as value to a dart map
  static Map<String, List<GetScrubIpDetails200ResponseServiceInfo>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetScrubIpDetails200ResponseServiceInfo>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetScrubIpDetails200ResponseServiceInfo.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


enum GetScrubIpDetails200ResponseServiceInfoScrubIpStatusEnum {
  active._(r'active'),
  pending._(r'pending'),
  canceled._(r'canceled'),
  expired._(r'expired'),
  ;

  /// Instantiate a new enum with the provided value.
  const GetScrubIpDetails200ResponseServiceInfoScrubIpStatusEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [GetScrubIpDetails200ResponseServiceInfoScrubIpStatusEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static GetScrubIpDetails200ResponseServiceInfoScrubIpStatusEnum? fromJson(dynamic value) => GetScrubIpDetails200ResponseServiceInfoScrubIpStatusEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [GetScrubIpDetails200ResponseServiceInfoScrubIpStatusEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<GetScrubIpDetails200ResponseServiceInfoScrubIpStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetScrubIpDetails200ResponseServiceInfoScrubIpStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetScrubIpDetails200ResponseServiceInfoScrubIpStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [GetScrubIpDetails200ResponseServiceInfoScrubIpStatusEnum] to String,
/// and [decode] dynamic data back to [GetScrubIpDetails200ResponseServiceInfoScrubIpStatusEnum].
class GetScrubIpDetails200ResponseServiceInfoScrubIpStatusEnumTypeTransformer {
  factory GetScrubIpDetails200ResponseServiceInfoScrubIpStatusEnumTypeTransformer() => _instance ??= const GetScrubIpDetails200ResponseServiceInfoScrubIpStatusEnumTypeTransformer._();

  const GetScrubIpDetails200ResponseServiceInfoScrubIpStatusEnumTypeTransformer._();

  String encode(GetScrubIpDetails200ResponseServiceInfoScrubIpStatusEnum data) => data._value;

  /// Returns the instance of [GetScrubIpDetails200ResponseServiceInfoScrubIpStatusEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  GetScrubIpDetails200ResponseServiceInfoScrubIpStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data is GetScrubIpDetails200ResponseServiceInfoScrubIpStatusEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'active': return GetScrubIpDetails200ResponseServiceInfoScrubIpStatusEnum.active;
        case r'pending': return GetScrubIpDetails200ResponseServiceInfoScrubIpStatusEnum.pending;
        case r'canceled': return GetScrubIpDetails200ResponseServiceInfoScrubIpStatusEnum.canceled;
        case r'expired': return GetScrubIpDetails200ResponseServiceInfoScrubIpStatusEnum.expired;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static GetScrubIpDetails200ResponseServiceInfoScrubIpStatusEnumTypeTransformer? _instance;
}


