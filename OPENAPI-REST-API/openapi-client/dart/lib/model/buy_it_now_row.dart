//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class BuyItNowRow {
  /// Returns a new [BuyItNowRow] instance.
  BuyItNowRow({
    this.serverId,
    this.cpu = const [],
    this.memory,
    this.disk = const {},
    this.bandwidth,
    this.ips,
    this.location,
    this.price,
  });

  /// Unique server ID. Use this as `server_id` in `POST /servers/order/buy_now_server`.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? serverId;

  List<BuyItNowRowCpuInner> cpu;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? memory;

  Map<String, String> disk;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? bandwidth;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ips;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? location;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? price;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BuyItNowRow &&
    other.serverId == serverId &&
    _deepEquality.equals(other.cpu, cpu) &&
    other.memory == memory &&
    _deepEquality.equals(other.disk, disk) &&
    other.bandwidth == bandwidth &&
    other.ips == ips &&
    other.location == location &&
    other.price == price;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (serverId == null ? 0 : serverId!.hashCode) +
    (cpu.hashCode) +
    (memory == null ? 0 : memory!.hashCode) +
    (disk.hashCode) +
    (bandwidth == null ? 0 : bandwidth!.hashCode) +
    (ips == null ? 0 : ips!.hashCode) +
    (location == null ? 0 : location!.hashCode) +
    (price == null ? 0 : price!.hashCode);

  @override
  String toString() => 'BuyItNowRow[serverId=$serverId, cpu=$cpu, memory=$memory, disk=$disk, bandwidth=$bandwidth, ips=$ips, location=$location, price=$price]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.serverId != null) {
      json[r'server_id'] = this.serverId;
    } else {
      json[r'server_id'] = null;
    }
      json[r'cpu'] = this.cpu;
    if (this.memory != null) {
      json[r'memory'] = this.memory;
    } else {
      json[r'memory'] = null;
    }
      json[r'disk'] = this.disk;
    if (this.bandwidth != null) {
      json[r'bandwidth'] = this.bandwidth;
    } else {
      json[r'bandwidth'] = null;
    }
    if (this.ips != null) {
      json[r'ips'] = this.ips;
    } else {
      json[r'ips'] = null;
    }
    if (this.location != null) {
      json[r'location'] = this.location;
    } else {
      json[r'location'] = null;
    }
    if (this.price != null) {
      json[r'price'] = this.price;
    } else {
      json[r'price'] = null;
    }
    return json;
  }

  /// Returns a new [BuyItNowRow] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BuyItNowRow? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return BuyItNowRow(
        serverId: mapValueOfType<String>(json, r'server_id'),
        cpu: BuyItNowRowCpuInner.listFromJson(json[r'cpu']),
        memory: mapValueOfType<String>(json, r'memory'),
        disk: mapCastOfType<String, String>(json, r'disk') ?? const {},
        bandwidth: mapValueOfType<String>(json, r'bandwidth'),
        ips: mapValueOfType<String>(json, r'ips'),
        location: mapValueOfType<String>(json, r'location'),
        price: mapValueOfType<int>(json, r'price'),
      );
    }
    return null;
  }

  static List<BuyItNowRow> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BuyItNowRow>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BuyItNowRow.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BuyItNowRow> mapFromJson(dynamic json) {
    final map = <String, BuyItNowRow>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BuyItNowRow.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BuyItNowRow-objects as value to a dart map
  static Map<String, List<BuyItNowRow>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BuyItNowRow>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BuyItNowRow.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

