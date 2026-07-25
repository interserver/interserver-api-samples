part of swagger.api;

class HomeTicketStatusView {
  /* Status corresponding to view number 4. */
  String n4 = null;
/* Status corresponding to view number 5. */
  String n5 = null;
/* Status corresponding to view number 6. */
  String n6 = null;

  HomeTicketStatusView();

  @override
  String toString() {
    return 'HomeTicketStatusView[n4=$n4, n5=$n5, n6=$n6, ]';
  }

  HomeTicketStatusView.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    n4 = json['4'];
    n5 = json['5'];
    n6 = json['6'];
  }

  Map<String, dynamic> toJson() {
    return {
      '4': n4,
      '5': n5,
      '6': n6
     };
  }

  static List<HomeTicketStatusView> listFromJson(List<dynamic> json) {
    return json == null ? new List<HomeTicketStatusView>() : json.map((value) => new HomeTicketStatusView.fromJson(value)).toList();
  }

  static Map<String, HomeTicketStatusView> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, HomeTicketStatusView>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new HomeTicketStatusView.fromJson(value));
    }
    return map;
  }
}
