//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class WebsitesOrderPackagesInfo {
  /// Returns a new [WebsitesOrderPackagesInfo] instance.
  WebsitesOrderPackagesInfo({
    required this.servicesId,
    required this.servicesName,
    required this.servicesCost,
    required this.servicesCategory,
    required this.servicesBuyable,
    required this.servicesType,
    required this.servicesModule,
    required this.servicesDescription,
    this.servicesField1,
    this.servicesField2,
    this.servicesHtml,
    this.servicesMoreinfoUrl,
    this.servicesHidden,
  });

  /// The ID of the package.
  String servicesId;

  /// The name of the package.
  String servicesName;

  /// The cost of the package.
  String servicesCost;

  /// The category of the package.
  String servicesCategory;

  /// Indicates if the package is buyable (1 for yes, 0 for no).
  String servicesBuyable;

  /// The type of the package.
  String servicesType;

  /// The module of the package.
  String servicesModule;

  /// Description of the package.
  String servicesDescription;

  /// Additional field 1 for the package.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? servicesField1;

  /// Additional field 2 for the package.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? servicesField2;

  /// HTML content for the package.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? servicesHtml;

  /// URL for more information about the package.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? servicesMoreinfoUrl;

  /// Indicates if the package is hidden (1 for yes, 0 for no).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? servicesHidden;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WebsitesOrderPackagesInfo &&
    other.servicesId == servicesId &&
    other.servicesName == servicesName &&
    other.servicesCost == servicesCost &&
    other.servicesCategory == servicesCategory &&
    other.servicesBuyable == servicesBuyable &&
    other.servicesType == servicesType &&
    other.servicesModule == servicesModule &&
    other.servicesDescription == servicesDescription &&
    other.servicesField1 == servicesField1 &&
    other.servicesField2 == servicesField2 &&
    other.servicesHtml == servicesHtml &&
    other.servicesMoreinfoUrl == servicesMoreinfoUrl &&
    other.servicesHidden == servicesHidden;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (servicesId.hashCode) +
    (servicesName.hashCode) +
    (servicesCost.hashCode) +
    (servicesCategory.hashCode) +
    (servicesBuyable.hashCode) +
    (servicesType.hashCode) +
    (servicesModule.hashCode) +
    (servicesDescription.hashCode) +
    (servicesField1 == null ? 0 : servicesField1!.hashCode) +
    (servicesField2 == null ? 0 : servicesField2!.hashCode) +
    (servicesHtml == null ? 0 : servicesHtml!.hashCode) +
    (servicesMoreinfoUrl == null ? 0 : servicesMoreinfoUrl!.hashCode) +
    (servicesHidden == null ? 0 : servicesHidden!.hashCode);

  @override
  String toString() => 'WebsitesOrderPackagesInfo[servicesId=$servicesId, servicesName=$servicesName, servicesCost=$servicesCost, servicesCategory=$servicesCategory, servicesBuyable=$servicesBuyable, servicesType=$servicesType, servicesModule=$servicesModule, servicesDescription=$servicesDescription, servicesField1=$servicesField1, servicesField2=$servicesField2, servicesHtml=$servicesHtml, servicesMoreinfoUrl=$servicesMoreinfoUrl, servicesHidden=$servicesHidden]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'services_id'] = this.servicesId;
      json[r'services_name'] = this.servicesName;
      json[r'services_cost'] = this.servicesCost;
      json[r'services_category'] = this.servicesCategory;
      json[r'services_buyable'] = this.servicesBuyable;
      json[r'services_type'] = this.servicesType;
      json[r'services_module'] = this.servicesModule;
      json[r'services_description'] = this.servicesDescription;
    if (this.servicesField1 != null) {
      json[r'services_field1'] = this.servicesField1;
    } else {
      json[r'services_field1'] = null;
    }
    if (this.servicesField2 != null) {
      json[r'services_field2'] = this.servicesField2;
    } else {
      json[r'services_field2'] = null;
    }
    if (this.servicesHtml != null) {
      json[r'services_html'] = this.servicesHtml;
    } else {
      json[r'services_html'] = null;
    }
    if (this.servicesMoreinfoUrl != null) {
      json[r'services_moreinfo_url'] = this.servicesMoreinfoUrl;
    } else {
      json[r'services_moreinfo_url'] = null;
    }
    if (this.servicesHidden != null) {
      json[r'services_hidden'] = this.servicesHidden;
    } else {
      json[r'services_hidden'] = null;
    }
    return json;
  }

  /// Returns a new [WebsitesOrderPackagesInfo] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WebsitesOrderPackagesInfo? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'services_id'), 'Required key "WebsitesOrderPackagesInfo[services_id]" is missing from JSON.');
        assert(json[r'services_id'] != null, 'Required key "WebsitesOrderPackagesInfo[services_id]" has a null value in JSON.');
        assert(json.containsKey(r'services_name'), 'Required key "WebsitesOrderPackagesInfo[services_name]" is missing from JSON.');
        assert(json[r'services_name'] != null, 'Required key "WebsitesOrderPackagesInfo[services_name]" has a null value in JSON.');
        assert(json.containsKey(r'services_cost'), 'Required key "WebsitesOrderPackagesInfo[services_cost]" is missing from JSON.');
        assert(json[r'services_cost'] != null, 'Required key "WebsitesOrderPackagesInfo[services_cost]" has a null value in JSON.');
        assert(json.containsKey(r'services_category'), 'Required key "WebsitesOrderPackagesInfo[services_category]" is missing from JSON.');
        assert(json[r'services_category'] != null, 'Required key "WebsitesOrderPackagesInfo[services_category]" has a null value in JSON.');
        assert(json.containsKey(r'services_buyable'), 'Required key "WebsitesOrderPackagesInfo[services_buyable]" is missing from JSON.');
        assert(json[r'services_buyable'] != null, 'Required key "WebsitesOrderPackagesInfo[services_buyable]" has a null value in JSON.');
        assert(json.containsKey(r'services_type'), 'Required key "WebsitesOrderPackagesInfo[services_type]" is missing from JSON.');
        assert(json[r'services_type'] != null, 'Required key "WebsitesOrderPackagesInfo[services_type]" has a null value in JSON.');
        assert(json.containsKey(r'services_module'), 'Required key "WebsitesOrderPackagesInfo[services_module]" is missing from JSON.');
        assert(json[r'services_module'] != null, 'Required key "WebsitesOrderPackagesInfo[services_module]" has a null value in JSON.');
        assert(json.containsKey(r'services_description'), 'Required key "WebsitesOrderPackagesInfo[services_description]" is missing from JSON.');
        assert(json[r'services_description'] != null, 'Required key "WebsitesOrderPackagesInfo[services_description]" has a null value in JSON.');
        return true;
      }());

      return WebsitesOrderPackagesInfo(
        servicesId: mapValueOfType<String>(json, r'services_id')!,
        servicesName: mapValueOfType<String>(json, r'services_name')!,
        servicesCost: mapValueOfType<String>(json, r'services_cost')!,
        servicesCategory: mapValueOfType<String>(json, r'services_category')!,
        servicesBuyable: mapValueOfType<String>(json, r'services_buyable')!,
        servicesType: mapValueOfType<String>(json, r'services_type')!,
        servicesModule: mapValueOfType<String>(json, r'services_module')!,
        servicesDescription: mapValueOfType<String>(json, r'services_description')!,
        servicesField1: mapValueOfType<String>(json, r'services_field1'),
        servicesField2: mapValueOfType<String>(json, r'services_field2'),
        servicesHtml: mapValueOfType<String>(json, r'services_html'),
        servicesMoreinfoUrl: mapValueOfType<String>(json, r'services_moreinfo_url'),
        servicesHidden: mapValueOfType<String>(json, r'services_hidden'),
      );
    }
    return null;
  }

  static List<WebsitesOrderPackagesInfo> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WebsitesOrderPackagesInfo>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebsitesOrderPackagesInfo.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WebsitesOrderPackagesInfo> mapFromJson(dynamic json) {
    final map = <String, WebsitesOrderPackagesInfo>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WebsitesOrderPackagesInfo.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WebsitesOrderPackagesInfo-objects as value to a dart map
  static Map<String, List<WebsitesOrderPackagesInfo>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WebsitesOrderPackagesInfo>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WebsitesOrderPackagesInfo.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'services_id',
    'services_name',
    'services_cost',
    'services_category',
    'services_buyable',
    'services_type',
    'services_module',
    'services_description',
  };
}

