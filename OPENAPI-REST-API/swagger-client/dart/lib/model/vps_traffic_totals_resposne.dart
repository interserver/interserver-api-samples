part of swagger.api;

class VpsTrafficTotalsResposne {
  
  VpsTrafficTotalsSectionResponse day = null;

  VpsTrafficTotalsSectionResponse month = null;

  VpsTrafficTotalsSectionResponse year = null;

  VpsTrafficTotalsSectionResponse all = null;

  VpsTrafficTotalsResposne();

  @override
  String toString() {
    return 'VpsTrafficTotalsResposne[day=$day, month=$month, year=$year, all=$all, ]';
  }

  VpsTrafficTotalsResposne.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    day = new VpsTrafficTotalsSectionResponse.fromJson(json['day']);
    month = new VpsTrafficTotalsSectionResponse.fromJson(json['month']);
    year = new VpsTrafficTotalsSectionResponse.fromJson(json['year']);
    all = new VpsTrafficTotalsSectionResponse.fromJson(json['all']);
  }

  Map<String, dynamic> toJson() {
    return {
      'day': day,
      'month': month,
      'year': year,
      'all': all
     };
  }

  static List<VpsTrafficTotalsResposne> listFromJson(List<dynamic> json) {
    return json == null ? new List<VpsTrafficTotalsResposne>() : json.map((value) => new VpsTrafficTotalsResposne.fromJson(value)).toList();
  }

  static Map<String, VpsTrafficTotalsResposne> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, VpsTrafficTotalsResposne>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new VpsTrafficTotalsResposne.fromJson(value));
    }
    return map;
  }
}
