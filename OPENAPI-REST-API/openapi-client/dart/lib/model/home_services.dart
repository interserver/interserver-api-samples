//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class HomeServices {
  /// Returns a new [HomeServices] instance.
  HomeServices({
    this.domains,
    this.webhosting,
    this.vps,
    this.licenses,
    this.servers,
    this.backups,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  HomeServicesDomains? domains;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  HomeServicesWebhosting? webhosting;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  HomeServicesVps? vps;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  HomeServicesLicenses? licenses;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  HomeServicesServers? servers;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  HomeServicesBackups? backups;

  @override
  bool operator ==(Object other) => identical(this, other) || other is HomeServices &&
    other.domains == domains &&
    other.webhosting == webhosting &&
    other.vps == vps &&
    other.licenses == licenses &&
    other.servers == servers &&
    other.backups == backups;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (domains == null ? 0 : domains!.hashCode) +
    (webhosting == null ? 0 : webhosting!.hashCode) +
    (vps == null ? 0 : vps!.hashCode) +
    (licenses == null ? 0 : licenses!.hashCode) +
    (servers == null ? 0 : servers!.hashCode) +
    (backups == null ? 0 : backups!.hashCode);

  @override
  String toString() => 'HomeServices[domains=$domains, webhosting=$webhosting, vps=$vps, licenses=$licenses, servers=$servers, backups=$backups]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.domains != null) {
      json[r'domains'] = this.domains;
    } else {
      json[r'domains'] = null;
    }
    if (this.webhosting != null) {
      json[r'webhosting'] = this.webhosting;
    } else {
      json[r'webhosting'] = null;
    }
    if (this.vps != null) {
      json[r'vps'] = this.vps;
    } else {
      json[r'vps'] = null;
    }
    if (this.licenses != null) {
      json[r'licenses'] = this.licenses;
    } else {
      json[r'licenses'] = null;
    }
    if (this.servers != null) {
      json[r'servers'] = this.servers;
    } else {
      json[r'servers'] = null;
    }
    if (this.backups != null) {
      json[r'backups'] = this.backups;
    } else {
      json[r'backups'] = null;
    }
    return json;
  }

  /// Returns a new [HomeServices] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static HomeServices? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return HomeServices(
        domains: HomeServicesDomains.fromJson(json[r'domains']),
        webhosting: HomeServicesWebhosting.fromJson(json[r'webhosting']),
        vps: HomeServicesVps.fromJson(json[r'vps']),
        licenses: HomeServicesLicenses.fromJson(json[r'licenses']),
        servers: HomeServicesServers.fromJson(json[r'servers']),
        backups: HomeServicesBackups.fromJson(json[r'backups']),
      );
    }
    return null;
  }

  static List<HomeServices> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HomeServices>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HomeServices.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, HomeServices> mapFromJson(dynamic json) {
    final map = <String, HomeServices>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = HomeServices.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of HomeServices-objects as value to a dart map
  static Map<String, List<HomeServices>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<HomeServices>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = HomeServices.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

