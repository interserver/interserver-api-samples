part of swagger.api;

class Home {
  /* Last login IP. */
  String lastLoginIp = null;
/* Last login time. */
  String lastLogin = null;
/* Currency symbol. */
  String currency = null;
/* Amount with currency. */
  String amount = null;
/* Number of invoices. */
  int invoiceList = null;
/* Balance with currency. */
  String balance = null;
/* Users full name. */
  String fullName = null;
/* User email address. */
  String email = null;
/* List of tickets. */
  List<String> tickets = [];

  HomeTicketStatus ticketStatus = null;

  HomeTicketStatusView ticketStatusView = null;

  HomeDetails details = null;

  HomeServices services = null;
/* Affiliate amount with currency. */
  String AFFILIATE_AMOUNT = null;

  Home();

  @override
  String toString() {
    return 'Home[lastLoginIp=$lastLoginIp, lastLogin=$lastLogin, currency=$currency, amount=$amount, invoiceList=$invoiceList, balance=$balance, fullName=$fullName, email=$email, tickets=$tickets, ticketStatus=$ticketStatus, ticketStatusView=$ticketStatusView, details=$details, services=$services, AFFILIATE_AMOUNT=$AFFILIATE_AMOUNT, ]';
  }

  Home.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    lastLoginIp = json['last_login_ip'];
    lastLogin = json['last_login'];
    currency = json['currency'];
    amount = json['amount'];
    invoiceList = json['invoice_list'];
    balance = json['balance'];
    fullName = json['full_name'];
    email = json['email'];
    tickets = (json['tickets'] as List).map((item) => item as String).toList();
    ticketStatus = new HomeTicketStatus.fromJson(json['ticketStatus']);
    ticketStatusView = new HomeTicketStatusView.fromJson(json['ticketStatusView']);
    details = new HomeDetails.fromJson(json['details']);
    services = new HomeServices.fromJson(json['services']);
    AFFILIATE_AMOUNT = json['AFFILIATE_AMOUNT'];
  }

  Map<String, dynamic> toJson() {
    return {
      'last_login_ip': lastLoginIp,
      'last_login': lastLogin,
      'currency': currency,
      'amount': amount,
      'invoice_list': invoiceList,
      'balance': balance,
      'full_name': fullName,
      'email': email,
      'tickets': tickets,
      'ticketStatus': ticketStatus,
      'ticketStatusView': ticketStatusView,
      'details': details,
      'services': services,
      'AFFILIATE_AMOUNT': AFFILIATE_AMOUNT
     };
  }

  static List<Home> listFromJson(List<dynamic> json) {
    return json == null ? new List<Home>() : json.map((value) => new Home.fromJson(value)).toList();
  }

  static Map<String, Home> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Home>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Home.fromJson(value));
    }
    return map;
  }
}
