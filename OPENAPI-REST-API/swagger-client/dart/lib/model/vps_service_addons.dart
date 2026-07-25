part of swagger.api;

class VpsServiceAddons {
  /* Whether a cPanel license is active on this VPS. */
  bool hasCpanel = null;
/* Whether a DirectAdmin license is active on this VPS. */
  bool hasDirectadmin = null;
/* Whether a Fantastico license is active on this VPS. */
  bool hasFantastico = null;
/* Whether a Softaculous license is active on this VPS. */
  bool hasSoftaculous = null;
/* Whether extra disk space has been added to this VPS. */
  bool hasHdspace = null;
/* Whether a dedicated IP address is assigned to this VPS. */
  bool dedicatedIp = null;
/* List of additional IPv4 addresses assigned to this VPS. */
  List<String> extraIps = [];
/* List of additional IPv6 addresses assigned to this VPS. */
  List<String> extraIps6 = [];
/* List of IP addresses that have unpaid charges. */
  List<String> unpaidIps = [];
/* All IPv4 addresses assigned to this VPS. */
  List<String> ips = [];
/* All IPv6 addresses assigned to this VPS. */
  List<String> ips6 = [];
/* The add-on service ID for the cPanel license. */
  int cpanelId = null;
/* Total monthly add-on cost in cents. */
  int cost = null;
/* List of add-on service IDs active on this VPS. */
  List<String> ids = [];
/* Raw add-on data entries. */
  List<String> rdata = [];

  VpsServiceAddons();

  @override
  String toString() {
    return 'VpsServiceAddons[hasCpanel=$hasCpanel, hasDirectadmin=$hasDirectadmin, hasFantastico=$hasFantastico, hasSoftaculous=$hasSoftaculous, hasHdspace=$hasHdspace, dedicatedIp=$dedicatedIp, extraIps=$extraIps, extraIps6=$extraIps6, unpaidIps=$unpaidIps, ips=$ips, ips6=$ips6, cpanelId=$cpanelId, cost=$cost, ids=$ids, rdata=$rdata, ]';
  }

  VpsServiceAddons.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    hasCpanel = json['has_cpanel'];
    hasDirectadmin = json['has_directadmin'];
    hasFantastico = json['has_fantastico'];
    hasSoftaculous = json['has_softaculous'];
    hasHdspace = json['has_hdspace'];
    dedicatedIp = json['dedicated_ip'];
    extraIps = (json['extra_ips'] as List).map((item) => item as String).toList();
    extraIps6 = (json['extra_ips6'] as List).map((item) => item as String).toList();
    unpaidIps = (json['unpaid_ips'] as List).map((item) => item as String).toList();
    ips = (json['ips'] as List).map((item) => item as String).toList();
    ips6 = (json['ips6'] as List).map((item) => item as String).toList();
    cpanelId = json['cpanel_id'];
    cost = json['cost'];
    ids = (json['ids'] as List).map((item) => item as String).toList();
    rdata = (json['rdata'] as List).map((item) => item as String).toList();
  }

  Map<String, dynamic> toJson() {
    return {
      'has_cpanel': hasCpanel,
      'has_directadmin': hasDirectadmin,
      'has_fantastico': hasFantastico,
      'has_softaculous': hasSoftaculous,
      'has_hdspace': hasHdspace,
      'dedicated_ip': dedicatedIp,
      'extra_ips': extraIps,
      'extra_ips6': extraIps6,
      'unpaid_ips': unpaidIps,
      'ips': ips,
      'ips6': ips6,
      'cpanel_id': cpanelId,
      'cost': cost,
      'ids': ids,
      'rdata': rdata
     };
  }

  static List<VpsServiceAddons> listFromJson(List<dynamic> json) {
    return json == null ? new List<VpsServiceAddons>() : json.map((value) => new VpsServiceAddons.fromJson(value)).toList();
  }

  static Map<String, VpsServiceAddons> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, VpsServiceAddons>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new VpsServiceAddons.fromJson(value));
    }
    return map;
  }
}
