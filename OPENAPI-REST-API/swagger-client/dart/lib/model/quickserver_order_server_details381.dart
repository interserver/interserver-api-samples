part of swagger.api;

class QuickserverOrderServerDetails381 {
  /* CPU details of the server. */
  String cpu = null;
/* RAM capacity of the server. */
  String ram = null;
/* Hard disk capacity of the server. */
  String hd = null;
/* Number of CPU cores. */
  int cores = null;
/* Cost of the server. */
  String cost = null;

  QuickserverOrderServerDetails381();

  @override
  String toString() {
    return 'QuickserverOrderServerDetails381[cpu=$cpu, ram=$ram, hd=$hd, cores=$cores, cost=$cost, ]';
  }

  QuickserverOrderServerDetails381.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    cpu = json['cpu'];
    ram = json['ram'];
    hd = json['hd'];
    cores = json['cores'];
    cost = json['cost'];
  }

  Map<String, dynamic> toJson() {
    return {
      'cpu': cpu,
      'ram': ram,
      'hd': hd,
      'cores': cores,
      'cost': cost
     };
  }

  static List<QuickserverOrderServerDetails381> listFromJson(List<dynamic> json) {
    return json == null ? new List<QuickserverOrderServerDetails381>() : json.map((value) => new QuickserverOrderServerDetails381.fromJson(value)).toList();
  }

  static Map<String, QuickserverOrderServerDetails381> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, QuickserverOrderServerDetails381>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new QuickserverOrderServerDetails381.fromJson(value));
    }
    return map;
  }
}
