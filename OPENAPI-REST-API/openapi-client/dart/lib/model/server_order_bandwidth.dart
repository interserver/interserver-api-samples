//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class ServerOrderBandwidth {
  /// Returns a new [ServerOrderBandwidth] instance.
  ServerOrderBandwidth({
    this.id,
    this.price,
    this.img,
    this.shortDesc,
    this.longDesc,
    this.type,
    this.qty,
    this.active,
    this.monthlyPrice,
    this.priceDisplay,
    this.monthlyPriceDisplay,
  });

  /// Bandwidth ID.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Bandwidth price.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? price;

  /// Bandwidth image.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? img;

  /// Short description of the bandwidth.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? shortDesc;

  /// Long description of the bandwidth.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? longDesc;

  /// Bandwidth type.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  /// Quantity of bandwidth.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? qty;

  /// Active status.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? active;

  /// Monthly price.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? monthlyPrice;

  /// Display of bandwidth price.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? priceDisplay;

  /// Display of monthly bandwidth price.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? monthlyPriceDisplay;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ServerOrderBandwidth &&
    other.id == id &&
    other.price == price &&
    other.img == img &&
    other.shortDesc == shortDesc &&
    other.longDesc == longDesc &&
    other.type == type &&
    other.qty == qty &&
    other.active == active &&
    other.monthlyPrice == monthlyPrice &&
    other.priceDisplay == priceDisplay &&
    other.monthlyPriceDisplay == monthlyPriceDisplay;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (price == null ? 0 : price!.hashCode) +
    (img == null ? 0 : img!.hashCode) +
    (shortDesc == null ? 0 : shortDesc!.hashCode) +
    (longDesc == null ? 0 : longDesc!.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (qty == null ? 0 : qty!.hashCode) +
    (active == null ? 0 : active!.hashCode) +
    (monthlyPrice == null ? 0 : monthlyPrice!.hashCode) +
    (priceDisplay == null ? 0 : priceDisplay!.hashCode) +
    (monthlyPriceDisplay == null ? 0 : monthlyPriceDisplay!.hashCode);

  @override
  String toString() => 'ServerOrderBandwidth[id=$id, price=$price, img=$img, shortDesc=$shortDesc, longDesc=$longDesc, type=$type, qty=$qty, active=$active, monthlyPrice=$monthlyPrice, priceDisplay=$priceDisplay, monthlyPriceDisplay=$monthlyPriceDisplay]';

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
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    if (this.qty != null) {
      json[r'qty'] = this.qty;
    } else {
      json[r'qty'] = null;
    }
    if (this.active != null) {
      json[r'active'] = this.active;
    } else {
      json[r'active'] = null;
    }
    if (this.monthlyPrice != null) {
      json[r'monthly_price'] = this.monthlyPrice;
    } else {
      json[r'monthly_price'] = null;
    }
    if (this.priceDisplay != null) {
      json[r'price_display'] = this.priceDisplay;
    } else {
      json[r'price_display'] = null;
    }
    if (this.monthlyPriceDisplay != null) {
      json[r'monthly_price_display'] = this.monthlyPriceDisplay;
    } else {
      json[r'monthly_price_display'] = null;
    }
    return json;
  }

  /// Returns a new [ServerOrderBandwidth] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ServerOrderBandwidth? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return ServerOrderBandwidth(
        id: mapValueOfType<String>(json, r'id'),
        price: mapValueOfType<int>(json, r'price'),
        img: mapValueOfType<String>(json, r'img'),
        shortDesc: mapValueOfType<String>(json, r'short_desc'),
        longDesc: mapValueOfType<String>(json, r'long_desc'),
        type: mapValueOfType<String>(json, r'type'),
        qty: mapValueOfType<String>(json, r'qty'),
        active: mapValueOfType<String>(json, r'active'),
        monthlyPrice: mapValueOfType<int>(json, r'monthly_price'),
        priceDisplay: mapValueOfType<String>(json, r'price_display'),
        monthlyPriceDisplay: mapValueOfType<String>(json, r'monthly_price_display'),
      );
    }
    return null;
  }

  static List<ServerOrderBandwidth> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ServerOrderBandwidth>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ServerOrderBandwidth.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ServerOrderBandwidth> mapFromJson(dynamic json) {
    final map = <String, ServerOrderBandwidth>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ServerOrderBandwidth.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ServerOrderBandwidth-objects as value to a dart map
  static Map<String, List<ServerOrderBandwidth>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ServerOrderBandwidth>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ServerOrderBandwidth.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

