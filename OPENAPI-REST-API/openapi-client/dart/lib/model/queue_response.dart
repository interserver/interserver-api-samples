//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class QueueResponse {
  /// Returns a new [QueueResponse] instance.
  QueueResponse({
    required this.text,
    required this.queueId,
  });

  /// Response text
  String text;

  /// The Queue ID attached to the action.
  int queueId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is QueueResponse &&
    other.text == text &&
    other.queueId == queueId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (text.hashCode) +
    (queueId.hashCode);

  @override
  String toString() => 'QueueResponse[text=$text, queueId=$queueId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'text'] = this.text;
      json[r'queueId'] = this.queueId;
    return json;
  }

  /// Returns a new [QueueResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static QueueResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'text'), 'Required key "QueueResponse[text]" is missing from JSON.');
        assert(json[r'text'] != null, 'Required key "QueueResponse[text]" has a null value in JSON.');
        assert(json.containsKey(r'queueId'), 'Required key "QueueResponse[queueId]" is missing from JSON.');
        assert(json[r'queueId'] != null, 'Required key "QueueResponse[queueId]" has a null value in JSON.');
        return true;
      }());

      return QueueResponse(
        text: mapValueOfType<String>(json, r'text')!,
        queueId: mapValueOfType<int>(json, r'queueId')!,
      );
    }
    return null;
  }

  static List<QueueResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <QueueResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = QueueResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, QueueResponse> mapFromJson(dynamic json) {
    final map = <String, QueueResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = QueueResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of QueueResponse-objects as value to a dart map
  static Map<String, List<QueueResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<QueueResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = QueueResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'text',
    'queueId',
  };
}

