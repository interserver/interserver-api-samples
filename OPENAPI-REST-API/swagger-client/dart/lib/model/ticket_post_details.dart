part of swagger.api;

class TicketPostDetails {
  
  TicketPostDetails();

  @override
  String toString() {
    return 'TicketPostDetails[]';
  }

  TicketPostDetails.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<TicketPostDetails> listFromJson(List<dynamic> json) {
    return json == null ? new List<TicketPostDetails>() : json.map((value) => new TicketPostDetails.fromJson(value)).toList();
  }

  static Map<String, TicketPostDetails> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TicketPostDetails>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TicketPostDetails.fromJson(value));
    }
    return map;
  }
}
