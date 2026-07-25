//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SslOrderRequest {
  /// Returns a new [SslOrderRequest] instance.
  SslOrderRequest({
    required this.ssl,
    required this.hostname,
    required this.approverEmail,
    this.frequency = 12,
    this.coupon = '',
    this.csrType = const SslOrderRequestCsrTypeEnum._('generated'),
    this.csr = '',
    this.firstname,
    this.lastname,
    this.email,
    this.address,
    this.city,
    this.state,
    this.zip,
    this.country,
    this.phone,
    this.company,
    this.department = 'Administration',
    this.agency,
    this.businessCategory,
  });

  /// SSL package service type id from getNewSsl.serviceTypes.
  int ssl;

  /// Domain the certificate is issued for. Wildcard certs require *.domain.com format.
  String hostname;

  /// Domain-control approver email (required for all SSL orders).
  String approverEmail;

  /// Billing frequency in months (12, 24, or 36).
  int frequency;

  /// Coupon code.
  String coupon;

  /// Whether the CSR is server-generated or customer-provided.
  SslOrderRequestCsrTypeEnum csrType;

  /// PEM-encoded CSR (>= 2048-bit) when csr_type=provided.
  String csr;

  /// Contact first name (defaults from account).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? firstname;

  /// Contact last name (defaults from account).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? lastname;

  /// Contact email (defaults from account).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? email;

  /// Contact address (defaults from account).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? address;

  /// Contact city (defaults from account).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? city;

  /// Contact state/region (defaults from account).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? state;

  /// Contact postal code (defaults from account).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? zip;

  /// Contact country (defaults from account).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? country;

  /// Contact phone (defaults from account).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? phone;

  /// Contact company/organization (defaults from account).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? company;

  /// Contact department (defaults to Administration).
  String department;

  /// EV certificate incorporating agency (only for EV packages).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? agency;

  /// EV certificate business category (only for EV packages).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? businessCategory;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SslOrderRequest &&
    other.ssl == ssl &&
    other.hostname == hostname &&
    other.approverEmail == approverEmail &&
    other.frequency == frequency &&
    other.coupon == coupon &&
    other.csrType == csrType &&
    other.csr == csr &&
    other.firstname == firstname &&
    other.lastname == lastname &&
    other.email == email &&
    other.address == address &&
    other.city == city &&
    other.state == state &&
    other.zip == zip &&
    other.country == country &&
    other.phone == phone &&
    other.company == company &&
    other.department == department &&
    other.agency == agency &&
    other.businessCategory == businessCategory;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (ssl.hashCode) +
    (hostname.hashCode) +
    (approverEmail.hashCode) +
    (frequency.hashCode) +
    (coupon.hashCode) +
    (csrType.hashCode) +
    (csr.hashCode) +
    (firstname == null ? 0 : firstname!.hashCode) +
    (lastname == null ? 0 : lastname!.hashCode) +
    (email == null ? 0 : email!.hashCode) +
    (address == null ? 0 : address!.hashCode) +
    (city == null ? 0 : city!.hashCode) +
    (state == null ? 0 : state!.hashCode) +
    (zip == null ? 0 : zip!.hashCode) +
    (country == null ? 0 : country!.hashCode) +
    (phone == null ? 0 : phone!.hashCode) +
    (company == null ? 0 : company!.hashCode) +
    (department.hashCode) +
    (agency == null ? 0 : agency!.hashCode) +
    (businessCategory == null ? 0 : businessCategory!.hashCode);

  @override
  String toString() => 'SslOrderRequest[ssl=$ssl, hostname=$hostname, approverEmail=$approverEmail, frequency=$frequency, coupon=$coupon, csrType=$csrType, csr=$csr, firstname=$firstname, lastname=$lastname, email=$email, address=$address, city=$city, state=$state, zip=$zip, country=$country, phone=$phone, company=$company, department=$department, agency=$agency, businessCategory=$businessCategory]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'ssl'] = this.ssl;
      json[r'hostname'] = this.hostname;
      json[r'approver_email'] = this.approverEmail;
      json[r'frequency'] = this.frequency;
      json[r'coupon'] = this.coupon;
      json[r'csr_type'] = this.csrType;
      json[r'csr'] = this.csr;
    if (this.firstname != null) {
      json[r'firstname'] = this.firstname;
    } else {
      json[r'firstname'] = null;
    }
    if (this.lastname != null) {
      json[r'lastname'] = this.lastname;
    } else {
      json[r'lastname'] = null;
    }
    if (this.email != null) {
      json[r'email'] = this.email;
    } else {
      json[r'email'] = null;
    }
    if (this.address != null) {
      json[r'address'] = this.address;
    } else {
      json[r'address'] = null;
    }
    if (this.city != null) {
      json[r'city'] = this.city;
    } else {
      json[r'city'] = null;
    }
    if (this.state != null) {
      json[r'state'] = this.state;
    } else {
      json[r'state'] = null;
    }
    if (this.zip != null) {
      json[r'zip'] = this.zip;
    } else {
      json[r'zip'] = null;
    }
    if (this.country != null) {
      json[r'country'] = this.country;
    } else {
      json[r'country'] = null;
    }
    if (this.phone != null) {
      json[r'phone'] = this.phone;
    } else {
      json[r'phone'] = null;
    }
    if (this.company != null) {
      json[r'company'] = this.company;
    } else {
      json[r'company'] = null;
    }
      json[r'department'] = this.department;
    if (this.agency != null) {
      json[r'agency'] = this.agency;
    } else {
      json[r'agency'] = null;
    }
    if (this.businessCategory != null) {
      json[r'business_category'] = this.businessCategory;
    } else {
      json[r'business_category'] = null;
    }
    return json;
  }

  /// Returns a new [SslOrderRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SslOrderRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'ssl'), 'Required key "SslOrderRequest[ssl]" is missing from JSON.');
        assert(json[r'ssl'] != null, 'Required key "SslOrderRequest[ssl]" has a null value in JSON.');
        assert(json.containsKey(r'hostname'), 'Required key "SslOrderRequest[hostname]" is missing from JSON.');
        assert(json[r'hostname'] != null, 'Required key "SslOrderRequest[hostname]" has a null value in JSON.');
        assert(json.containsKey(r'approver_email'), 'Required key "SslOrderRequest[approver_email]" is missing from JSON.');
        assert(json[r'approver_email'] != null, 'Required key "SslOrderRequest[approver_email]" has a null value in JSON.');
        return true;
      }());

      return SslOrderRequest(
        ssl: mapValueOfType<int>(json, r'ssl')!,
        hostname: mapValueOfType<String>(json, r'hostname')!,
        approverEmail: mapValueOfType<String>(json, r'approver_email')!,
        frequency: mapValueOfType<int>(json, r'frequency') ?? 12,
        coupon: mapValueOfType<String>(json, r'coupon') ?? '',
        csrType: SslOrderRequestCsrTypeEnum.fromJson(json[r'csr_type']) ?? const SslOrderRequestCsrTypeEnum._('generated'),
        csr: mapValueOfType<String>(json, r'csr') ?? '',
        firstname: mapValueOfType<String>(json, r'firstname'),
        lastname: mapValueOfType<String>(json, r'lastname'),
        email: mapValueOfType<String>(json, r'email'),
        address: mapValueOfType<String>(json, r'address'),
        city: mapValueOfType<String>(json, r'city'),
        state: mapValueOfType<String>(json, r'state'),
        zip: mapValueOfType<String>(json, r'zip'),
        country: mapValueOfType<String>(json, r'country'),
        phone: mapValueOfType<String>(json, r'phone'),
        company: mapValueOfType<String>(json, r'company'),
        department: mapValueOfType<String>(json, r'department') ?? 'Administration',
        agency: mapValueOfType<String>(json, r'agency'),
        businessCategory: mapValueOfType<String>(json, r'business_category'),
      );
    }
    return null;
  }

  static List<SslOrderRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SslOrderRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SslOrderRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SslOrderRequest> mapFromJson(dynamic json) {
    final map = <String, SslOrderRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SslOrderRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SslOrderRequest-objects as value to a dart map
  static Map<String, List<SslOrderRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SslOrderRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SslOrderRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'ssl',
    'hostname',
    'approver_email',
  };
}

/// Whether the CSR is server-generated or customer-provided.
enum SslOrderRequestCsrTypeEnum {
  generated._(r'generated'),
  provided._(r'provided'),
  ;

  /// Instantiate a new enum with the provided value.
  const SslOrderRequestCsrTypeEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [SslOrderRequestCsrTypeEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static SslOrderRequestCsrTypeEnum? fromJson(dynamic value) => SslOrderRequestCsrTypeEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [SslOrderRequestCsrTypeEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<SslOrderRequestCsrTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SslOrderRequestCsrTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SslOrderRequestCsrTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SslOrderRequestCsrTypeEnum] to String,
/// and [decode] dynamic data back to [SslOrderRequestCsrTypeEnum].
class SslOrderRequestCsrTypeEnumTypeTransformer {
  factory SslOrderRequestCsrTypeEnumTypeTransformer() => _instance ??= const SslOrderRequestCsrTypeEnumTypeTransformer._();

  const SslOrderRequestCsrTypeEnumTypeTransformer._();

  String encode(SslOrderRequestCsrTypeEnum data) => data._value;

  /// Returns the instance of [SslOrderRequestCsrTypeEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SslOrderRequestCsrTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data is SslOrderRequestCsrTypeEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'generated': return SslOrderRequestCsrTypeEnum.generated;
        case r'provided': return SslOrderRequestCsrTypeEnum.provided;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static SslOrderRequestCsrTypeEnumTypeTransformer? _instance;
}


