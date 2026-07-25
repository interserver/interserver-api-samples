part of swagger.api;

class InlineResponse20021 {
  /* Status message. */
  String text = null;
/* Invoice ID for payment. */
  int invoice = null;
/* Server order ID. */
  int order = null;

  InlineResponse20021();

  @override
  String toString() {
    return 'InlineResponse20021[text=$text, invoice=$invoice, order=$order, ]';
  }

  InlineResponse20021.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    text = json['text'];
    invoice = json['invoice'];
    order = json['order'];
  }

  Map<String, dynamic> toJson() {
    return {
      'text': text,
      'invoice': invoice,
      'order': order
     };
  }

  static List<InlineResponse20021> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20021>() : json.map((value) => new InlineResponse20021.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20021> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse20021>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse20021.fromJson(value));
    }
    return map;
  }
}
