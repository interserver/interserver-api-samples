//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class AccountInfoPost {
  /// Returns a new [AccountInfoPost] instance.
  AccountInfoPost({
    required this.name,
    required this.address,
    required this.city,
    required this.state,
    required this.zip,
    required this.country,
    required this.phone,
    this.company,
    this.address2,
    this.locale,
    this.emailInvoices,
    this.emailAbuse,
    this.disableReset,
    this.disableReinstall,
    this.disableServerNotifications,
    this.disableEmailNotifications,
    this.gstin,
  });

  /// Your name.
  String name;

  /// Your address.
  String address;

  /// Your city.
  String city;

  /// Your state.
  String state;

  /// Your ZIP code.
  String zip;

  /// Your country.
  String country;

  /// Your phone number.
  String phone;

  /// Your company name.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? company;

  /// Additional address information.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? address2;

  /// Your preferred locale.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? locale;

  /// Your email for invoice notifications.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? emailInvoices;

  /// Your email for abuse notifications.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? emailAbuse;

  /// Set to `true` to disable account resets, or `false` to enable them.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? disableReset;

  /// Set to `true` to disable server reinstalls, or `false` to enable them.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? disableReinstall;

  /// Set to `true` to disable server notifications, or `false` to enable them.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? disableServerNotifications;

  /// Set to `true` to disable email notifications, or `false` to enable them.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? disableEmailNotifications;

  /// Your GST identification number (if applicable).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? gstin;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AccountInfoPost &&
    other.name == name &&
    other.address == address &&
    other.city == city &&
    other.state == state &&
    other.zip == zip &&
    other.country == country &&
    other.phone == phone &&
    other.company == company &&
    other.address2 == address2 &&
    other.locale == locale &&
    other.emailInvoices == emailInvoices &&
    other.emailAbuse == emailAbuse &&
    other.disableReset == disableReset &&
    other.disableReinstall == disableReinstall &&
    other.disableServerNotifications == disableServerNotifications &&
    other.disableEmailNotifications == disableEmailNotifications &&
    other.gstin == gstin;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name.hashCode) +
    (address.hashCode) +
    (city.hashCode) +
    (state.hashCode) +
    (zip.hashCode) +
    (country.hashCode) +
    (phone.hashCode) +
    (company == null ? 0 : company!.hashCode) +
    (address2 == null ? 0 : address2!.hashCode) +
    (locale == null ? 0 : locale!.hashCode) +
    (emailInvoices == null ? 0 : emailInvoices!.hashCode) +
    (emailAbuse == null ? 0 : emailAbuse!.hashCode) +
    (disableReset == null ? 0 : disableReset!.hashCode) +
    (disableReinstall == null ? 0 : disableReinstall!.hashCode) +
    (disableServerNotifications == null ? 0 : disableServerNotifications!.hashCode) +
    (disableEmailNotifications == null ? 0 : disableEmailNotifications!.hashCode) +
    (gstin == null ? 0 : gstin!.hashCode);

  @override
  String toString() => 'AccountInfoPost[name=$name, address=$address, city=$city, state=$state, zip=$zip, country=$country, phone=$phone, company=$company, address2=$address2, locale=$locale, emailInvoices=$emailInvoices, emailAbuse=$emailAbuse, disableReset=$disableReset, disableReinstall=$disableReinstall, disableServerNotifications=$disableServerNotifications, disableEmailNotifications=$disableEmailNotifications, gstin=$gstin]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'address'] = this.address;
      json[r'city'] = this.city;
      json[r'state'] = this.state;
      json[r'zip'] = this.zip;
      json[r'country'] = this.country;
      json[r'phone'] = this.phone;
    if (this.company != null) {
      json[r'company'] = this.company;
    } else {
      json[r'company'] = null;
    }
    if (this.address2 != null) {
      json[r'address2'] = this.address2;
    } else {
      json[r'address2'] = null;
    }
    if (this.locale != null) {
      json[r'locale'] = this.locale;
    } else {
      json[r'locale'] = null;
    }
    if (this.emailInvoices != null) {
      json[r'email_invoices'] = this.emailInvoices;
    } else {
      json[r'email_invoices'] = null;
    }
    if (this.emailAbuse != null) {
      json[r'email_abuse'] = this.emailAbuse;
    } else {
      json[r'email_abuse'] = null;
    }
    if (this.disableReset != null) {
      json[r'disable_reset'] = this.disableReset;
    } else {
      json[r'disable_reset'] = null;
    }
    if (this.disableReinstall != null) {
      json[r'disable_reinstall'] = this.disableReinstall;
    } else {
      json[r'disable_reinstall'] = null;
    }
    if (this.disableServerNotifications != null) {
      json[r'disable_server_notifications'] = this.disableServerNotifications;
    } else {
      json[r'disable_server_notifications'] = null;
    }
    if (this.disableEmailNotifications != null) {
      json[r'disable_email_notifications'] = this.disableEmailNotifications;
    } else {
      json[r'disable_email_notifications'] = null;
    }
    if (this.gstin != null) {
      json[r'gstin'] = this.gstin;
    } else {
      json[r'gstin'] = null;
    }
    return json;
  }

  /// Returns a new [AccountInfoPost] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AccountInfoPost? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'name'), 'Required key "AccountInfoPost[name]" is missing from JSON.');
        assert(json[r'name'] != null, 'Required key "AccountInfoPost[name]" has a null value in JSON.');
        assert(json.containsKey(r'address'), 'Required key "AccountInfoPost[address]" is missing from JSON.');
        assert(json[r'address'] != null, 'Required key "AccountInfoPost[address]" has a null value in JSON.');
        assert(json.containsKey(r'city'), 'Required key "AccountInfoPost[city]" is missing from JSON.');
        assert(json[r'city'] != null, 'Required key "AccountInfoPost[city]" has a null value in JSON.');
        assert(json.containsKey(r'state'), 'Required key "AccountInfoPost[state]" is missing from JSON.');
        assert(json[r'state'] != null, 'Required key "AccountInfoPost[state]" has a null value in JSON.');
        assert(json.containsKey(r'zip'), 'Required key "AccountInfoPost[zip]" is missing from JSON.');
        assert(json[r'zip'] != null, 'Required key "AccountInfoPost[zip]" has a null value in JSON.');
        assert(json.containsKey(r'country'), 'Required key "AccountInfoPost[country]" is missing from JSON.');
        assert(json[r'country'] != null, 'Required key "AccountInfoPost[country]" has a null value in JSON.');
        assert(json.containsKey(r'phone'), 'Required key "AccountInfoPost[phone]" is missing from JSON.');
        assert(json[r'phone'] != null, 'Required key "AccountInfoPost[phone]" has a null value in JSON.');
        return true;
      }());

      return AccountInfoPost(
        name: mapValueOfType<String>(json, r'name')!,
        address: mapValueOfType<String>(json, r'address')!,
        city: mapValueOfType<String>(json, r'city')!,
        state: mapValueOfType<String>(json, r'state')!,
        zip: mapValueOfType<String>(json, r'zip')!,
        country: mapValueOfType<String>(json, r'country')!,
        phone: mapValueOfType<String>(json, r'phone')!,
        company: mapValueOfType<String>(json, r'company'),
        address2: mapValueOfType<String>(json, r'address2'),
        locale: mapValueOfType<String>(json, r'locale'),
        emailInvoices: mapValueOfType<String>(json, r'email_invoices'),
        emailAbuse: mapValueOfType<String>(json, r'email_abuse'),
        disableReset: mapValueOfType<bool>(json, r'disable_reset'),
        disableReinstall: mapValueOfType<bool>(json, r'disable_reinstall'),
        disableServerNotifications: mapValueOfType<bool>(json, r'disable_server_notifications'),
        disableEmailNotifications: mapValueOfType<bool>(json, r'disable_email_notifications'),
        gstin: mapValueOfType<String>(json, r'gstin'),
      );
    }
    return null;
  }

  static List<AccountInfoPost> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AccountInfoPost>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AccountInfoPost.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AccountInfoPost> mapFromJson(dynamic json) {
    final map = <String, AccountInfoPost>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AccountInfoPost.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AccountInfoPost-objects as value to a dart map
  static Map<String, List<AccountInfoPost>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AccountInfoPost>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AccountInfoPost.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
    'address',
    'city',
    'state',
    'zip',
    'country',
    'phone',
  };
}

