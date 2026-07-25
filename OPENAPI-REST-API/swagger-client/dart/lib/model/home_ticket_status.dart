part of swagger.api;

class HomeTicketStatus {
  /* Count of open tickets. */
  int open = null;
/* Count of tickets on hold. */
  int on Hold = null;

  HomeTicketStatus();

  @override
  String toString() {
    return 'HomeTicketStatus[open=$open, on Hold=$on Hold, ]';
  }

  HomeTicketStatus.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    open = json['Open'];
    on Hold = json['On Hold'];
  }

  Map<String, dynamic> toJson() {
    return {
      'Open': open,
      'On Hold': on Hold
     };
  }

  static List<HomeTicketStatus> listFromJson(List<dynamic> json) {
    return json == null ? new List<HomeTicketStatus>() : json.map((value) => new HomeTicketStatus.fromJson(value)).toList();
  }

  static Map<String, HomeTicketStatus> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, HomeTicketStatus>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new HomeTicketStatus.fromJson(value));
    }
    return map;
  }
}
