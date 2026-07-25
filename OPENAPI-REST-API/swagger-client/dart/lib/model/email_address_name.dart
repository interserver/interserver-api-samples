part of swagger.api;

class EmailAddressName {
  /* The email address. */
  String email = null;
/* Name to use for the sending contact. */
  String name = null;

  EmailAddressName();

  @override
  String toString() {
    return 'EmailAddressName[email=$email, name=$name, ]';
  }

  EmailAddressName.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    email = json['email'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'name': name
     };
  }

  static List<EmailAddressName> listFromJson(List<dynamic> json) {
    return json == null ? new List<EmailAddressName>() : json.map((value) => new EmailAddressName.fromJson(value)).toList();
  }

  static Map<String, EmailAddressName> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, EmailAddressName>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new EmailAddressName.fromJson(value));
    }
    return map;
  }
}
