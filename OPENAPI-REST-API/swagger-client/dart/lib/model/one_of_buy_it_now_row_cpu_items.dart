part of swagger.api;

class OneOfBuyItNowRowCpuItems {
  
  OneOfBuyItNowRowCpuItems();

  @override
  String toString() {
    return 'OneOfBuyItNowRowCpuItems[]';
  }

  OneOfBuyItNowRowCpuItems.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<OneOfBuyItNowRowCpuItems> listFromJson(List<dynamic> json) {
    return json == null ? new List<OneOfBuyItNowRowCpuItems>() : json.map((value) => new OneOfBuyItNowRowCpuItems.fromJson(value)).toList();
  }

  static Map<String, OneOfBuyItNowRowCpuItems> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OneOfBuyItNowRowCpuItems>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OneOfBuyItNowRowCpuItems.fromJson(value));
    }
    return map;
  }
}
