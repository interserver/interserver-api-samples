part of swagger.api;

class BuyItNowList {
  
  BuyItNowList();

  @override
  String toString() {
    return 'BuyItNowList[]';
  }

  BuyItNowList.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<BuyItNowList> listFromJson(List<dynamic> json) {
    return json == null ? new List<BuyItNowList>() : json.map((value) => new BuyItNowList.fromJson(value)).toList();
  }

  static Map<String, BuyItNowList> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BuyItNowList>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new BuyItNowList.fromJson(value));
    }
    return map;
  }
}
