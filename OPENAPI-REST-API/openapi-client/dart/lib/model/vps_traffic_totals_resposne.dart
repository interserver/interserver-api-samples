//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class VpsTrafficTotalsResposne {
  /// Returns a new [VpsTrafficTotalsResposne] instance.
  VpsTrafficTotalsResposne({
    required this.day,
    required this.month,
    required this.year,
    required this.all,
  });

  VpsTrafficTotalsSectionResponse day;

  VpsTrafficTotalsSectionResponse month;

  VpsTrafficTotalsSectionResponse year;

  VpsTrafficTotalsSectionResponse all;

  @override
  bool operator ==(Object other) => identical(this, other) || other is VpsTrafficTotalsResposne &&
    other.day == day &&
    other.month == month &&
    other.year == year &&
    other.all == all;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (day.hashCode) +
    (month.hashCode) +
    (year.hashCode) +
    (all.hashCode);

  @override
  String toString() => 'VpsTrafficTotalsResposne[day=$day, month=$month, year=$year, all=$all]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'day'] = this.day;
      json[r'month'] = this.month;
      json[r'year'] = this.year;
      json[r'all'] = this.all;
    return json;
  }

  /// Returns a new [VpsTrafficTotalsResposne] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static VpsTrafficTotalsResposne? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'day'), 'Required key "VpsTrafficTotalsResposne[day]" is missing from JSON.');
        assert(json[r'day'] != null, 'Required key "VpsTrafficTotalsResposne[day]" has a null value in JSON.');
        assert(json.containsKey(r'month'), 'Required key "VpsTrafficTotalsResposne[month]" is missing from JSON.');
        assert(json[r'month'] != null, 'Required key "VpsTrafficTotalsResposne[month]" has a null value in JSON.');
        assert(json.containsKey(r'year'), 'Required key "VpsTrafficTotalsResposne[year]" is missing from JSON.');
        assert(json[r'year'] != null, 'Required key "VpsTrafficTotalsResposne[year]" has a null value in JSON.');
        assert(json.containsKey(r'all'), 'Required key "VpsTrafficTotalsResposne[all]" is missing from JSON.');
        assert(json[r'all'] != null, 'Required key "VpsTrafficTotalsResposne[all]" has a null value in JSON.');
        return true;
      }());

      return VpsTrafficTotalsResposne(
        day: VpsTrafficTotalsSectionResponse.fromJson(json[r'day'])!,
        month: VpsTrafficTotalsSectionResponse.fromJson(json[r'month'])!,
        year: VpsTrafficTotalsSectionResponse.fromJson(json[r'year'])!,
        all: VpsTrafficTotalsSectionResponse.fromJson(json[r'all'])!,
      );
    }
    return null;
  }

  static List<VpsTrafficTotalsResposne> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <VpsTrafficTotalsResposne>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VpsTrafficTotalsResposne.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, VpsTrafficTotalsResposne> mapFromJson(dynamic json) {
    final map = <String, VpsTrafficTotalsResposne>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = VpsTrafficTotalsResposne.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of VpsTrafficTotalsResposne-objects as value to a dart map
  static Map<String, List<VpsTrafficTotalsResposne>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<VpsTrafficTotalsResposne>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = VpsTrafficTotalsResposne.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'day',
    'month',
    'year',
    'all',
  };
}

