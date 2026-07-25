part of swagger.api;

class IpLimitRange {
  /* The begining (or first) IP address in the range. */
  String start = null;
/* The ending (or last) IP address in the range. */
  String end = null;

  IpLimitRange();

  @override
  String toString() {
    return 'IpLimitRange[start=$start, end=$end, ]';
  }

  IpLimitRange.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    start = json['start'];
    end = json['end'];
  }

  Map<String, dynamic> toJson() {
    return {
      'start': start,
      'end': end
     };
  }

  static List<IpLimitRange> listFromJson(List<dynamic> json) {
    return json == null ? new List<IpLimitRange>() : json.map((value) => new IpLimitRange.fromJson(value)).toList();
  }

  static Map<String, IpLimitRange> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, IpLimitRange>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new IpLimitRange.fromJson(value));
    }
    return map;
  }
}
