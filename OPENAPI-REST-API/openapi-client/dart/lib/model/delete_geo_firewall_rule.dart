//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class DeleteGeoFirewallRule {
  /// Returns a new [DeleteGeoFirewallRule] instance.
  DeleteGeoFirewallRule({
    required this.ruleId,
  });

  int ruleId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DeleteGeoFirewallRule &&
    other.ruleId == ruleId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (ruleId.hashCode);

  @override
  String toString() => 'DeleteGeoFirewallRule[ruleId=$ruleId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'rule_id'] = this.ruleId;
    return json;
  }

  /// Returns a new [DeleteGeoFirewallRule] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DeleteGeoFirewallRule? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'rule_id'), 'Required key "DeleteGeoFirewallRule[rule_id]" is missing from JSON.');
        assert(json[r'rule_id'] != null, 'Required key "DeleteGeoFirewallRule[rule_id]" has a null value in JSON.');
        return true;
      }());

      return DeleteGeoFirewallRule(
        ruleId: mapValueOfType<int>(json, r'rule_id')!,
      );
    }
    return null;
  }

  static List<DeleteGeoFirewallRule> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeleteGeoFirewallRule>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeleteGeoFirewallRule.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DeleteGeoFirewallRule> mapFromJson(dynamic json) {
    final map = <String, DeleteGeoFirewallRule>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DeleteGeoFirewallRule.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DeleteGeoFirewallRule-objects as value to a dart map
  static Map<String, List<DeleteGeoFirewallRule>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DeleteGeoFirewallRule>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DeleteGeoFirewallRule.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'rule_id',
  };
}

