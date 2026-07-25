//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class PlaceScrubOrder201ResponseOrderDetailsCjParams {
  /// Returns a new [PlaceScrubOrder201ResponseOrderDetailsCjParams] instance.
  PlaceScrubOrder201ResponseOrderDetailsCjParams({
    this.containerTagId,
    this.CID,
    this.OID,
    this.TYPE,
    this.ITEM1,
    this.AMT1,
    this.QTY1,
    this.CURRENCY,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? containerTagId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? CID;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? OID;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? TYPE;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ITEM1;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? AMT1;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? QTY1;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? CURRENCY;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PlaceScrubOrder201ResponseOrderDetailsCjParams &&
    other.containerTagId == containerTagId &&
    other.CID == CID &&
    other.OID == OID &&
    other.TYPE == TYPE &&
    other.ITEM1 == ITEM1 &&
    other.AMT1 == AMT1 &&
    other.QTY1 == QTY1 &&
    other.CURRENCY == CURRENCY;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (containerTagId == null ? 0 : containerTagId!.hashCode) +
    (CID == null ? 0 : CID!.hashCode) +
    (OID == null ? 0 : OID!.hashCode) +
    (TYPE == null ? 0 : TYPE!.hashCode) +
    (ITEM1 == null ? 0 : ITEM1!.hashCode) +
    (AMT1 == null ? 0 : AMT1!.hashCode) +
    (QTY1 == null ? 0 : QTY1!.hashCode) +
    (CURRENCY == null ? 0 : CURRENCY!.hashCode);

  @override
  String toString() => 'PlaceScrubOrder201ResponseOrderDetailsCjParams[containerTagId=$containerTagId, CID=$CID, OID=$OID, TYPE=$TYPE, ITEM1=$ITEM1, AMT1=$AMT1, QTY1=$QTY1, CURRENCY=$CURRENCY]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.containerTagId != null) {
      json[r'containerTagId'] = this.containerTagId;
    } else {
      json[r'containerTagId'] = null;
    }
    if (this.CID != null) {
      json[r'CID'] = this.CID;
    } else {
      json[r'CID'] = null;
    }
    if (this.OID != null) {
      json[r'OID'] = this.OID;
    } else {
      json[r'OID'] = null;
    }
    if (this.TYPE != null) {
      json[r'TYPE'] = this.TYPE;
    } else {
      json[r'TYPE'] = null;
    }
    if (this.ITEM1 != null) {
      json[r'ITEM1'] = this.ITEM1;
    } else {
      json[r'ITEM1'] = null;
    }
    if (this.AMT1 != null) {
      json[r'AMT1'] = this.AMT1;
    } else {
      json[r'AMT1'] = null;
    }
    if (this.QTY1 != null) {
      json[r'QTY1'] = this.QTY1;
    } else {
      json[r'QTY1'] = null;
    }
    if (this.CURRENCY != null) {
      json[r'CURRENCY'] = this.CURRENCY;
    } else {
      json[r'CURRENCY'] = null;
    }
    return json;
  }

  /// Returns a new [PlaceScrubOrder201ResponseOrderDetailsCjParams] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PlaceScrubOrder201ResponseOrderDetailsCjParams? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return PlaceScrubOrder201ResponseOrderDetailsCjParams(
        containerTagId: mapValueOfType<int>(json, r'containerTagId'),
        CID: mapValueOfType<int>(json, r'CID'),
        OID: mapValueOfType<String>(json, r'OID'),
        TYPE: mapValueOfType<int>(json, r'TYPE'),
        ITEM1: mapValueOfType<String>(json, r'ITEM1'),
        AMT1: mapValueOfType<int>(json, r'AMT1'),
        QTY1: mapValueOfType<int>(json, r'QTY1'),
        CURRENCY: mapValueOfType<String>(json, r'CURRENCY'),
      );
    }
    return null;
  }

  static List<PlaceScrubOrder201ResponseOrderDetailsCjParams> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PlaceScrubOrder201ResponseOrderDetailsCjParams>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PlaceScrubOrder201ResponseOrderDetailsCjParams.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PlaceScrubOrder201ResponseOrderDetailsCjParams> mapFromJson(dynamic json) {
    final map = <String, PlaceScrubOrder201ResponseOrderDetailsCjParams>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PlaceScrubOrder201ResponseOrderDetailsCjParams.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PlaceScrubOrder201ResponseOrderDetailsCjParams-objects as value to a dart map
  static Map<String, List<PlaceScrubOrder201ResponseOrderDetailsCjParams>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PlaceScrubOrder201ResponseOrderDetailsCjParams>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PlaceScrubOrder201ResponseOrderDetailsCjParams.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

