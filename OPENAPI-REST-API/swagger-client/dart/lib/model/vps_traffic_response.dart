part of swagger.api;

class VpsTrafficResponse {
  
  String name = null;

  String target = null;

  int interval = null;

  VpsTrafficHistoryResponse history = null;

  DateTime last = null;

  List<DateTime> times = [];

  VpsTrafficTotalsResposne totals = null;

  VpsTrafficUsageResponse usage = null;

  List<VpsTrafficDataSectionResponse> data = [];

  VpsTrafficResponse();

  @override
  String toString() {
    return 'VpsTrafficResponse[name=$name, target=$target, interval=$interval, history=$history, last=$last, times=$times, totals=$totals, usage=$usage, data=$data, ]';
  }

  VpsTrafficResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
    target = json['target'];
    interval = json['interval'];
    history = new VpsTrafficHistoryResponse.fromJson(json['history']);
    last = json['last'] == null ? null : DateTime.parse(json['last']);
    times = DateTime.listFromJson(json['times']);
    totals = new VpsTrafficTotalsResposne.fromJson(json['totals']);
    usage = new VpsTrafficUsageResponse.fromJson(json['usage']);
    data = VpsTrafficDataSectionResponse.listFromJson(json['data']);
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'target': target,
      'interval': interval,
      'history': history,
      'last': last == null ? '' : last.toUtc().toIso8601String(),
      'times': times,
      'totals': totals,
      'usage': usage,
      'data': data
     };
  }

  static List<VpsTrafficResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<VpsTrafficResponse>() : json.map((value) => new VpsTrafficResponse.fromJson(value)).toList();
  }

  static Map<String, VpsTrafficResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, VpsTrafficResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new VpsTrafficResponse.fromJson(value));
    }
    return map;
  }
}
