//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class DomainWhoisPrivacyRequest {
  /// Returns a new [DomainWhoisPrivacyRequest] instance.
  DomainWhoisPrivacyRequest({
    this.func,
    this.csrfToken,
    this.domainFirstname,
    this.domainLastname,
    this.domainEmail,
    this.domainAddress,
    this.domainAddress2,
    this.domainAddress3,
    this.domainCity,
    this.domainState,
    this.domainZip,
    this.domainCountry,
    this.domainPhone,
    this.domainFax,
    this.domainCompany,
    this.domainExtra,
  });

  /// Action to perform (enable or disableCancel).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? func;

  /// CSRF token if the API requires it for the account.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? csrfToken;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? domainFirstname;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? domainLastname;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? domainEmail;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? domainAddress;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? domainAddress2;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? domainAddress3;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? domainCity;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? domainState;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? domainZip;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? domainCountry;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? domainPhone;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? domainFax;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? domainCompany;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? domainExtra;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DomainWhoisPrivacyRequest &&
    other.func == func &&
    other.csrfToken == csrfToken &&
    other.domainFirstname == domainFirstname &&
    other.domainLastname == domainLastname &&
    other.domainEmail == domainEmail &&
    other.domainAddress == domainAddress &&
    other.domainAddress2 == domainAddress2 &&
    other.domainAddress3 == domainAddress3 &&
    other.domainCity == domainCity &&
    other.domainState == domainState &&
    other.domainZip == domainZip &&
    other.domainCountry == domainCountry &&
    other.domainPhone == domainPhone &&
    other.domainFax == domainFax &&
    other.domainCompany == domainCompany &&
    other.domainExtra == domainExtra;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (func == null ? 0 : func!.hashCode) +
    (csrfToken == null ? 0 : csrfToken!.hashCode) +
    (domainFirstname == null ? 0 : domainFirstname!.hashCode) +
    (domainLastname == null ? 0 : domainLastname!.hashCode) +
    (domainEmail == null ? 0 : domainEmail!.hashCode) +
    (domainAddress == null ? 0 : domainAddress!.hashCode) +
    (domainAddress2 == null ? 0 : domainAddress2!.hashCode) +
    (domainAddress3 == null ? 0 : domainAddress3!.hashCode) +
    (domainCity == null ? 0 : domainCity!.hashCode) +
    (domainState == null ? 0 : domainState!.hashCode) +
    (domainZip == null ? 0 : domainZip!.hashCode) +
    (domainCountry == null ? 0 : domainCountry!.hashCode) +
    (domainPhone == null ? 0 : domainPhone!.hashCode) +
    (domainFax == null ? 0 : domainFax!.hashCode) +
    (domainCompany == null ? 0 : domainCompany!.hashCode) +
    (domainExtra == null ? 0 : domainExtra!.hashCode);

  @override
  String toString() => 'DomainWhoisPrivacyRequest[func=$func, csrfToken=$csrfToken, domainFirstname=$domainFirstname, domainLastname=$domainLastname, domainEmail=$domainEmail, domainAddress=$domainAddress, domainAddress2=$domainAddress2, domainAddress3=$domainAddress3, domainCity=$domainCity, domainState=$domainState, domainZip=$domainZip, domainCountry=$domainCountry, domainPhone=$domainPhone, domainFax=$domainFax, domainCompany=$domainCompany, domainExtra=$domainExtra]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.func != null) {
      json[r'func'] = this.func;
    } else {
      json[r'func'] = null;
    }
    if (this.csrfToken != null) {
      json[r'csrf_token'] = this.csrfToken;
    } else {
      json[r'csrf_token'] = null;
    }
    if (this.domainFirstname != null) {
      json[r'domain_firstname'] = this.domainFirstname;
    } else {
      json[r'domain_firstname'] = null;
    }
    if (this.domainLastname != null) {
      json[r'domain_lastname'] = this.domainLastname;
    } else {
      json[r'domain_lastname'] = null;
    }
    if (this.domainEmail != null) {
      json[r'domain_email'] = this.domainEmail;
    } else {
      json[r'domain_email'] = null;
    }
    if (this.domainAddress != null) {
      json[r'domain_address'] = this.domainAddress;
    } else {
      json[r'domain_address'] = null;
    }
    if (this.domainAddress2 != null) {
      json[r'domain_address2'] = this.domainAddress2;
    } else {
      json[r'domain_address2'] = null;
    }
    if (this.domainAddress3 != null) {
      json[r'domain_address3'] = this.domainAddress3;
    } else {
      json[r'domain_address3'] = null;
    }
    if (this.domainCity != null) {
      json[r'domain_city'] = this.domainCity;
    } else {
      json[r'domain_city'] = null;
    }
    if (this.domainState != null) {
      json[r'domain_state'] = this.domainState;
    } else {
      json[r'domain_state'] = null;
    }
    if (this.domainZip != null) {
      json[r'domain_zip'] = this.domainZip;
    } else {
      json[r'domain_zip'] = null;
    }
    if (this.domainCountry != null) {
      json[r'domain_country'] = this.domainCountry;
    } else {
      json[r'domain_country'] = null;
    }
    if (this.domainPhone != null) {
      json[r'domain_phone'] = this.domainPhone;
    } else {
      json[r'domain_phone'] = null;
    }
    if (this.domainFax != null) {
      json[r'domain_fax'] = this.domainFax;
    } else {
      json[r'domain_fax'] = null;
    }
    if (this.domainCompany != null) {
      json[r'domain_company'] = this.domainCompany;
    } else {
      json[r'domain_company'] = null;
    }
    if (this.domainExtra != null) {
      json[r'domain_extra'] = this.domainExtra;
    } else {
      json[r'domain_extra'] = null;
    }
    return json;
  }

  /// Returns a new [DomainWhoisPrivacyRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DomainWhoisPrivacyRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return DomainWhoisPrivacyRequest(
        func: mapValueOfType<String>(json, r'func'),
        csrfToken: mapValueOfType<String>(json, r'csrf_token'),
        domainFirstname: mapValueOfType<String>(json, r'domain_firstname'),
        domainLastname: mapValueOfType<String>(json, r'domain_lastname'),
        domainEmail: mapValueOfType<String>(json, r'domain_email'),
        domainAddress: mapValueOfType<String>(json, r'domain_address'),
        domainAddress2: mapValueOfType<String>(json, r'domain_address2'),
        domainAddress3: mapValueOfType<String>(json, r'domain_address3'),
        domainCity: mapValueOfType<String>(json, r'domain_city'),
        domainState: mapValueOfType<String>(json, r'domain_state'),
        domainZip: mapValueOfType<String>(json, r'domain_zip'),
        domainCountry: mapValueOfType<String>(json, r'domain_country'),
        domainPhone: mapValueOfType<String>(json, r'domain_phone'),
        domainFax: mapValueOfType<String>(json, r'domain_fax'),
        domainCompany: mapValueOfType<String>(json, r'domain_company'),
        domainExtra: mapValueOfType<String>(json, r'domain_extra'),
      );
    }
    return null;
  }

  static List<DomainWhoisPrivacyRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DomainWhoisPrivacyRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DomainWhoisPrivacyRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DomainWhoisPrivacyRequest> mapFromJson(dynamic json) {
    final map = <String, DomainWhoisPrivacyRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DomainWhoisPrivacyRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DomainWhoisPrivacyRequest-objects as value to a dart map
  static Map<String, List<DomainWhoisPrivacyRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DomainWhoisPrivacyRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DomainWhoisPrivacyRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

