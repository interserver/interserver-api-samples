//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class PostWebsiteMigrationRequest {
  /// Returns a new [PostWebsiteMigrationRequest] instance.
  PostWebsiteMigrationRequest({
    this.custPortal,
    this.regEmail,
    this.password,
    this.ctrlPanel,
    this.ftpUsername,
    this.ftpPassword,
    this.siteBusyMig,
    this.splReqMig,
    this.domainReg,
    this.dataMig,
    this.domainRegPortal,
    this.domainRegEmail,
    this.domainRegPassword,
  });

  /// URL of the customer's current hosting portal.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? custPortal;

  /// Registered email address at the current host.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? regEmail;

  /// Password for the current hosting account.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? password;

  /// URL of the current control panel.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ctrlPanel;

  /// FTP username at the current host.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ftpUsername;

  /// FTP password at the current host.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ftpPassword;

  /// Information about site traffic during migration.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? siteBusyMig;

  /// Special requirements for the migration.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? splReqMig;

  /// Whether domain registration assistance is needed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? domainReg;

  /// Data migration timing preference.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dataMig;

  /// Domain registrar portal URL.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? domainRegPortal;

  /// Email for the domain registrar account.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? domainRegEmail;

  /// Password for the domain registrar account.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? domainRegPassword;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PostWebsiteMigrationRequest &&
    other.custPortal == custPortal &&
    other.regEmail == regEmail &&
    other.password == password &&
    other.ctrlPanel == ctrlPanel &&
    other.ftpUsername == ftpUsername &&
    other.ftpPassword == ftpPassword &&
    other.siteBusyMig == siteBusyMig &&
    other.splReqMig == splReqMig &&
    other.domainReg == domainReg &&
    other.dataMig == dataMig &&
    other.domainRegPortal == domainRegPortal &&
    other.domainRegEmail == domainRegEmail &&
    other.domainRegPassword == domainRegPassword;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (custPortal == null ? 0 : custPortal!.hashCode) +
    (regEmail == null ? 0 : regEmail!.hashCode) +
    (password == null ? 0 : password!.hashCode) +
    (ctrlPanel == null ? 0 : ctrlPanel!.hashCode) +
    (ftpUsername == null ? 0 : ftpUsername!.hashCode) +
    (ftpPassword == null ? 0 : ftpPassword!.hashCode) +
    (siteBusyMig == null ? 0 : siteBusyMig!.hashCode) +
    (splReqMig == null ? 0 : splReqMig!.hashCode) +
    (domainReg == null ? 0 : domainReg!.hashCode) +
    (dataMig == null ? 0 : dataMig!.hashCode) +
    (domainRegPortal == null ? 0 : domainRegPortal!.hashCode) +
    (domainRegEmail == null ? 0 : domainRegEmail!.hashCode) +
    (domainRegPassword == null ? 0 : domainRegPassword!.hashCode);

  @override
  String toString() => 'PostWebsiteMigrationRequest[custPortal=$custPortal, regEmail=$regEmail, password=$password, ctrlPanel=$ctrlPanel, ftpUsername=$ftpUsername, ftpPassword=$ftpPassword, siteBusyMig=$siteBusyMig, splReqMig=$splReqMig, domainReg=$domainReg, dataMig=$dataMig, domainRegPortal=$domainRegPortal, domainRegEmail=$domainRegEmail, domainRegPassword=$domainRegPassword]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.custPortal != null) {
      json[r'custPortal'] = this.custPortal;
    } else {
      json[r'custPortal'] = null;
    }
    if (this.regEmail != null) {
      json[r'regEmail'] = this.regEmail;
    } else {
      json[r'regEmail'] = null;
    }
    if (this.password != null) {
      json[r'password'] = this.password;
    } else {
      json[r'password'] = null;
    }
    if (this.ctrlPanel != null) {
      json[r'ctrlPanel'] = this.ctrlPanel;
    } else {
      json[r'ctrlPanel'] = null;
    }
    if (this.ftpUsername != null) {
      json[r'ftpUsername'] = this.ftpUsername;
    } else {
      json[r'ftpUsername'] = null;
    }
    if (this.ftpPassword != null) {
      json[r'ftpPassword'] = this.ftpPassword;
    } else {
      json[r'ftpPassword'] = null;
    }
    if (this.siteBusyMig != null) {
      json[r'siteBusyMig'] = this.siteBusyMig;
    } else {
      json[r'siteBusyMig'] = null;
    }
    if (this.splReqMig != null) {
      json[r'splReqMig'] = this.splReqMig;
    } else {
      json[r'splReqMig'] = null;
    }
    if (this.domainReg != null) {
      json[r'domainReg'] = this.domainReg;
    } else {
      json[r'domainReg'] = null;
    }
    if (this.dataMig != null) {
      json[r'dataMig'] = this.dataMig;
    } else {
      json[r'dataMig'] = null;
    }
    if (this.domainRegPortal != null) {
      json[r'domainRegPortal'] = this.domainRegPortal;
    } else {
      json[r'domainRegPortal'] = null;
    }
    if (this.domainRegEmail != null) {
      json[r'domainRegEmail'] = this.domainRegEmail;
    } else {
      json[r'domainRegEmail'] = null;
    }
    if (this.domainRegPassword != null) {
      json[r'domainRegPassword'] = this.domainRegPassword;
    } else {
      json[r'domainRegPassword'] = null;
    }
    return json;
  }

  /// Returns a new [PostWebsiteMigrationRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PostWebsiteMigrationRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return PostWebsiteMigrationRequest(
        custPortal: mapValueOfType<String>(json, r'custPortal'),
        regEmail: mapValueOfType<String>(json, r'regEmail'),
        password: mapValueOfType<String>(json, r'password'),
        ctrlPanel: mapValueOfType<String>(json, r'ctrlPanel'),
        ftpUsername: mapValueOfType<String>(json, r'ftpUsername'),
        ftpPassword: mapValueOfType<String>(json, r'ftpPassword'),
        siteBusyMig: mapValueOfType<String>(json, r'siteBusyMig'),
        splReqMig: mapValueOfType<String>(json, r'splReqMig'),
        domainReg: mapValueOfType<String>(json, r'domainReg'),
        dataMig: mapValueOfType<String>(json, r'dataMig'),
        domainRegPortal: mapValueOfType<String>(json, r'domainRegPortal'),
        domainRegEmail: mapValueOfType<String>(json, r'domainRegEmail'),
        domainRegPassword: mapValueOfType<String>(json, r'domainRegPassword'),
      );
    }
    return null;
  }

  static List<PostWebsiteMigrationRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PostWebsiteMigrationRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PostWebsiteMigrationRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PostWebsiteMigrationRequest> mapFromJson(dynamic json) {
    final map = <String, PostWebsiteMigrationRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PostWebsiteMigrationRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PostWebsiteMigrationRequest-objects as value to a dart map
  static Map<String, List<PostWebsiteMigrationRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PostWebsiteMigrationRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PostWebsiteMigrationRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

