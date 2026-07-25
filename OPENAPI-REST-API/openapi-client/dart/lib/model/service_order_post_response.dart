//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class ServiceOrderPostResponse {
  /// Returns a new [ServiceOrderPostResponse] instance.
  ServiceOrderPostResponse({
    this.continue_,
    this.errors = const [],
    this.totalCost,
    this.iid,
    this.iids = const [],
    this.realIids = const [],
    this.serviceId,
    this.invoiceDescription,
  });

  /// Whether the order was accepted and can proceed to payment.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? continue_;

  /// List of validation errors (empty on success).
  List<String> errors;

  /// Total cost of the order.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? totalCost;

  /// Primary invoice ID for payment.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? iid;

  /// All invoice identifiers associated with the order.
  List<String> iids;

  /// Numeric invoice IDs for use with billing endpoints.
  List<String> realIids;

  /// The new service ID created by the order.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? serviceId;

  /// Human-readable description of the invoice.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? invoiceDescription;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ServiceOrderPostResponse &&
    other.continue_ == continue_ &&
    _deepEquality.equals(other.errors, errors) &&
    other.totalCost == totalCost &&
    other.iid == iid &&
    _deepEquality.equals(other.iids, iids) &&
    _deepEquality.equals(other.realIids, realIids) &&
    other.serviceId == serviceId &&
    other.invoiceDescription == invoiceDescription;

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
    (invoiceDescription == null ? 0 : invoiceDescription!.hashCode);

  @override
  String toString() => 'ServiceOrderPostResponse[continue_=$continue_, errors=$errors, totalCost=$totalCost, iid=$iid, iids=$iids, realIids=$realIids, serviceId=$serviceId, invoiceDescription=$invoiceDescription]';

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
    return json;
  }

  /// Returns a new [ServiceOrderPostResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ServiceOrderPostResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return ServiceOrderPostResponse(
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
      );
    }
    return null;
  }

  static List<ServiceOrderPostResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ServiceOrderPostResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ServiceOrderPostResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ServiceOrderPostResponse> mapFromJson(dynamic json) {
    final map = <String, ServiceOrderPostResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ServiceOrderPostResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ServiceOrderPostResponse-objects as value to a dart map
  static Map<String, List<ServiceOrderPostResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ServiceOrderPostResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ServiceOrderPostResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

