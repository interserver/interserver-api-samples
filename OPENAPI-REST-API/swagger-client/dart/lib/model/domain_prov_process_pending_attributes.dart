part of swagger.api;

class DomainProvProcessPendingAttributes {
  
  String id = null;

  String orderId = null;

  String registration expiration date = null;

  String fAutoRenew = null;

  DomainProvProcessPendingAttributes();

  @override
  String toString() {
    return 'DomainProvProcessPendingAttributes[id=$id, orderId=$orderId, registration expiration date=$registration expiration date, fAutoRenew=$fAutoRenew, ]';
  }

  DomainProvProcessPendingAttributes.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    orderId = json['order_id'];
    registration expiration date = json['registration expiration date'];
    fAutoRenew = json['f_auto_renew'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'order_id': orderId,
      'registration expiration date': registration expiration date,
      'f_auto_renew': fAutoRenew
     };
  }

  static List<DomainProvProcessPendingAttributes> listFromJson(List<dynamic> json) {
    return json == null ? new List<DomainProvProcessPendingAttributes>() : json.map((value) => new DomainProvProcessPendingAttributes.fromJson(value)).toList();
  }

  static Map<String, DomainProvProcessPendingAttributes> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DomainProvProcessPendingAttributes>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DomainProvProcessPendingAttributes.fromJson(value));
    }
    return map;
  }
}
