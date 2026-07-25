part of swagger.api;

class LicenseRow {
  /* The id of the license. */
  String licenseId = null;
/* The hostname of the license. */
  String licenseHostname = null;
/* The ip of the license. */
  String licenseIp = null;
/* The services name of the license. */
  String servicesName = null;
/* The cost of the license. */
  String cost = null;
/* The status of the license. */
  String licenseStatus = null;
/* The invoices paid of the license. */
  String invoicesPaid = null;
/* The invoices date of the license. */
  DateTime invoicesDate = null;

  LicenseRow();

  @override
  String toString() {
    return 'LicenseRow[licenseId=$licenseId, licenseHostname=$licenseHostname, licenseIp=$licenseIp, servicesName=$servicesName, cost=$cost, licenseStatus=$licenseStatus, invoicesPaid=$invoicesPaid, invoicesDate=$invoicesDate, ]';
  }

  LicenseRow.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    licenseId = json['license_id'];
    licenseHostname = json['license_hostname'];
    licenseIp = json['license_ip'];
    servicesName = json['services_name'];
    cost = json['cost'];
    licenseStatus = json['license_status'];
    invoicesPaid = json['invoices_paid'];
    invoicesDate = json['invoices_date'] == null ? null : DateTime.parse(json['invoices_date']);
  }

  Map<String, dynamic> toJson() {
    return {
      'license_id': licenseId,
      'license_hostname': licenseHostname,
      'license_ip': licenseIp,
      'services_name': servicesName,
      'cost': cost,
      'license_status': licenseStatus,
      'invoices_paid': invoicesPaid,
      'invoices_date': invoicesDate == null ? '' : invoicesDate.toUtc().toIso8601String()
     };
  }

  static List<LicenseRow> listFromJson(List<dynamic> json) {
    return json == null ? new List<LicenseRow>() : json.map((value) => new LicenseRow.fromJson(value)).toList();
  }

  static Map<String, LicenseRow> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, LicenseRow>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new LicenseRow.fromJson(value));
    }
    return map;
  }
}
