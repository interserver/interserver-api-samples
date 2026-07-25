//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class ServerClientLink {
  /// Returns a new [ServerClientLink] instance.
  ServerClientLink({
    required this.label,
    required this.link,
    this.icon,
    this.iconText,
    this.helpText,
  });

  String label;

  String link;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? icon;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? iconText;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? helpText;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ServerClientLink &&
    other.label == label &&
    other.link == link &&
    other.icon == icon &&
    other.iconText == iconText &&
    other.helpText == helpText;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (label.hashCode) +
    (link.hashCode) +
    (icon == null ? 0 : icon!.hashCode) +
    (iconText == null ? 0 : iconText!.hashCode) +
    (helpText == null ? 0 : helpText!.hashCode);

  @override
  String toString() => 'ServerClientLink[label=$label, link=$link, icon=$icon, iconText=$iconText, helpText=$helpText]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'label'] = this.label;
      json[r'link'] = this.link;
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
    return json;
  }

  /// Returns a new [ServerClientLink] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ServerClientLink? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'label'), 'Required key "ServerClientLink[label]" is missing from JSON.');
        assert(json[r'label'] != null, 'Required key "ServerClientLink[label]" has a null value in JSON.');
        assert(json.containsKey(r'link'), 'Required key "ServerClientLink[link]" is missing from JSON.');
        assert(json[r'link'] != null, 'Required key "ServerClientLink[link]" has a null value in JSON.');
        return true;
      }());

      return ServerClientLink(
        label: mapValueOfType<String>(json, r'label')!,
        link: mapValueOfType<String>(json, r'link')!,
        icon: mapValueOfType<String>(json, r'icon'),
        iconText: mapValueOfType<String>(json, r'icon_text'),
        helpText: mapValueOfType<String>(json, r'help_text'),
      );
    }
    return null;
  }

  static List<ServerClientLink> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ServerClientLink>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ServerClientLink.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ServerClientLink> mapFromJson(dynamic json) {
    final map = <String, ServerClientLink>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ServerClientLink.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ServerClientLink-objects as value to a dart map
  static Map<String, List<ServerClientLink>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ServerClientLink>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ServerClientLink.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'label',
    'link',
  };
}

