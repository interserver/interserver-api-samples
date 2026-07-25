//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class WebsiteRow {
  /// Returns a new [WebsiteRow] instance.
  WebsiteRow({
    required this.websiteId,
    required this.websiteHostname,
    required this.repeatInvoicesCost,
    required this.websiteStatus,
    required this.servicesName,
    required this.websiteComment,
  });

  /// The id of the website.
  String websiteId;

  /// The hostname of the website.
  String websiteHostname;

  /// The repeat invoices cost of the website.
  String repeatInvoicesCost;

  /// The status of the website.
  String websiteStatus;

  /// The services name of the website.
  String servicesName;

  /// The comment of the website.
  String websiteComment;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WebsiteRow &&
    other.websiteId == websiteId &&
    other.websiteHostname == websiteHostname &&
    other.repeatInvoicesCost == repeatInvoicesCost &&
    other.websiteStatus == websiteStatus &&
    other.servicesName == servicesName &&
    other.websiteComment == websiteComment;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (websiteId.hashCode) +
    (websiteHostname.hashCode) +
    (repeatInvoicesCost.hashCode) +
    (websiteStatus.hashCode) +
    (servicesName.hashCode) +
    (websiteComment.hashCode);

  @override
  String toString() => 'WebsiteRow[websiteId=$websiteId, websiteHostname=$websiteHostname, repeatInvoicesCost=$repeatInvoicesCost, websiteStatus=$websiteStatus, servicesName=$servicesName, websiteComment=$websiteComment]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'website_id'] = this.websiteId;
      json[r'website_hostname'] = this.websiteHostname;
      json[r'repeat_invoices_cost'] = this.repeatInvoicesCost;
      json[r'website_status'] = this.websiteStatus;
      json[r'services_name'] = this.servicesName;
      json[r'website_comment'] = this.websiteComment;
    return json;
  }

  /// Returns a new [WebsiteRow] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WebsiteRow? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'website_id'), 'Required key "WebsiteRow[website_id]" is missing from JSON.');
        assert(json[r'website_id'] != null, 'Required key "WebsiteRow[website_id]" has a null value in JSON.');
        assert(json.containsKey(r'website_hostname'), 'Required key "WebsiteRow[website_hostname]" is missing from JSON.');
        assert(json[r'website_hostname'] != null, 'Required key "WebsiteRow[website_hostname]" has a null value in JSON.');
        assert(json.containsKey(r'repeat_invoices_cost'), 'Required key "WebsiteRow[repeat_invoices_cost]" is missing from JSON.');
        assert(json[r'repeat_invoices_cost'] != null, 'Required key "WebsiteRow[repeat_invoices_cost]" has a null value in JSON.');
        assert(json.containsKey(r'website_status'), 'Required key "WebsiteRow[website_status]" is missing from JSON.');
        assert(json[r'website_status'] != null, 'Required key "WebsiteRow[website_status]" has a null value in JSON.');
        assert(json.containsKey(r'services_name'), 'Required key "WebsiteRow[services_name]" is missing from JSON.');
        assert(json[r'services_name'] != null, 'Required key "WebsiteRow[services_name]" has a null value in JSON.');
        assert(json.containsKey(r'website_comment'), 'Required key "WebsiteRow[website_comment]" is missing from JSON.');
        assert(json[r'website_comment'] != null, 'Required key "WebsiteRow[website_comment]" has a null value in JSON.');
        return true;
      }());

      return WebsiteRow(
        websiteId: mapValueOfType<String>(json, r'website_id')!,
        websiteHostname: mapValueOfType<String>(json, r'website_hostname')!,
        repeatInvoicesCost: mapValueOfType<String>(json, r'repeat_invoices_cost')!,
        websiteStatus: mapValueOfType<String>(json, r'website_status')!,
        servicesName: mapValueOfType<String>(json, r'services_name')!,
        websiteComment: mapValueOfType<String>(json, r'website_comment')!,
      );
    }
    return null;
  }

  static List<WebsiteRow> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WebsiteRow>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebsiteRow.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WebsiteRow> mapFromJson(dynamic json) {
    final map = <String, WebsiteRow>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WebsiteRow.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WebsiteRow-objects as value to a dart map
  static Map<String, List<WebsiteRow>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WebsiteRow>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WebsiteRow.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'website_id',
    'website_hostname',
    'repeat_invoices_cost',
    'website_status',
    'services_name',
    'website_comment',
  };
}

