part of swagger.api;

class VpsRow {
  /* The id of the vps. */
  String vpsId = null;
/* The name of the vps. */
  String vpsName = null;
/* The repeat invoices cost of the vps. */
  String repeatInvoicesCost = null;
/* The hostname of the vps. */
  String vpsHostname = null;
/* The ip of the vps. */
  String vpsIp = null;
/* The status of the vps. */
  String vpsStatus = null;
/* The services name of the vps. */
  String servicesName = null;
/* The comment of the vps. */
  String vpsComment = null;

  VpsRow();

  @override
  String toString() {
    return 'VpsRow[vpsId=$vpsId, vpsName=$vpsName, repeatInvoicesCost=$repeatInvoicesCost, vpsHostname=$vpsHostname, vpsIp=$vpsIp, vpsStatus=$vpsStatus, servicesName=$servicesName, vpsComment=$vpsComment, ]';
  }

  VpsRow.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    vpsId = json['vps_id'];
    vpsName = json['vps_name'];
    repeatInvoicesCost = json['repeat_invoices_cost'];
    vpsHostname = json['vps_hostname'];
    vpsIp = json['vps_ip'];
    vpsStatus = json['vps_status'];
    servicesName = json['services_name'];
    vpsComment = json['vps_comment'];
  }

  Map<String, dynamic> toJson() {
    return {
      'vps_id': vpsId,
      'vps_name': vpsName,
      'repeat_invoices_cost': repeatInvoicesCost,
      'vps_hostname': vpsHostname,
      'vps_ip': vpsIp,
      'vps_status': vpsStatus,
      'services_name': servicesName,
      'vps_comment': vpsComment
     };
  }

  static List<VpsRow> listFromJson(List<dynamic> json) {
    return json == null ? new List<VpsRow>() : json.map((value) => new VpsRow.fromJson(value)).toList();
  }

  static Map<String, VpsRow> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, VpsRow>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new VpsRow.fromJson(value));
    }
    return map;
  }
}
