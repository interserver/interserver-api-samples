part of swagger.api;

class MailOrder {
  /* The ID of the order. */
  int id = null;
/* The order status. */
  String status = null;
/* The username to use for this order. */
  String username = null;
/* Optional order comment. */
  String comment = null;

  MailOrder();

  @override
  String toString() {
    return 'MailOrder[id=$id, status=$status, username=$username, comment=$comment, ]';
  }

  MailOrder.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    status = json['status'];
    username = json['username'];
    comment = json['comment'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'status': status,
      'username': username,
      'comment': comment
     };
  }

  static List<MailOrder> listFromJson(List<dynamic> json) {
    return json == null ? new List<MailOrder>() : json.map((value) => new MailOrder.fromJson(value)).toList();
  }

  static Map<String, MailOrder> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MailOrder>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new MailOrder.fromJson(value));
    }
    return map;
  }
}
