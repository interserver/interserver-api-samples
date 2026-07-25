//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class DomainProvProcessPendingAttributes {
  /// Returns a new [DomainProvProcessPendingAttributes] instance.
  DomainProvProcessPendingAttributes({
    this.id,
    this.orderId,
    this.registrationExpirationDate,
    this.fAutoRenew,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? orderId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? registrationExpirationDate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? fAutoRenew;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DomainProvProcessPendingAttributes &&
    other.id == id &&
    other.orderId == orderId &&
    other.registrationExpirationDate == registrationExpirationDate &&
    other.fAutoRenew == fAutoRenew;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (orderId == null ? 0 : orderId!.hashCode) +
    (registrationExpirationDate == null ? 0 : registrationExpirationDate!.hashCode) +
    (fAutoRenew == null ? 0 : fAutoRenew!.hashCode);

  @override
  String toString() => 'DomainProvProcessPendingAttributes[id=$id, orderId=$orderId, registrationExpirationDate=$registrationExpirationDate, fAutoRenew=$fAutoRenew]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.orderId != null) {
      json[r'order_id'] = this.orderId;
    } else {
      json[r'order_id'] = null;
    }
    if (this.registrationExpirationDate != null) {
      json[r'registration expiration date'] = this.registrationExpirationDate;
    } else {
      json[r'registration expiration date'] = null;
    }
    if (this.fAutoRenew != null) {
      json[r'f_auto_renew'] = this.fAutoRenew;
    } else {
      json[r'f_auto_renew'] = null;
    }
    return json;
  }

  /// Returns a new [DomainProvProcessPendingAttributes] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DomainProvProcessPendingAttributes? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return DomainProvProcessPendingAttributes(
        id: mapValueOfType<String>(json, r'id'),
        orderId: mapValueOfType<String>(json, r'order_id'),
        registrationExpirationDate: mapValueOfType<String>(json, r'registration expiration date'),
        fAutoRenew: mapValueOfType<String>(json, r'f_auto_renew'),
      );
    }
    return null;
  }

  static List<DomainProvProcessPendingAttributes> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DomainProvProcessPendingAttributes>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DomainProvProcessPendingAttributes.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DomainProvProcessPendingAttributes> mapFromJson(dynamic json) {
    final map = <String, DomainProvProcessPendingAttributes>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DomainProvProcessPendingAttributes.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DomainProvProcessPendingAttributes-objects as value to a dart map
  static Map<String, List<DomainProvProcessPendingAttributes>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DomainProvProcessPendingAttributes>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DomainProvProcessPendingAttributes.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

