part of swagger.api;

class InlineResponse20028 {
  /* Confirmation message. */
  String text = null;
/* The support ticket ID created for tracking the migration. Use this with `/tickets/{id}` to check migration progress. */
  int ticket = null;

  InlineResponse20028();

  @override
  String toString() {
    return 'InlineResponse20028[text=$text, ticket=$ticket, ]';
  }

  InlineResponse20028.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    text = json['text'];
    ticket = json['ticket'];
  }

  Map<String, dynamic> toJson() {
    return {
      'text': text,
      'ticket': ticket
     };
  }

  static List<InlineResponse20028> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20028>() : json.map((value) => new InlineResponse20028.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20028> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse20028>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse20028.fromJson(value));
    }
    return map;
  }
}
