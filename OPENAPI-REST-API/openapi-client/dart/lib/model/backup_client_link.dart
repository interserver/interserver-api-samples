//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class BackupClientLink {
  /// Returns a new [BackupClientLink] instance.
  BackupClientLink({
    this.label,
    this.link,
    this.icon,
    this.iconText,
    this.helpText,
    this.otherAttr,
  });

  /// Label of the client link.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? label;

  /// Link URL of the client link.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? link;

  /// Icon of the client link.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? icon;

  /// Icon text of the client link.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? iconText;

  /// Help text of the client link.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? helpText;

  /// Other attributes of the client link.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? otherAttr;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BackupClientLink &&
    other.label == label &&
    other.link == link &&
    other.icon == icon &&
    other.iconText == iconText &&
    other.helpText == helpText &&
    other.otherAttr == otherAttr;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (label == null ? 0 : label!.hashCode) +
    (link == null ? 0 : link!.hashCode) +
    (icon == null ? 0 : icon!.hashCode) +
    (iconText == null ? 0 : iconText!.hashCode) +
    (helpText == null ? 0 : helpText!.hashCode) +
    (otherAttr == null ? 0 : otherAttr!.hashCode);

  @override
  String toString() => 'BackupClientLink[label=$label, link=$link, icon=$icon, iconText=$iconText, helpText=$helpText, otherAttr=$otherAttr]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.label != null) {
      json[r'label'] = this.label;
    } else {
      json[r'label'] = null;
    }
    if (this.link != null) {
      json[r'link'] = this.link;
    } else {
      json[r'link'] = null;
    }
    if (this.icon != null) {
      json[r'icon'] = this.icon;
    } else {
      json[r'icon'] = null;
    }
    if (this.iconText != null) {
      json[r'icon_text'] = this.iconText;
    } else {
      json[r'icon_text'] = null;
    }
    if (this.helpText != null) {
      json[r'help_text'] = this.helpText;
    } else {
      json[r'help_text'] = null;
    }
    if (this.otherAttr != null) {
      json[r'other_attr'] = this.otherAttr;
    } else {
      json[r'other_attr'] = null;
    }
    return json;
  }

  /// Returns a new [BackupClientLink] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BackupClientLink? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return BackupClientLink(
        label: mapValueOfType<String>(json, r'label'),
        link: mapValueOfType<String>(json, r'link'),
        icon: mapValueOfType<String>(json, r'icon'),
        iconText: mapValueOfType<String>(json, r'icon_text'),
        helpText: mapValueOfType<String>(json, r'help_text'),
        otherAttr: mapValueOfType<String>(json, r'other_attr'),
      );
    }
    return null;
  }

  static List<BackupClientLink> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BackupClientLink>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BackupClientLink.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BackupClientLink> mapFromJson(dynamic json) {
    final map = <String, BackupClientLink>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BackupClientLink.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BackupClientLink-objects as value to a dart map
  static Map<String, List<BackupClientLink>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BackupClientLink>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BackupClientLink.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

