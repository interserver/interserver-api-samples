part of swagger.api;

class ScrubIpsRowSchema {
  
  int scrubIpId = null;

  double repeatInvoicesCost = null;

  String scrubIpIp = null;

  String scrubIpStatus = null;

  String servicesName = null;

  ScrubIpsRowSchema();

  @override
  String toString() {
    return 'ScrubIpsRowSchema[scrubIpId=$scrubIpId, repeatInvoicesCost=$repeatInvoicesCost, scrubIpIp=$scrubIpIp, scrubIpStatus=$scrubIpStatus, servicesName=$servicesName, ]';
  }

  ScrubIpsRowSchema.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    scrubIpId = json['scrub_ip_id'];
    repeatInvoicesCost = json['repeat_invoices_cost'];
    scrubIpIp = json['scrub_ip_ip'];
    scrubIpStatus = json['scrub_ip_status'];
    servicesName = json['services_name'];
  }

  Map<String, dynamic> toJson() {
    return {
      'scrub_ip_id': scrubIpId,
      'repeat_invoices_cost': repeatInvoicesCost,
      'scrub_ip_ip': scrubIpIp,
      'scrub_ip_status': scrubIpStatus,
      'services_name': servicesName
     };
  }

  static List<ScrubIpsRowSchema> listFromJson(List<dynamic> json) {
    return json == null ? new List<ScrubIpsRowSchema>() : json.map((value) => new ScrubIpsRowSchema.fromJson(value)).toList();
  }

  static Map<String, ScrubIpsRowSchema> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ScrubIpsRowSchema>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ScrubIpsRowSchema.fromJson(value));
    }
    return map;
  }
}
