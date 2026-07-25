part of swagger.api;

class WebsiteServiceMaster {
  /* Website ID for the service master */
  String websiteId = null;
/* Website name for the service master */
  String websiteName = null;
/* IP address for the service master */
  String websiteIp = null;
/* Website type for the service master */
  String websiteType = null;
/* Availability status for the service master */
  String websiteAvailable = null;
/* Hard drive size for the service master */
  String websiteHdsize = null;
/* Free hard drive space for the service master */
  String websiteHdfree = null;
/* Load for the service master */
  String websiteLoad = null;
/* Last update date for the service master */
  String websiteLastUpdate = null;
/* Maximum number of sites for the service master */
  String websiteMaxSites = null;
/* Order number for the service master */
  String websiteOrder = null;
/* Partitions for the service master */
  String websitePartitions = null;
/* DNS server 1 for the service master */
  String websiteDns1 = null;
/* DNS server 2 for the service master */
  String websiteDns2 = null;

  WebsiteServiceMaster();

  @override
  String toString() {
    return 'WebsiteServiceMaster[websiteId=$websiteId, websiteName=$websiteName, websiteIp=$websiteIp, websiteType=$websiteType, websiteAvailable=$websiteAvailable, websiteHdsize=$websiteHdsize, websiteHdfree=$websiteHdfree, websiteLoad=$websiteLoad, websiteLastUpdate=$websiteLastUpdate, websiteMaxSites=$websiteMaxSites, websiteOrder=$websiteOrder, websitePartitions=$websitePartitions, websiteDns1=$websiteDns1, websiteDns2=$websiteDns2, ]';
  }

  WebsiteServiceMaster.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    websiteId = json['website_id'];
    websiteName = json['website_name'];
    websiteIp = json['website_ip'];
    websiteType = json['website_type'];
    websiteAvailable = json['website_available'];
    websiteHdsize = json['website_hdsize'];
    websiteHdfree = json['website_hdfree'];
    websiteLoad = json['website_load'];
    websiteLastUpdate = json['website_last_update'];
    websiteMaxSites = json['website_max_sites'];
    websiteOrder = json['website_order'];
    websitePartitions = json['website_partitions'];
    websiteDns1 = json['website_dns1'];
    websiteDns2 = json['website_dns2'];
  }

  Map<String, dynamic> toJson() {
    return {
      'website_id': websiteId,
      'website_name': websiteName,
      'website_ip': websiteIp,
      'website_type': websiteType,
      'website_available': websiteAvailable,
      'website_hdsize': websiteHdsize,
      'website_hdfree': websiteHdfree,
      'website_load': websiteLoad,
      'website_last_update': websiteLastUpdate,
      'website_max_sites': websiteMaxSites,
      'website_order': websiteOrder,
      'website_partitions': websitePartitions,
      'website_dns1': websiteDns1,
      'website_dns2': websiteDns2
     };
  }

  static List<WebsiteServiceMaster> listFromJson(List<dynamic> json) {
    return json == null ? new List<WebsiteServiceMaster>() : json.map((value) => new WebsiteServiceMaster.fromJson(value)).toList();
  }

  static Map<String, WebsiteServiceMaster> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, WebsiteServiceMaster>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new WebsiteServiceMaster.fromJson(value));
    }
    return map;
  }
}
