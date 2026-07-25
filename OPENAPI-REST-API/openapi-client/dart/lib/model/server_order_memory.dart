//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class ServerOrderMemory {
  /// Returns a new [ServerOrderMemory] instance.
  ServerOrderMemory({
    this.id,
    this.price,
    this.img,
    this.shortDesc,
    this.longDesc,
    this.manu,
    this.size,
    this.type,
    this.hidden,
    this.monthlyPrice,
    this.driveType,
    this.monthlyPriceDisplay,
  });

  /// Memory ID.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Memory price.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? price;

  /// Memory image.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? img;

  /// Short description of the memory.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? shortDesc;

  /// Long description of the memory.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? longDesc;

  /// Manufacturer information.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? manu;

  /// Memory size.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? size;

  /// Memory type.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  /// Hidden status.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? hidden;

  /// Monthly price.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? monthlyPrice;

  /// Drive type.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? driveType;

  /// Display of monthly memory price.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? monthlyPriceDisplay;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ServerOrderMemory &&
    other.id == id &&
    other.price == price &&
    other.img == img &&
    other.shortDesc == shortDesc &&
    other.longDesc == longDesc &&
    other.manu == manu &&
    other.size == size &&
    other.type == type &&
    other.hidden == hidden &&
    other.monthlyPrice == monthlyPrice &&
    other.driveType == driveType &&
    other.monthlyPriceDisplay == monthlyPriceDisplay;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (price == null ? 0 : price!.hashCode) +
    (img == null ? 0 : img!.hashCode) +
    (shortDesc == null ? 0 : shortDesc!.hashCode) +
    (longDesc == null ? 0 : longDesc!.hashCode) +
    (manu == null ? 0 : manu!.hashCode) +
    (size == null ? 0 : size!.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (hidden == null ? 0 : hidden!.hashCode) +
    (monthlyPrice == null ? 0 : monthlyPrice!.hashCode) +
    (driveType == null ? 0 : driveType!.hashCode) +
    (monthlyPriceDisplay == null ? 0 : monthlyPriceDisplay!.hashCode);

  @override
  String toString() => 'ServerOrderMemory[id=$id, price=$price, img=$img, shortDesc=$shortDesc, longDesc=$longDesc, manu=$manu, size=$size, type=$type, hidden=$hidden, monthlyPrice=$monthlyPrice, driveType=$driveType, monthlyPriceDisplay=$monthlyPriceDisplay]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.price != null) {
      json[r'price'] = this.price;
    } else {
      json[r'price'] = null;
    }
    if (this.img != null) {
      json[r'img'] = this.img;
    } else {
      json[r'img'] = null;
    }
    if (this.shortDesc != null) {
      json[r'short_desc'] = this.shortDesc;
    } else {
      json[r'short_desc'] = null;
    }
    if (this.longDesc != null) {
      json[r'long_desc'] = this.longDesc;
    } else {
      json[r'long_desc'] = null;
    }
    if (this.manu != null) {
      json[r'manu'] = this.manu;
    } else {
      json[r'manu'] = null;
    }
    if (this.size != null) {
      json[r'size'] = this.size;
    } else {
      json[r'size'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    if (this.hidden != null) {
      json[r'hidden'] = this.hidden;
    } else {
      json[r'hidden'] = null;
    }
    if (this.monthlyPrice != null) {
      json[r'monthly_price'] = this.monthlyPrice;
    } else {
      json[r'monthly_price'] = null;
    }
    if (this.driveType != null) {
      json[r'drive_type'] = this.driveType;
    } else {
      json[r'drive_type'] = null;
    }
    if (this.monthlyPriceDisplay != null) {
      json[r'monthly_price_display'] = this.monthlyPriceDisplay;
    } else {
      json[r'monthly_price_display'] = null;
    }
    return json;
  }

  /// Returns a new [ServerOrderMemory] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ServerOrderMemory? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return ServerOrderMemory(
        id: mapValueOfType<String>(json, r'id'),
        price: mapValueOfType<String>(json, r'price'),
        img: mapValueOfType<String>(json, r'img'),
        shortDesc: mapValueOfType<String>(json, r'short_desc'),
        longDesc: mapValueOfType<String>(json, r'long_desc'),
        manu: mapValueOfType<String>(json, r'manu'),
        size: mapValueOfType<String>(json, r'size'),
        type: mapValueOfType<String>(json, r'type'),
        hidden: mapValueOfType<String>(json, r'hidden'),
        monthlyPrice: mapValueOfType<int>(json, r'monthly_price'),
        driveType: mapValueOfType<String>(json, r'drive_type'),
        monthlyPriceDisplay: mapValueOfType<String>(json, r'monthly_price_display'),
      );
    }
    return null;
  }

  static List<ServerOrderMemory> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ServerOrderMemory>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ServerOrderMemory.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ServerOrderMemory> mapFromJson(dynamic json) {
    final map = <String, ServerOrderMemory>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ServerOrderMemory.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ServerOrderMemory-objects as value to a dart map
  static Map<String, List<ServerOrderMemory>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ServerOrderMemory>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ServerOrderMemory.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

