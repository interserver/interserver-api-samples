part of swagger.api;

class DomainWhoisPrivacyRequest {
  /* Action to perform (enable or disableCancel). */
  String func = null;
/* CSRF token if the API requires it for the account. */
  String csrfToken = null;

  String domainFirstname = null;

  String domainLastname = null;

  String domainEmail = null;

  String domainAddress = null;

  String domainAddress2 = null;

  String domainAddress3 = null;

  String domainCity = null;

  String domainState = null;

  String domainZip = null;

  String domainCountry = null;

  String domainPhone = null;

  String domainFax = null;

  String domainCompany = null;

  String domainExtra = null;

  DomainWhoisPrivacyRequest();

  @override
  String toString() {
    return 'DomainWhoisPrivacyRequest[func=$func, csrfToken=$csrfToken, domainFirstname=$domainFirstname, domainLastname=$domainLastname, domainEmail=$domainEmail, domainAddress=$domainAddress, domainAddress2=$domainAddress2, domainAddress3=$domainAddress3, domainCity=$domainCity, domainState=$domainState, domainZip=$domainZip, domainCountry=$domainCountry, domainPhone=$domainPhone, domainFax=$domainFax, domainCompany=$domainCompany, domainExtra=$domainExtra, ]';
  }

  DomainWhoisPrivacyRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    func = json['func'];
    csrfToken = json['csrf_token'];
    domainFirstname = json['domain_firstname'];
    domainLastname = json['domain_lastname'];
    domainEmail = json['domain_email'];
    domainAddress = json['domain_address'];
    domainAddress2 = json['domain_address2'];
    domainAddress3 = json['domain_address3'];
    domainCity = json['domain_city'];
    domainState = json['domain_state'];
    domainZip = json['domain_zip'];
    domainCountry = json['domain_country'];
    domainPhone = json['domain_phone'];
    domainFax = json['domain_fax'];
    domainCompany = json['domain_company'];
    domainExtra = json['domain_extra'];
  }

  Map<String, dynamic> toJson() {
    return {
      'func': func,
      'csrf_token': csrfToken,
      'domain_firstname': domainFirstname,
      'domain_lastname': domainLastname,
      'domain_email': domainEmail,
      'domain_address': domainAddress,
      'domain_address2': domainAddress2,
      'domain_address3': domainAddress3,
      'domain_city': domainCity,
      'domain_state': domainState,
      'domain_zip': domainZip,
      'domain_country': domainCountry,
      'domain_phone': domainPhone,
      'domain_fax': domainFax,
      'domain_company': domainCompany,
      'domain_extra': domainExtra
     };
  }

  static List<DomainWhoisPrivacyRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<DomainWhoisPrivacyRequest>() : json.map((value) => new DomainWhoisPrivacyRequest.fromJson(value)).toList();
  }

  static Map<String, DomainWhoisPrivacyRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DomainWhoisPrivacyRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DomainWhoisPrivacyRequest.fromJson(value));
    }
    return map;
  }
}
