//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class VpsTemplateRow {
  /// Returns a new [VpsTemplateRow] instance.
  VpsTemplateRow({
    this.templateId,
    this.templateType,
    this.templateOs,
    this.templateVersion,
    this.templateBits,
    this.templateFile,
    this.templateAvailable,
    this.templateName,
    this.templateDir,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? templateId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? templateType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? templateOs;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? templateVersion;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? templateBits;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? templateFile;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? templateAvailable;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? templateName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? templateDir;

  @override
  bool operator ==(Object other) => identical(this, other) || other is VpsTemplateRow &&
    other.templateId == templateId &&
    other.templateType == templateType &&
    other.templateOs == templateOs &&
    other.templateVersion == templateVersion &&
    other.templateBits == templateBits &&
    other.templateFile == templateFile &&
    other.templateAvailable == templateAvailable &&
    other.templateName == templateName &&
    other.templateDir == templateDir;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (templateId == null ? 0 : templateId!.hashCode) +
    (templateType == null ? 0 : templateType!.hashCode) +
    (templateOs == null ? 0 : templateOs!.hashCode) +
    (templateVersion == null ? 0 : templateVersion!.hashCode) +
    (templateBits == null ? 0 : templateBits!.hashCode) +
    (templateFile == null ? 0 : templateFile!.hashCode) +
    (templateAvailable == null ? 0 : templateAvailable!.hashCode) +
    (templateName == null ? 0 : templateName!.hashCode) +
    (templateDir == null ? 0 : templateDir!.hashCode);

  @override
  String toString() => 'VpsTemplateRow[templateId=$templateId, templateType=$templateType, templateOs=$templateOs, templateVersion=$templateVersion, templateBits=$templateBits, templateFile=$templateFile, templateAvailable=$templateAvailable, templateName=$templateName, templateDir=$templateDir]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.templateId != null) {
      json[r'template_id'] = this.templateId;
    } else {
      json[r'template_id'] = null;
    }
    if (this.templateType != null) {
      json[r'template_type'] = this.templateType;
    } else {
      json[r'template_type'] = null;
    }
    if (this.templateOs != null) {
      json[r'template_os'] = this.templateOs;
    } else {
      json[r'template_os'] = null;
    }
    if (this.templateVersion != null) {
      json[r'template_version'] = this.templateVersion;
    } else {
      json[r'template_version'] = null;
    }
    if (this.templateBits != null) {
      json[r'template_bits'] = this.templateBits;
    } else {
      json[r'template_bits'] = null;
    }
    if (this.templateFile != null) {
      json[r'template_file'] = this.templateFile;
    } else {
      json[r'template_file'] = null;
    }
    if (this.templateAvailable != null) {
      json[r'template_available'] = this.templateAvailable;
    } else {
      json[r'template_available'] = null;
    }
    if (this.templateName != null) {
      json[r'template_name'] = this.templateName;
    } else {
      json[r'template_name'] = null;
    }
    if (this.templateDir != null) {
      json[r'template_dir'] = this.templateDir;
    } else {
      json[r'template_dir'] = null;
    }
    return json;
  }

  /// Returns a new [VpsTemplateRow] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static VpsTemplateRow? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return VpsTemplateRow(
        templateId: mapValueOfType<String>(json, r'template_id'),
        templateType: mapValueOfType<String>(json, r'template_type'),
        templateOs: mapValueOfType<String>(json, r'template_os'),
        templateVersion: mapValueOfType<String>(json, r'template_version'),
        templateBits: mapValueOfType<String>(json, r'template_bits'),
        templateFile: mapValueOfType<String>(json, r'template_file'),
        templateAvailable: mapValueOfType<String>(json, r'template_available'),
        templateName: mapValueOfType<String>(json, r'template_name'),
        templateDir: mapValueOfType<String>(json, r'template_dir'),
      );
    }
    return null;
  }

  static List<VpsTemplateRow> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <VpsTemplateRow>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VpsTemplateRow.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, VpsTemplateRow> mapFromJson(dynamic json) {
    final map = <String, VpsTemplateRow>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = VpsTemplateRow.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of VpsTemplateRow-objects as value to a dart map
  static Map<String, List<VpsTemplateRow>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<VpsTemplateRow>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = VpsTemplateRow.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

