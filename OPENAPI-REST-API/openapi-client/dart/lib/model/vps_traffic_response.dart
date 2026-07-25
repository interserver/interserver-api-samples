//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class VpsTrafficResponse {
  /// Returns a new [VpsTrafficResponse] instance.
  VpsTrafficResponse({
    required this.name,
    required this.target,
    required this.interval,
    required this.history,
    required this.last,
    this.times = const [],
    required this.totals,
    required this.usage,
    this.data = const [],
  });

  String name;

  String target;

  int interval;

  VpsTrafficHistoryResponse history;

  DateTime last;

  List<DateTime> times;

  VpsTrafficTotalsResposne totals;

  VpsTrafficUsageResponse usage;

  List<VpsTrafficDataSectionResponse> data;

  @override
  bool operator ==(Object other) => identical(this, other) || other is VpsTrafficResponse &&
    other.name == name &&
    other.target == target &&
    other.interval == interval &&
    other.history == history &&
    other.last == last &&
    _deepEquality.equals(other.times, times) &&
    other.totals == totals &&
    other.usage == usage &&
    _deepEquality.equals(other.data, data);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name.hashCode) +
    (target.hashCode) +
    (interval.hashCode) +
    (history.hashCode) +
    (last.hashCode) +
    (times.hashCode) +
    (totals.hashCode) +
    (usage.hashCode) +
    (data.hashCode);

  @override
  String toString() => 'VpsTrafficResponse[name=$name, target=$target, interval=$interval, history=$history, last=$last, times=$times, totals=$totals, usage=$usage, data=$data]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'target'] = this.target;
      json[r'interval'] = this.interval;
      json[r'history'] = this.history;
      json[r'last'] = this.last.toUtc().toIso8601String();
      json[r'times'] = this.times;
      json[r'totals'] = this.totals;
      json[r'usage'] = this.usage;
      json[r'data'] = this.data;
    return json;
  }

  /// Returns a new [VpsTrafficResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static VpsTrafficResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'name'), 'Required key "VpsTrafficResponse[name]" is missing from JSON.');
        assert(json[r'name'] != null, 'Required key "VpsTrafficResponse[name]" has a null value in JSON.');
        assert(json.containsKey(r'target'), 'Required key "VpsTrafficResponse[target]" is missing from JSON.');
        assert(json[r'target'] != null, 'Required key "VpsTrafficResponse[target]" has a null value in JSON.');
        assert(json.containsKey(r'interval'), 'Required key "VpsTrafficResponse[interval]" is missing from JSON.');
        assert(json[r'interval'] != null, 'Required key "VpsTrafficResponse[interval]" has a null value in JSON.');
        assert(json.containsKey(r'history'), 'Required key "VpsTrafficResponse[history]" is missing from JSON.');
        assert(json[r'history'] != null, 'Required key "VpsTrafficResponse[history]" has a null value in JSON.');
        assert(json.containsKey(r'last'), 'Required key "VpsTrafficResponse[last]" is missing from JSON.');
        assert(json[r'last'] != null, 'Required key "VpsTrafficResponse[last]" has a null value in JSON.');
        assert(json.containsKey(r'times'), 'Required key "VpsTrafficResponse[times]" is missing from JSON.');
        assert(json[r'times'] != null, 'Required key "VpsTrafficResponse[times]" has a null value in JSON.');
        assert(json.containsKey(r'totals'), 'Required key "VpsTrafficResponse[totals]" is missing from JSON.');
        assert(json[r'totals'] != null, 'Required key "VpsTrafficResponse[totals]" has a null value in JSON.');
        assert(json.containsKey(r'usage'), 'Required key "VpsTrafficResponse[usage]" is missing from JSON.');
        assert(json[r'usage'] != null, 'Required key "VpsTrafficResponse[usage]" has a null value in JSON.');
        assert(json.containsKey(r'data'), 'Required key "VpsTrafficResponse[data]" is missing from JSON.');
        assert(json[r'data'] != null, 'Required key "VpsTrafficResponse[data]" has a null value in JSON.');
        return true;
      }());

      return VpsTrafficResponse(
        name: mapValueOfType<String>(json, r'name')!,
        target: mapValueOfType<String>(json, r'target')!,
        interval: mapValueOfType<int>(json, r'interval')!,
        history: VpsTrafficHistoryResponse.fromJson(json[r'history'])!,
        last: mapDateTime(json, r'last', r'')!,
        times: DateTime.listFromJson(json[r'times']),
        totals: VpsTrafficTotalsResposne.fromJson(json[r'totals'])!,
        usage: VpsTrafficUsageResponse.fromJson(json[r'usage'])!,
        data: VpsTrafficDataSectionResponse.listFromJson(json[r'data']),
      );
    }
    return null;
  }

  static List<VpsTrafficResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <VpsTrafficResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VpsTrafficResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, VpsTrafficResponse> mapFromJson(dynamic json) {
    final map = <String, VpsTrafficResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = VpsTrafficResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of VpsTrafficResponse-objects as value to a dart map
  static Map<String, List<VpsTrafficResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<VpsTrafficResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = VpsTrafficResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
    'target',
    'interval',
    'history',
    'last',
    'times',
    'totals',
    'usage',
    'data',
  };
}

