//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class QuickserverRow {
  /// Returns a new [QuickserverRow] instance.
  QuickserverRow({
    required this.qsId,
    required this.qsName,
    required this.cost,
    required this.qsHostname,
    required this.qsStatus,
    required this.qsComment,
  });

  /// The id of the qs.
  String qsId;

  /// The name of the qs.
  String qsName;

  /// The cost of the qs.
  String cost;

  /// The hostname of the qs.
  String qsHostname;

  /// The status of the qs.
  String qsStatus;

  /// The comment of the qs.
  String qsComment;

  @override
  bool operator ==(Object other) => identical(this, other) || other is QuickserverRow &&
    other.qsId == qsId &&
    other.qsName == qsName &&
    other.cost == cost &&
    other.qsHostname == qsHostname &&
    other.qsStatus == qsStatus &&
    other.qsComment == qsComment;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (qsId.hashCode) +
    (qsName.hashCode) +
    (cost.hashCode) +
    (qsHostname.hashCode) +
    (qsStatus.hashCode) +
    (qsComment.hashCode);

  @override
  String toString() => 'QuickserverRow[qsId=$qsId, qsName=$qsName, cost=$cost, qsHostname=$qsHostname, qsStatus=$qsStatus, qsComment=$qsComment]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'qs_id'] = this.qsId;
      json[r'qs_name'] = this.qsName;
      json[r'cost'] = this.cost;
      json[r'qs_hostname'] = this.qsHostname;
      json[r'qs_status'] = this.qsStatus;
      json[r'qs_comment'] = this.qsComment;
    return json;
  }

  /// Returns a new [QuickserverRow] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static QuickserverRow? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'qs_id'), 'Required key "QuickserverRow[qs_id]" is missing from JSON.');
        assert(json[r'qs_id'] != null, 'Required key "QuickserverRow[qs_id]" has a null value in JSON.');
        assert(json.containsKey(r'qs_name'), 'Required key "QuickserverRow[qs_name]" is missing from JSON.');
        assert(json[r'qs_name'] != null, 'Required key "QuickserverRow[qs_name]" has a null value in JSON.');
        assert(json.containsKey(r'cost'), 'Required key "QuickserverRow[cost]" is missing from JSON.');
        assert(json[r'cost'] != null, 'Required key "QuickserverRow[cost]" has a null value in JSON.');
        assert(json.containsKey(r'qs_hostname'), 'Required key "QuickserverRow[qs_hostname]" is missing from JSON.');
        assert(json[r'qs_hostname'] != null, 'Required key "QuickserverRow[qs_hostname]" has a null value in JSON.');
        assert(json.containsKey(r'qs_status'), 'Required key "QuickserverRow[qs_status]" is missing from JSON.');
        assert(json[r'qs_status'] != null, 'Required key "QuickserverRow[qs_status]" has a null value in JSON.');
        assert(json.containsKey(r'qs_comment'), 'Required key "QuickserverRow[qs_comment]" is missing from JSON.');
        assert(json[r'qs_comment'] != null, 'Required key "QuickserverRow[qs_comment]" has a null value in JSON.');
        return true;
      }());

      return QuickserverRow(
        qsId: mapValueOfType<String>(json, r'qs_id')!,
        qsName: mapValueOfType<String>(json, r'qs_name')!,
        cost: mapValueOfType<String>(json, r'cost')!,
        qsHostname: mapValueOfType<String>(json, r'qs_hostname')!,
        qsStatus: mapValueOfType<String>(json, r'qs_status')!,
        qsComment: mapValueOfType<String>(json, r'qs_comment')!,
      );
    }
    return null;
  }

  static List<QuickserverRow> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <QuickserverRow>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = QuickserverRow.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, QuickserverRow> mapFromJson(dynamic json) {
    final map = <String, QuickserverRow>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = QuickserverRow.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of QuickserverRow-objects as value to a dart map
  static Map<String, List<QuickserverRow>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<QuickserverRow>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = QuickserverRow.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'qs_id',
    'qs_name',
    'cost',
    'qs_hostname',
    'qs_status',
    'qs_comment',
  };
}

