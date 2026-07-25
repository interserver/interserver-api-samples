//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class StatusMonthlyBreakdown {
  /// Returns a new [StatusMonthlyBreakdown] instance.
  StatusMonthlyBreakdown({
    required this.default_,
    required this.failed,
    required this.rejected,
    required this.pending,
    required this.locked,
    required this.paid,
  });

  MonthlyCounts default_;

  MonthlyCounts failed;

  MonthlyCounts rejected;

  MonthlyCounts pending;

  MonthlyCounts locked;

  MonthlyCounts paid;

  @override
  bool operator ==(Object other) => identical(this, other) || other is StatusMonthlyBreakdown &&
    other.default_ == default_ &&
    other.failed == failed &&
    other.rejected == rejected &&
    other.pending == pending &&
    other.locked == locked &&
    other.paid == paid;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (default_.hashCode) +
    (failed.hashCode) +
    (rejected.hashCode) +
    (pending.hashCode) +
    (locked.hashCode) +
    (paid.hashCode);

  @override
  String toString() => 'StatusMonthlyBreakdown[default_=$default_, failed=$failed, rejected=$rejected, pending=$pending, locked=$locked, paid=$paid]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'default'] = this.default_;
      json[r'failed'] = this.failed;
      json[r'rejected'] = this.rejected;
      json[r'pending'] = this.pending;
      json[r'locked'] = this.locked;
      json[r'paid'] = this.paid;
    return json;
  }

  /// Returns a new [StatusMonthlyBreakdown] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static StatusMonthlyBreakdown? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'default'), 'Required key "StatusMonthlyBreakdown[default]" is missing from JSON.');
        assert(json[r'default'] != null, 'Required key "StatusMonthlyBreakdown[default]" has a null value in JSON.');
        assert(json.containsKey(r'failed'), 'Required key "StatusMonthlyBreakdown[failed]" is missing from JSON.');
        assert(json[r'failed'] != null, 'Required key "StatusMonthlyBreakdown[failed]" has a null value in JSON.');
        assert(json.containsKey(r'rejected'), 'Required key "StatusMonthlyBreakdown[rejected]" is missing from JSON.');
        assert(json[r'rejected'] != null, 'Required key "StatusMonthlyBreakdown[rejected]" has a null value in JSON.');
        assert(json.containsKey(r'pending'), 'Required key "StatusMonthlyBreakdown[pending]" is missing from JSON.');
        assert(json[r'pending'] != null, 'Required key "StatusMonthlyBreakdown[pending]" has a null value in JSON.');
        assert(json.containsKey(r'locked'), 'Required key "StatusMonthlyBreakdown[locked]" is missing from JSON.');
        assert(json[r'locked'] != null, 'Required key "StatusMonthlyBreakdown[locked]" has a null value in JSON.');
        assert(json.containsKey(r'paid'), 'Required key "StatusMonthlyBreakdown[paid]" is missing from JSON.');
        assert(json[r'paid'] != null, 'Required key "StatusMonthlyBreakdown[paid]" has a null value in JSON.');
        return true;
      }());

      return StatusMonthlyBreakdown(
        default_: MonthlyCounts.fromJson(json[r'default'])!,
        failed: MonthlyCounts.fromJson(json[r'failed'])!,
        rejected: MonthlyCounts.fromJson(json[r'rejected'])!,
        pending: MonthlyCounts.fromJson(json[r'pending'])!,
        locked: MonthlyCounts.fromJson(json[r'locked'])!,
        paid: MonthlyCounts.fromJson(json[r'paid'])!,
      );
    }
    return null;
  }

  static List<StatusMonthlyBreakdown> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StatusMonthlyBreakdown>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StatusMonthlyBreakdown.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, StatusMonthlyBreakdown> mapFromJson(dynamic json) {
    final map = <String, StatusMonthlyBreakdown>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = StatusMonthlyBreakdown.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of StatusMonthlyBreakdown-objects as value to a dart map
  static Map<String, List<StatusMonthlyBreakdown>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<StatusMonthlyBreakdown>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = StatusMonthlyBreakdown.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'default',
    'failed',
    'rejected',
    'pending',
    'locked',
    'paid',
  };
}

