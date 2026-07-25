part of swagger.api;

class WebsiteRow {
  /* The id of the website. */
  String websiteId = null;
/* The hostname of the website. */
  String websiteHostname = null;
/* The repeat invoices cost of the website. */
  String repeatInvoicesCost = null;
/* The status of the website. */
  String websiteStatus = null;
/* The services name of the website. */
  String servicesName = null;
/* The comment of the website. */
  String websiteComment = null;

  WebsiteRow();

  @override
  String toString() {
    return 'WebsiteRow[websiteId=$websiteId, websiteHostname=$websiteHostname, repeatInvoicesCost=$repeatInvoicesCost, websiteStatus=$websiteStatus, servicesName=$servicesName, websiteComment=$websiteComment, ]';
  }

  WebsiteRow.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    websiteId = json['website_id'];
    websiteHostname = json['website_hostname'];
    repeatInvoicesCost = json['repeat_invoices_cost'];
    websiteStatus = json['website_status'];
    servicesName = json['services_name'];
    websiteComment = json['website_comment'];
  }

  Map<String, dynamic> toJson() {
    return {
      'website_id': websiteId,
      'website_hostname': websiteHostname,
      'repeat_invoices_cost': repeatInvoicesCost,
      'website_status': websiteStatus,
      'services_name': servicesName,
      'website_comment': websiteComment
     };
  }

  static List<WebsiteRow> listFromJson(List<dynamic> json) {
    return json == null ? new List<WebsiteRow>() : json.map((value) => new WebsiteRow.fromJson(value)).toList();
  }

  static Map<String, WebsiteRow> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, WebsiteRow>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new WebsiteRow.fromJson(value));
    }
    return map;
  }
}
