part of swagger.api;

class AffiliateDockSetup {
  
  String affiliateDockTitle = null;

  String affiliateDockDescription = null;

  String referrerCoupon = null;

  AffiliateDockSetup();

  @override
  String toString() {
    return 'AffiliateDockSetup[affiliateDockTitle=$affiliateDockTitle, affiliateDockDescription=$affiliateDockDescription, referrerCoupon=$referrerCoupon, ]';
  }

  AffiliateDockSetup.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    affiliateDockTitle = json['affiliate_dock_title'];
    affiliateDockDescription = json['affiliate_dock_description'];
    referrerCoupon = json['referrer_coupon'];
  }

  Map<String, dynamic> toJson() {
    return {
      'affiliate_dock_title': affiliateDockTitle,
      'affiliate_dock_description': affiliateDockDescription,
      'referrer_coupon': referrerCoupon
     };
  }

  static List<AffiliateDockSetup> listFromJson(List<dynamic> json) {
    return json == null ? new List<AffiliateDockSetup>() : json.map((value) => new AffiliateDockSetup.fromJson(value)).toList();
  }

  static Map<String, AffiliateDockSetup> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AffiliateDockSetup>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AffiliateDockSetup.fromJson(value));
    }
    return map;
  }
}
