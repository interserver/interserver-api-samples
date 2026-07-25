//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class LicenseClientLink {
  /// Returns a new [LicenseClientLink] instance.
  LicenseClientLink({
    required this.label,
    required this.link,
    required this.icon,
    required this.helpText,
    this.iconText,
    this.otherAttr,
  });

  /// Link label
  String label;

  /// Link URL
  String link;

  /// Link icon
  String icon;

  /// Help text
  String helpText;

  /// Icon text
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? iconText;

  /// Other attributes
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? otherAttr;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LicenseClientLink &&
    other.label == label &&
    other.link == link &&
    other.icon == icon &&
    other.helpText == helpText &&
    other.iconText == iconText &&
    other.otherAttr == otherAttr;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (label.hashCode) +
    (link.hashCode) +
    (icon.hashCode) +
    (helpText.hashCode) +
    (iconText == null ? 0 : iconText!.hashCode) +
    (otherAttr == null ? 0 : otherAttr!.hashCode);

  @override
  String toString() => 'LicenseClientLink[label=$label, link=$link, icon=$icon, helpText=$helpText, iconText=$iconText, otherAttr=$otherAttr]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'label'] = this.label;
      json[r'link'] = this.link;
      json[r'icon'] = this.icon;
      json[r'help_text'] = this.helpText;
    if (this.iconText != null) {
      json[r'icon_text'] = this.iconText;
    } else {
      json[r'icon_text'] = null;
    }
    if (this.otherAttr != null) {
      json[r'other_attr'] = this.otherAttr;
    } else {
      json[r'other_attr'] = null;
    }
    return json;
  }

  /// Returns a new [LicenseClientLink] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LicenseClientLink? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'label'), 'Required key "LicenseClientLink[label]" is missing from JSON.');
        assert(json[r'label'] != null, 'Required key "LicenseClientLink[label]" has a null value in JSON.');
        assert(json.containsKey(r'link'), 'Required key "LicenseClientLink[link]" is missing from JSON.');
        assert(json[r'link'] != null, 'Required key "LicenseClientLink[link]" has a null value in JSON.');
        assert(json.containsKey(r'icon'), 'Required key "LicenseClientLink[icon]" is missing from JSON.');
        assert(json[r'icon'] != null, 'Required key "LicenseClientLink[icon]" has a null value in JSON.');
        assert(json.containsKey(r'help_text'), 'Required key "LicenseClientLink[help_text]" is missing from JSON.');
        assert(json[r'help_text'] != null, 'Required key "LicenseClientLink[help_text]" has a null value in JSON.');
        return true;
      }());

      return LicenseClientLink(
        label: mapValueOfType<String>(json, r'label')!,
        link: mapValueOfType<String>(json, r'link')!,
        icon: mapValueOfType<String>(json, r'icon')!,
        helpText: mapValueOfType<String>(json, r'help_text')!,
        iconText: mapValueOfType<String>(json, r'icon_text'),
        otherAttr: mapValueOfType<String>(json, r'other_attr'),
      );
    }
    return null;
  }

  static List<LicenseClientLink> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LicenseClientLink>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LicenseClientLink.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LicenseClientLink> mapFromJson(dynamic json) {
    final map = <String, LicenseClientLink>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LicenseClientLink.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LicenseClientLink-objects as value to a dart map
  static Map<String, List<LicenseClientLink>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LicenseClientLink>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LicenseClientLink.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'label',
    'link',
    'icon',
    'help_text',
  };
}

