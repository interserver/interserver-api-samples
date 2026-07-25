part of swagger.api;

class AffiliateTrafficRow {
  
  String trafficId = null;

  String trafficIp = null;

  String trafficUrl = null;

  String trafficAffiliate = null;

  String trafficReferrer = null;

  String trafficTimestamp = null;

  AffiliateTrafficRow();

  @override
  String toString() {
    return 'AffiliateTrafficRow[trafficId=$trafficId, trafficIp=$trafficIp, trafficUrl=$trafficUrl, trafficAffiliate=$trafficAffiliate, trafficReferrer=$trafficReferrer, trafficTimestamp=$trafficTimestamp, ]';
  }

  AffiliateTrafficRow.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    trafficId = json['traffic_id'];
    trafficIp = json['traffic_ip'];
    trafficUrl = json['traffic_url'];
    trafficAffiliate = json['traffic_affiliate'];
    trafficReferrer = json['traffic_referrer'];
    trafficTimestamp = json['traffic_timestamp'];
  }

  Map<String, dynamic> toJson() {
    return {
      'traffic_id': trafficId,
      'traffic_ip': trafficIp,
      'traffic_url': trafficUrl,
      'traffic_affiliate': trafficAffiliate,
      'traffic_referrer': trafficReferrer,
      'traffic_timestamp': trafficTimestamp
     };
  }

  static List<AffiliateTrafficRow> listFromJson(List<dynamic> json) {
    return json == null ? new List<AffiliateTrafficRow>() : json.map((value) => new AffiliateTrafficRow.fromJson(value)).toList();
  }

  static Map<String, AffiliateTrafficRow> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AffiliateTrafficRow>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AffiliateTrafficRow.fromJson(value));
    }
    return map;
  }
}
