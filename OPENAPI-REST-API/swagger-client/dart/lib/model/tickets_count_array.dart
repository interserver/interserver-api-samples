part of swagger.api;

class TicketsCountArray {
  
  int open = null;

  int on Hold = null;

  int closed = null;

  TicketsCountArray();

  @override
  String toString() {
    return 'TicketsCountArray[open=$open, on Hold=$on Hold, closed=$closed, ]';
  }

  TicketsCountArray.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    open = json['Open'];
    on Hold = json['On Hold'];
    closed = json['Closed'];
  }

  Map<String, dynamic> toJson() {
    return {
      'Open': open,
      'On Hold': on Hold,
      'Closed': closed
     };
  }

  static List<TicketsCountArray> listFromJson(List<dynamic> json) {
    return json == null ? new List<TicketsCountArray>() : json.map((value) => new TicketsCountArray.fromJson(value)).toList();
  }

  static Map<String, TicketsCountArray> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TicketsCountArray>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TicketsCountArray.fromJson(value));
    }
    return map;
  }
}
