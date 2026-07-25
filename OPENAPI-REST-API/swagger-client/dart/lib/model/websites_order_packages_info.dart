part of swagger.api;

class WebsitesOrderPackagesInfo {
  /* The ID of the package. */
  String servicesId = null;
/* The name of the package. */
  String servicesName = null;
/* The cost of the package. */
  String servicesCost = null;
/* The category of the package. */
  String servicesCategory = null;
/* Indicates if the package is buyable (1 for yes, 0 for no). */
  String servicesBuyable = null;
/* The type of the package. */
  String servicesType = null;
/* Additional field 1 for the package. */
  String servicesField1 = null;
/* Additional field 2 for the package. */
  String servicesField2 = null;
/* The module of the package. */
  String servicesModule = null;
/* HTML content for the package. */
  String servicesHtml = null;
/* Description of the package. */
  String servicesDescription = null;
/* URL for more information about the package. */
  String servicesMoreinfoUrl = null;
/* Indicates if the package is hidden (1 for yes, 0 for no). */
  String servicesHidden = null;

  WebsitesOrderPackagesInfo();

  @override
  String toString() {
    return 'WebsitesOrderPackagesInfo[servicesId=$servicesId, servicesName=$servicesName, servicesCost=$servicesCost, servicesCategory=$servicesCategory, servicesBuyable=$servicesBuyable, servicesType=$servicesType, servicesField1=$servicesField1, servicesField2=$servicesField2, servicesModule=$servicesModule, servicesHtml=$servicesHtml, servicesDescription=$servicesDescription, servicesMoreinfoUrl=$servicesMoreinfoUrl, servicesHidden=$servicesHidden, ]';
  }

  WebsitesOrderPackagesInfo.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    servicesId = json['services_id'];
    servicesName = json['services_name'];
    servicesCost = json['services_cost'];
    servicesCategory = json['services_category'];
    servicesBuyable = json['services_buyable'];
    servicesType = json['services_type'];
    servicesField1 = json['services_field1'];
    servicesField2 = json['services_field2'];
    servicesModule = json['services_module'];
    servicesHtml = json['services_html'];
    servicesDescription = json['services_description'];
    servicesMoreinfoUrl = json['services_moreinfo_url'];
    servicesHidden = json['services_hidden'];
  }

  Map<String, dynamic> toJson() {
    return {
      'services_id': servicesId,
      'services_name': servicesName,
      'services_cost': servicesCost,
      'services_category': servicesCategory,
      'services_buyable': servicesBuyable,
      'services_type': servicesType,
      'services_field1': servicesField1,
      'services_field2': servicesField2,
      'services_module': servicesModule,
      'services_html': servicesHtml,
      'services_description': servicesDescription,
      'services_moreinfo_url': servicesMoreinfoUrl,
      'services_hidden': servicesHidden
     };
  }

  static List<WebsitesOrderPackagesInfo> listFromJson(List<dynamic> json) {
    return json == null ? new List<WebsitesOrderPackagesInfo>() : json.map((value) => new WebsitesOrderPackagesInfo.fromJson(value)).toList();
  }

  static Map<String, WebsitesOrderPackagesInfo> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, WebsitesOrderPackagesInfo>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new WebsitesOrderPackagesInfo.fromJson(value));
    }
    return map;
  }
}
