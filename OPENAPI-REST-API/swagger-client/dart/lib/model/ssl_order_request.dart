part of swagger.api;

class SslOrderRequest {
  /* SSL package service type id from getNewSsl.serviceTypes. */
  int ssl = null;
/* Domain the certificate is issued for. Wildcard certs require *.domain.com format. */
  String hostname = null;
/* Domain-control approver email (required for all SSL orders). */
  String approverEmail = null;
/* Billing frequency in months (12, 24, or 36). */
  int frequency = 12;
/* Coupon code. */
  String coupon = "";
/* Whether the CSR is server-generated or customer-provided. */
  String csrType = null;
  //enum csrTypeEnum {  generated,  provided,  };
/* PEM-encoded CSR (>= 2048-bit) when csr_type=provided. */
  String csr = "";
/* Contact first name (defaults from account). */
  String firstname = null;
/* Contact last name (defaults from account). */
  String lastname = null;
/* Contact email (defaults from account). */
  String email = null;
/* Contact address (defaults from account). */
  String address = null;
/* Contact city (defaults from account). */
  String city = null;
/* Contact state/region (defaults from account). */
  String state = null;
/* Contact postal code (defaults from account). */
  String zip = null;
/* Contact country (defaults from account). */
  String country = null;
/* Contact phone (defaults from account). */
  String phone = null;
/* Contact company/organization (defaults from account). */
  String company = null;
/* Contact department (defaults to Administration). */
  String department = "Administration";
/* EV certificate incorporating agency (only for EV packages). */
  String agency = null;
/* EV certificate business category (only for EV packages). */
  String businessCategory = null;

  SslOrderRequest();

  @override
  String toString() {
    return 'SslOrderRequest[ssl=$ssl, hostname=$hostname, approverEmail=$approverEmail, frequency=$frequency, coupon=$coupon, csrType=$csrType, csr=$csr, firstname=$firstname, lastname=$lastname, email=$email, address=$address, city=$city, state=$state, zip=$zip, country=$country, phone=$phone, company=$company, department=$department, agency=$agency, businessCategory=$businessCategory, ]';
  }

  SslOrderRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    ssl = json['ssl'];
    hostname = json['hostname'];
    approverEmail = json['approver_email'];
    frequency = json['frequency'];
    coupon = json['coupon'];
    csrType = json['csr_type'];
    csr = json['csr'];
    firstname = json['firstname'];
    lastname = json['lastname'];
    email = json['email'];
    address = json['address'];
    city = json['city'];
    state = json['state'];
    zip = json['zip'];
    country = json['country'];
    phone = json['phone'];
    company = json['company'];
    department = json['department'];
    agency = json['agency'];
    businessCategory = json['business_category'];
  }

  Map<String, dynamic> toJson() {
    return {
      'ssl': ssl,
      'hostname': hostname,
      'approver_email': approverEmail,
      'frequency': frequency,
      'coupon': coupon,
      'csr_type': csrType,
      'csr': csr,
      'firstname': firstname,
      'lastname': lastname,
      'email': email,
      'address': address,
      'city': city,
      'state': state,
      'zip': zip,
      'country': country,
      'phone': phone,
      'company': company,
      'department': department,
      'agency': agency,
      'business_category': businessCategory
     };
  }

  static List<SslOrderRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<SslOrderRequest>() : json.map((value) => new SslOrderRequest.fromJson(value)).toList();
  }

  static Map<String, SslOrderRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, SslOrderRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new SslOrderRequest.fromJson(value));
    }
    return map;
  }
}
