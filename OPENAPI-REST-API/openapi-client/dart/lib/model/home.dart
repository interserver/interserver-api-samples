//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class Home {
  /// Returns a new [Home] instance.
  Home({
    required this.lastLoginIp,
    required this.lastLogin,
    required this.currency,
    required this.amount,
    required this.invoiceList,
    required this.balance,
    required this.fullName,
    required this.email,
    this.tickets = const [],
    required this.ticketStatus,
    required this.ticketStatusView,
    required this.details,
    required this.services,
    required this.AFFILIATE_AMOUNT,
  });

  /// Last login IP.
  String lastLoginIp;

  /// Last login time.
  String lastLogin;

  /// Currency symbol.
  String currency;

  /// Amount with currency.
  String amount;

  /// Number of invoices.
  int invoiceList;

  /// Balance with currency.
  String balance;

  /// Users full name.
  String fullName;

  /// User email address.
  String email;

  /// List of tickets.
  List<String> tickets;

  HomeTicketStatus ticketStatus;

  HomeTicketStatusView ticketStatusView;

  HomeDetails details;

  HomeServices services;

  /// Affiliate amount with currency.
  String AFFILIATE_AMOUNT;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Home &&
    other.lastLoginIp == lastLoginIp &&
    other.lastLogin == lastLogin &&
    other.currency == currency &&
    other.amount == amount &&
    other.invoiceList == invoiceList &&
    other.balance == balance &&
    other.fullName == fullName &&
    other.email == email &&
    _deepEquality.equals(other.tickets, tickets) &&
    other.ticketStatus == ticketStatus &&
    other.ticketStatusView == ticketStatusView &&
    other.details == details &&
    other.services == services &&
    other.AFFILIATE_AMOUNT == AFFILIATE_AMOUNT;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (lastLoginIp.hashCode) +
    (lastLogin.hashCode) +
    (currency.hashCode) +
    (amount.hashCode) +
    (invoiceList.hashCode) +
    (balance.hashCode) +
    (fullName.hashCode) +
    (email.hashCode) +
    (tickets.hashCode) +
    (ticketStatus.hashCode) +
    (ticketStatusView.hashCode) +
    (details.hashCode) +
    (services.hashCode) +
    (AFFILIATE_AMOUNT.hashCode);

  @override
  String toString() => 'Home[lastLoginIp=$lastLoginIp, lastLogin=$lastLogin, currency=$currency, amount=$amount, invoiceList=$invoiceList, balance=$balance, fullName=$fullName, email=$email, tickets=$tickets, ticketStatus=$ticketStatus, ticketStatusView=$ticketStatusView, details=$details, services=$services, AFFILIATE_AMOUNT=$AFFILIATE_AMOUNT]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'last_login_ip'] = this.lastLoginIp;
      json[r'last_login'] = this.lastLogin;
      json[r'currency'] = this.currency;
      json[r'amount'] = this.amount;
      json[r'invoice_list'] = this.invoiceList;
      json[r'balance'] = this.balance;
      json[r'full_name'] = this.fullName;
      json[r'email'] = this.email;
      json[r'tickets'] = this.tickets;
      json[r'ticketStatus'] = this.ticketStatus;
      json[r'ticketStatusView'] = this.ticketStatusView;
      json[r'details'] = this.details;
      json[r'services'] = this.services;
      json[r'AFFILIATE_AMOUNT'] = this.AFFILIATE_AMOUNT;
    return json;
  }

  /// Returns a new [Home] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Home? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'last_login_ip'), 'Required key "Home[last_login_ip]" is missing from JSON.');
        assert(json[r'last_login_ip'] != null, 'Required key "Home[last_login_ip]" has a null value in JSON.');
        assert(json.containsKey(r'last_login'), 'Required key "Home[last_login]" is missing from JSON.');
        assert(json[r'last_login'] != null, 'Required key "Home[last_login]" has a null value in JSON.');
        assert(json.containsKey(r'currency'), 'Required key "Home[currency]" is missing from JSON.');
        assert(json[r'currency'] != null, 'Required key "Home[currency]" has a null value in JSON.');
        assert(json.containsKey(r'amount'), 'Required key "Home[amount]" is missing from JSON.');
        assert(json[r'amount'] != null, 'Required key "Home[amount]" has a null value in JSON.');
        assert(json.containsKey(r'invoice_list'), 'Required key "Home[invoice_list]" is missing from JSON.');
        assert(json[r'invoice_list'] != null, 'Required key "Home[invoice_list]" has a null value in JSON.');
        assert(json.containsKey(r'balance'), 'Required key "Home[balance]" is missing from JSON.');
        assert(json[r'balance'] != null, 'Required key "Home[balance]" has a null value in JSON.');
        assert(json.containsKey(r'full_name'), 'Required key "Home[full_name]" is missing from JSON.');
        assert(json[r'full_name'] != null, 'Required key "Home[full_name]" has a null value in JSON.');
        assert(json.containsKey(r'email'), 'Required key "Home[email]" is missing from JSON.');
        assert(json[r'email'] != null, 'Required key "Home[email]" has a null value in JSON.');
        assert(json.containsKey(r'tickets'), 'Required key "Home[tickets]" is missing from JSON.');
        assert(json[r'tickets'] != null, 'Required key "Home[tickets]" has a null value in JSON.');
        assert(json.containsKey(r'ticketStatus'), 'Required key "Home[ticketStatus]" is missing from JSON.');
        assert(json[r'ticketStatus'] != null, 'Required key "Home[ticketStatus]" has a null value in JSON.');
        assert(json.containsKey(r'ticketStatusView'), 'Required key "Home[ticketStatusView]" is missing from JSON.');
        assert(json[r'ticketStatusView'] != null, 'Required key "Home[ticketStatusView]" has a null value in JSON.');
        assert(json.containsKey(r'details'), 'Required key "Home[details]" is missing from JSON.');
        assert(json[r'details'] != null, 'Required key "Home[details]" has a null value in JSON.');
        assert(json.containsKey(r'services'), 'Required key "Home[services]" is missing from JSON.');
        assert(json[r'services'] != null, 'Required key "Home[services]" has a null value in JSON.');
        assert(json.containsKey(r'AFFILIATE_AMOUNT'), 'Required key "Home[AFFILIATE_AMOUNT]" is missing from JSON.');
        assert(json[r'AFFILIATE_AMOUNT'] != null, 'Required key "Home[AFFILIATE_AMOUNT]" has a null value in JSON.');
        return true;
      }());

      return Home(
        lastLoginIp: mapValueOfType<String>(json, r'last_login_ip')!,
        lastLogin: mapValueOfType<String>(json, r'last_login')!,
        currency: mapValueOfType<String>(json, r'currency')!,
        amount: mapValueOfType<String>(json, r'amount')!,
        invoiceList: mapValueOfType<int>(json, r'invoice_list')!,
        balance: mapValueOfType<String>(json, r'balance')!,
        fullName: mapValueOfType<String>(json, r'full_name')!,
        email: mapValueOfType<String>(json, r'email')!,
        tickets: json[r'tickets'] is Iterable
            ? (json[r'tickets'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        ticketStatus: HomeTicketStatus.fromJson(json[r'ticketStatus'])!,
        ticketStatusView: HomeTicketStatusView.fromJson(json[r'ticketStatusView'])!,
        details: HomeDetails.fromJson(json[r'details'])!,
        services: HomeServices.fromJson(json[r'services'])!,
        AFFILIATE_AMOUNT: mapValueOfType<String>(json, r'AFFILIATE_AMOUNT')!,
      );
    }
    return null;
  }

  static List<Home> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Home>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Home.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Home> mapFromJson(dynamic json) {
    final map = <String, Home>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Home.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Home-objects as value to a dart map
  static Map<String, List<Home>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Home>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Home.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'last_login_ip',
    'last_login',
    'currency',
    'amount',
    'invoice_list',
    'balance',
    'full_name',
    'email',
    'tickets',
    'ticketStatus',
    'ticketStatusView',
    'details',
    'services',
    'AFFILIATE_AMOUNT',
  };
}

