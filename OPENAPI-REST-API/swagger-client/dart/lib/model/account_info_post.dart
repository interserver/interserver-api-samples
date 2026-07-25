part of swagger.api;

class AccountInfoPost {
  /* Your name. */
  String name = null;
/* Your company name. */
  String company = null;
/* Your address. */
  String address = null;
/* Additional address information. */
  String address2 = null;
/* Your city. */
  String city = null;
/* Your state. */
  String state = null;
/* Your ZIP code. */
  String zip = null;
/* Your country. */
  String country = null;
/* Your phone number. */
  String phone = null;
/* Your preferred locale. */
  String locale = null;
/* Your email for invoice notifications. */
  String emailInvoices = null;
/* Your email for abuse notifications. */
  String emailAbuse = null;
/* Set to `true` to disable account resets, or `false` to enable them. */
  bool disableReset = null;
/* Set to `true` to disable server reinstalls, or `false` to enable them. */
  bool disableReinstall = null;
/* Set to `true` to disable server notifications, or `false` to enable them. */
  bool disableServerNotifications = null;
/* Set to `true` to disable email notifications, or `false` to enable them. */
  bool disableEmailNotifications = null;
/* Your GST identification number (if applicable). */
  String gstin = null;

  AccountInfoPost();

  @override
  String toString() {
    return 'AccountInfoPost[name=$name, company=$company, address=$address, address2=$address2, city=$city, state=$state, zip=$zip, country=$country, phone=$phone, locale=$locale, emailInvoices=$emailInvoices, emailAbuse=$emailAbuse, disableReset=$disableReset, disableReinstall=$disableReinstall, disableServerNotifications=$disableServerNotifications, disableEmailNotifications=$disableEmailNotifications, gstin=$gstin, ]';
  }

  AccountInfoPost.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
    company = json['company'];
    address = json['address'];
    address2 = json['address2'];
    city = json['city'];
    state = json['state'];
    zip = json['zip'];
    country = json['country'];
    phone = json['phone'];
    locale = json['locale'];
    emailInvoices = json['email_invoices'];
    emailAbuse = json['email_abuse'];
    disableReset = json['disable_reset'];
    disableReinstall = json['disable_reinstall'];
    disableServerNotifications = json['disable_server_notifications'];
    disableEmailNotifications = json['disable_email_notifications'];
    gstin = json['gstin'];
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'company': company,
      'address': address,
      'address2': address2,
      'city': city,
      'state': state,
      'zip': zip,
      'country': country,
      'phone': phone,
      'locale': locale,
      'email_invoices': emailInvoices,
      'email_abuse': emailAbuse,
      'disable_reset': disableReset,
      'disable_reinstall': disableReinstall,
      'disable_server_notifications': disableServerNotifications,
      'disable_email_notifications': disableEmailNotifications,
      'gstin': gstin
     };
  }

  static List<AccountInfoPost> listFromJson(List<dynamic> json) {
    return json == null ? new List<AccountInfoPost>() : json.map((value) => new AccountInfoPost.fromJson(value)).toList();
  }

  static Map<String, AccountInfoPost> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AccountInfoPost>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AccountInfoPost.fromJson(value));
    }
    return map;
  }
}
