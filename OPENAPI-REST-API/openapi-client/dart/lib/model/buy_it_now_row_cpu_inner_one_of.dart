//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class BuyItNowRowCpuInnerOneOf {
  /// Returns a new [BuyItNowRowCpuInnerOneOf] instance.
  BuyItNowRowCpuInnerOneOf({
    this.img,
    this.type,
    this.speed,
    this.numCpus,
    this.numCores,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? img;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? speed;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? numCpus;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? numCores;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BuyItNowRowCpuInnerOneOf &&
    other.img == img &&
    other.type == type &&
    other.speed == speed &&
    other.numCpus == numCpus &&
    other.numCores == numCores;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (img == null ? 0 : img!.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (speed == null ? 0 : speed!.hashCode) +
    (numCpus == null ? 0 : numCpus!.hashCode) +
    (numCores == null ? 0 : numCores!.hashCode);

  @override
  String toString() => 'BuyItNowRowCpuInnerOneOf[img=$img, type=$type, speed=$speed, numCpus=$numCpus, numCores=$numCores]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.img != null) {
      json[r'img'] = this.img;
    } else {
      json[r'img'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    if (this.speed != null) {
      json[r'speed'] = this.speed;
    } else {
      json[r'speed'] = null;
    }
    if (this.numCpus != null) {
      json[r'num_cpus'] = this.numCpus;
    } else {
      json[r'num_cpus'] = null;
    }
    if (this.numCores != null) {
      json[r'num_cores'] = this.numCores;
    } else {
      json[r'num_cores'] = null;
    }
    return json;
  }

  /// Returns a new [BuyItNowRowCpuInnerOneOf] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BuyItNowRowCpuInnerOneOf? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return BuyItNowRowCpuInnerOneOf(
        img: mapValueOfType<String>(json, r'img'),
        type: mapValueOfType<String>(json, r'type'),
        speed: mapValueOfType<String>(json, r'speed'),
        numCpus: mapValueOfType<String>(json, r'num_cpus'),
        numCores: mapValueOfType<String>(json, r'num_cores'),
      );
    }
    return null;
  }

  static List<BuyItNowRowCpuInnerOneOf> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BuyItNowRowCpuInnerOneOf>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BuyItNowRowCpuInnerOneOf.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BuyItNowRowCpuInnerOneOf> mapFromJson(dynamic json) {
    final map = <String, BuyItNowRowCpuInnerOneOf>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BuyItNowRowCpuInnerOneOf.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BuyItNowRowCpuInnerOneOf-objects as value to a dart map
  static Map<String, List<BuyItNowRowCpuInnerOneOf>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BuyItNowRowCpuInnerOneOf>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BuyItNowRowCpuInnerOneOf.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

