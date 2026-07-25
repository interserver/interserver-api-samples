part of swagger.api;

class InlineResponse20010 {
  /* The response type indicating how to handle the payment. Possible values: `redirect` (redirect user to a URL), `submit` (submit a form to a URL), `single` (immediate result). */
  String type = null;
  //enum typeEnum {  redirect,  submit,  single,  };
/* URL to redirect the user to for payment (when type is `redirect`). */
  String redirect = null;
/* Form action URL (when type is `submit`). */
  String action = null;
/* HTTP method for the form submission (when type is `submit`). */
  String method = null;
/* Form field name-value pairs to submit (when type is `submit`). */
  Object items = null;
/* Status or result text. */
  String text = null;

  InlineResponse20010();

  @override
  String toString() {
    return 'InlineResponse20010[type=$type, redirect=$redirect, action=$action, method=$method, items=$items, text=$text, ]';
  }

  InlineResponse20010.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type = json['type'];
    redirect = json['redirect'];
    action = json['action'];
    method = json['method'];
    items = new Object.fromJson(json['items']);
    text = json['text'];
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'redirect': redirect,
      'action': action,
      'method': method,
      'items': items,
      'text': text
     };
  }

  static List<InlineResponse20010> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20010>() : json.map((value) => new InlineResponse20010.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20010> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse20010>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse20010.fromJson(value));
    }
    return map;
  }
}
