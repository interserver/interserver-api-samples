//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class WebsiteServiceMaster {
  /// Returns a new [WebsiteServiceMaster] instance.
  WebsiteServiceMaster({
    this.websiteId,
    this.websiteName,
    this.websiteIp,
    this.websiteType,
    this.websiteAvailable,
    this.websiteHdsize,
    this.websiteHdfree,
    this.websiteLoad,
    this.websiteLastUpdate,
    this.websiteMaxSites,
    this.websiteOrder,
    this.websitePartitions,
    this.websiteDns1,
    this.websiteDns2,
  });

  /// Website ID for the service master
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? websiteId;

  /// Website name for the service master
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? websiteName;

  /// IP address for the service master
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? websiteIp;

  /// Website type for the service master
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? websiteType;

  /// Availability status for the service master
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? websiteAvailable;

  /// Hard drive size for the service master
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? websiteHdsize;

  /// Free hard drive space for the service master
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? websiteHdfree;

  /// Load for the service master
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? websiteLoad;

  /// Last update date for the service master
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? websiteLastUpdate;

  /// Maximum number of sites for the service master
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? websiteMaxSites;

  /// Order number for the service master
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? websiteOrder;

  /// Partitions for the service master
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? websitePartitions;

  /// DNS server 1 for the service master
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? websiteDns1;

  /// DNS server 2 for the service master
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? websiteDns2;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WebsiteServiceMaster &&
    other.websiteId == websiteId &&
    other.websiteName == websiteName &&
    other.websiteIp == websiteIp &&
    other.websiteType == websiteType &&
    other.websiteAvailable == websiteAvailable &&
    other.websiteHdsize == websiteHdsize &&
    other.websiteHdfree == websiteHdfree &&
    other.websiteLoad == websiteLoad &&
    other.websiteLastUpdate == websiteLastUpdate &&
    other.websiteMaxSites == websiteMaxSites &&
    other.websiteOrder == websiteOrder &&
    other.websitePartitions == websitePartitions &&
    other.websiteDns1 == websiteDns1 &&
    other.websiteDns2 == websiteDns2;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (websiteId == null ? 0 : websiteId!.hashCode) +
    (websiteName == null ? 0 : websiteName!.hashCode) +
    (websiteIp == null ? 0 : websiteIp!.hashCode) +
    (websiteType == null ? 0 : websiteType!.hashCode) +
    (websiteAvailable == null ? 0 : websiteAvailable!.hashCode) +
    (websiteHdsize == null ? 0 : websiteHdsize!.hashCode) +
    (websiteHdfree == null ? 0 : websiteHdfree!.hashCode) +
    (websiteLoad == null ? 0 : websiteLoad!.hashCode) +
    (websiteLastUpdate == null ? 0 : websiteLastUpdate!.hashCode) +
    (websiteMaxSites == null ? 0 : websiteMaxSites!.hashCode) +
    (websiteOrder == null ? 0 : websiteOrder!.hashCode) +
    (websitePartitions == null ? 0 : websitePartitions!.hashCode) +
    (websiteDns1 == null ? 0 : websiteDns1!.hashCode) +
    (websiteDns2 == null ? 0 : websiteDns2!.hashCode);

  @override
  String toString() => 'WebsiteServiceMaster[websiteId=$websiteId, websiteName=$websiteName, websiteIp=$websiteIp, websiteType=$websiteType, websiteAvailable=$websiteAvailable, websiteHdsize=$websiteHdsize, websiteHdfree=$websiteHdfree, websiteLoad=$websiteLoad, websiteLastUpdate=$websiteLastUpdate, websiteMaxSites=$websiteMaxSites, websiteOrder=$websiteOrder, websitePartitions=$websitePartitions, websiteDns1=$websiteDns1, websiteDns2=$websiteDns2]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.websiteId != null) {
      json[r'website_id'] = this.websiteId;
    } else {
      json[r'website_id'] = null;
    }
    if (this.websiteName != null) {
      json[r'website_name'] = this.websiteName;
    } else {
      json[r'website_name'] = null;
    }
    if (this.websiteIp != null) {
      json[r'website_ip'] = this.websiteIp;
    } else {
      json[r'website_ip'] = null;
    }
    if (this.websiteType != null) {
      json[r'website_type'] = this.websiteType;
    } else {
      json[r'website_type'] = null;
    }
    if (this.websiteAvailable != null) {
      json[r'website_available'] = this.websiteAvailable;
    } else {
      json[r'website_available'] = null;
    }
    if (this.websiteHdsize != null) {
      json[r'website_hdsize'] = this.websiteHdsize;
    } else {
      json[r'website_hdsize'] = null;
    }
    if (this.websiteHdfree != null) {
      json[r'website_hdfree'] = this.websiteHdfree;
    } else {
      json[r'website_hdfree'] = null;
    }
    if (this.websiteLoad != null) {
      json[r'website_load'] = this.websiteLoad;
    } else {
      json[r'website_load'] = null;
    }
    if (this.websiteLastUpdate != null) {
      json[r'website_last_update'] = this.websiteLastUpdate;
    } else {
      json[r'website_last_update'] = null;
    }
    if (this.websiteMaxSites != null) {
      json[r'website_max_sites'] = this.websiteMaxSites;
    } else {
      json[r'website_max_sites'] = null;
    }
    if (this.websiteOrder != null) {
      json[r'website_order'] = this.websiteOrder;
    } else {
      json[r'website_order'] = null;
    }
    if (this.websitePartitions != null) {
      json[r'website_partitions'] = this.websitePartitions;
    } else {
      json[r'website_partitions'] = null;
    }
    if (this.websiteDns1 != null) {
      json[r'website_dns1'] = this.websiteDns1;
    } else {
      json[r'website_dns1'] = null;
    }
    if (this.websiteDns2 != null) {
      json[r'website_dns2'] = this.websiteDns2;
    } else {
      json[r'website_dns2'] = null;
    }
    return json;
  }

  /// Returns a new [WebsiteServiceMaster] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WebsiteServiceMaster? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return WebsiteServiceMaster(
        websiteId: mapValueOfType<String>(json, r'website_id'),
        websiteName: mapValueOfType<String>(json, r'website_name'),
        websiteIp: mapValueOfType<String>(json, r'website_ip'),
        websiteType: mapValueOfType<String>(json, r'website_type'),
        websiteAvailable: mapValueOfType<String>(json, r'website_available'),
        websiteHdsize: mapValueOfType<String>(json, r'website_hdsize'),
        websiteHdfree: mapValueOfType<String>(json, r'website_hdfree'),
        websiteLoad: mapValueOfType<String>(json, r'website_load'),
        websiteLastUpdate: mapValueOfType<String>(json, r'website_last_update'),
        websiteMaxSites: mapValueOfType<String>(json, r'website_max_sites'),
        websiteOrder: mapValueOfType<String>(json, r'website_order'),
        websitePartitions: mapValueOfType<String>(json, r'website_partitions'),
        websiteDns1: mapValueOfType<String>(json, r'website_dns1'),
        websiteDns2: mapValueOfType<String>(json, r'website_dns2'),
      );
    }
    return null;
  }

  static List<WebsiteServiceMaster> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WebsiteServiceMaster>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebsiteServiceMaster.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WebsiteServiceMaster> mapFromJson(dynamic json) {
    final map = <String, WebsiteServiceMaster>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WebsiteServiceMaster.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WebsiteServiceMaster-objects as value to a dart map
  static Map<String, List<WebsiteServiceMaster>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WebsiteServiceMaster>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WebsiteServiceMaster.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

