//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class BackupOrderPostResponse {
  /// Returns a new [BackupOrderPostResponse] instance.
  BackupOrderPostResponse({
    this.continue_,
    this.errors = const [],
    this.totalCost,
    this.iid,
    this.iids = const [],
    this.realIids = const [],
    this.serviceId,
    this.invoiceDescription,
    this.cjParams,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? continue_;

  List<String> errors;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? totalCost;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? iid;

  List<String> iids;

  List<String> realIids;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? serviceId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? invoiceDescription;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  BackupOrderPostResponseCjParams? cjParams;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BackupOrderPostResponse &&
    other.continue_ == continue_ &&
    _deepEquality.equals(other.errors, errors) &&
    other.totalCost == totalCost &&
    other.iid == iid &&
    _deepEquality.equals(other.iids, iids) &&
    _deepEquality.equals(other.realIids, realIids) &&
    other.serviceId == serviceId &&
    other.invoiceDescription == invoiceDescription &&
    other.cjParams == cjParams;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (continue_ == null ? 0 : continue_!.hashCode) +
    (errors.hashCode) +
    (totalCost == null ? 0 : totalCost!.hashCode) +
    (iid == null ? 0 : iid!.hashCode) +
    (iids.hashCode) +
    (realIids.hashCode) +
    (serviceId == null ? 0 : serviceId!.hashCode) +
    (invoiceDescription == null ? 0 : invoiceDescription!.hashCode) +
    (cjParams == null ? 0 : cjParams!.hashCode);

  @override
  String toString() => 'BackupOrderPostResponse[continue_=$continue_, errors=$errors, totalCost=$totalCost, iid=$iid, iids=$iids, realIids=$realIids, serviceId=$serviceId, invoiceDescription=$invoiceDescription, cjParams=$cjParams]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.continue_ != null) {
      json[r'continue'] = this.continue_;
    } else {
      json[r'continue'] = null;
    }
      json[r'errors'] = this.errors;
    if (this.totalCost != null) {
      json[r'total_cost'] = this.totalCost;
    } else {
      json[r'total_cost'] = null;
    }
    if (this.iid != null) {
      json[r'iid'] = this.iid;
    } else {
      json[r'iid'] = null;
    }
      json[r'iids'] = this.iids;
      json[r'real_iids'] = this.realIids;
    if (this.serviceId != null) {
      json[r'serviceId'] = this.serviceId;
    } else {
      json[r'serviceId'] = null;
    }
    if (this.invoiceDescription != null) {
      json[r'invoice_description'] = this.invoiceDescription;
    } else {
      json[r'invoice_description'] = null;
    }
    if (this.cjParams != null) {
      json[r'cj_params'] = this.cjParams;
    } else {
      json[r'cj_params'] = null;
    }
    return json;
  }

  /// Returns a new [BackupOrderPostResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BackupOrderPostResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return BackupOrderPostResponse(
        continue_: mapValueOfType<bool>(json, r'continue'),
        errors: json[r'errors'] is Iterable
            ? (json[r'errors'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        totalCost: mapValueOfType<String>(json, r'total_cost'),
        iid: mapValueOfType<String>(json, r'iid'),
        iids: json[r'iids'] is Iterable
            ? (json[r'iids'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        realIids: json[r'real_iids'] is Iterable
            ? (json[r'real_iids'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        serviceId: mapValueOfType<int>(json, r'serviceId'),
        invoiceDescription: mapValueOfType<String>(json, r'invoice_description'),
        cjParams: BackupOrderPostResponseCjParams.fromJson(json[r'cj_params']),
      );
    }
    return null;
  }

  static List<BackupOrderPostResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BackupOrderPostResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BackupOrderPostResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BackupOrderPostResponse> mapFromJson(dynamic json) {
    final map = <String, BackupOrderPostResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BackupOrderPostResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BackupOrderPostResponse-objects as value to a dart map
  static Map<String, List<BackupOrderPostResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BackupOrderPostResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BackupOrderPostResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

