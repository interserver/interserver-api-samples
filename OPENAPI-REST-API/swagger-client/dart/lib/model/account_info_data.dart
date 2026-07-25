part of swagger.api;

class AccountInfoData {
  
  String group = null;

  String address = null;

  String city = null;

  String country = null;

  String disableCc = null;

  String fraudrecordScore = null;

  String ima = null;

  String name = null;

  String paymentMethod = null;

  String phone = null;

  String pin = null;

  String state = null;

  String status = null;

  String zip = null;

  String accountId = null;

  String accountLid = null;

  String address2 = null;

  String affiliateDockDescription = null;

  String affiliateDockTitle = null;

  String affiliatePaymentMethod = null;

  String affiliatePaypal = null;

  String cc = null;

  String ccAuto = null;

  String ccExp = null;

  String ccType = null;

  String ccWhitelist = null;

  AccountInfoDataCcs ccs = null;

  String ccsAdded = null;

  String company = null;

  String currency = null;

  String disableReinstall = null;

  String disableReset = null;

  String email = null;

  String emailAbuse = null;

  AccountInfoDataEmailSettings emailSettings = null;

  AccountInfoDataExtra extra = null;

  String facebookId = null;

  String facebookUrl = null;

  String firstname = null;

  AccountInfoDataFraudrecord fraudrecord = null;

  String githubId = null;

  String githubUrl = null;

  String googleId = null;

  String googleUrl = null;

  String innertellId = null;

  String lastname = null;

  String locale = null;

  AccountInfoMaxMindResponse maxmind = null;

  String maxmindScore = null;

  String mbId = null;

  String modernbillId = null;

  String picture = null;

  String referrerCoupon = null;

  String resellerMarkup = null;

  String username = null;

  String sshKey = null;

  String sshKeyWrapped = null;

  String apiKey = null;

  String apiKeyWrapped = null;

  String n2faGoogleKey = null;

  bool n2faGoogleEnabled = null;

  int n2faGoogle = null;

  String n2faGoogleSplit = null;

  String n2faGoogleQr = null;

  AccountInfoData();

  @override
  String toString() {
    return 'AccountInfoData[group=$group, address=$address, city=$city, country=$country, disableCc=$disableCc, fraudrecordScore=$fraudrecordScore, ima=$ima, name=$name, paymentMethod=$paymentMethod, phone=$phone, pin=$pin, state=$state, status=$status, zip=$zip, accountId=$accountId, accountLid=$accountLid, address2=$address2, affiliateDockDescription=$affiliateDockDescription, affiliateDockTitle=$affiliateDockTitle, affiliatePaymentMethod=$affiliatePaymentMethod, affiliatePaypal=$affiliatePaypal, cc=$cc, ccAuto=$ccAuto, ccExp=$ccExp, ccType=$ccType, ccWhitelist=$ccWhitelist, ccs=$ccs, ccsAdded=$ccsAdded, company=$company, currency=$currency, disableReinstall=$disableReinstall, disableReset=$disableReset, email=$email, emailAbuse=$emailAbuse, emailSettings=$emailSettings, extra=$extra, facebookId=$facebookId, facebookUrl=$facebookUrl, firstname=$firstname, fraudrecord=$fraudrecord, githubId=$githubId, githubUrl=$githubUrl, googleId=$googleId, googleUrl=$googleUrl, innertellId=$innertellId, lastname=$lastname, locale=$locale, maxmind=$maxmind, maxmindScore=$maxmindScore, mbId=$mbId, modernbillId=$modernbillId, picture=$picture, referrerCoupon=$referrerCoupon, resellerMarkup=$resellerMarkup, username=$username, sshKey=$sshKey, sshKeyWrapped=$sshKeyWrapped, apiKey=$apiKey, apiKeyWrapped=$apiKeyWrapped, n2faGoogleKey=$n2faGoogleKey, n2faGoogleEnabled=$n2faGoogleEnabled, n2faGoogle=$n2faGoogle, n2faGoogleSplit=$n2faGoogleSplit, n2faGoogleQr=$n2faGoogleQr, ]';
  }

  AccountInfoData.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    group = json['group'];
    address = json['address'];
    city = json['city'];
    country = json['country'];
    disableCc = json['disable_cc'];
    fraudrecordScore = json['fraudrecord_score'];
    ima = json['ima'];
    name = json['name'];
    paymentMethod = json['payment_method'];
    phone = json['phone'];
    pin = json['pin'];
    state = json['state'];
    status = json['status'];
    zip = json['zip'];
    accountId = json['account_id'];
    accountLid = json['account_lid'];
    address2 = json['address2'];
    affiliateDockDescription = json['affiliate_dock_description'];
    affiliateDockTitle = json['affiliate_dock_title'];
    affiliatePaymentMethod = json['affiliate_payment_method'];
    affiliatePaypal = json['affiliate_paypal'];
    cc = json['cc'];
    ccAuto = json['cc_auto'];
    ccExp = json['cc_exp'];
    ccType = json['cc_type'];
    ccWhitelist = json['cc_whitelist'];
    ccs = new AccountInfoDataCcs.fromJson(json['ccs']);
    ccsAdded = json['ccs_added'];
    company = json['company'];
    currency = json['currency'];
    disableReinstall = json['disable_reinstall'];
    disableReset = json['disable_reset'];
    email = json['email'];
    emailAbuse = json['email_abuse'];
    emailSettings = new AccountInfoDataEmailSettings.fromJson(json['email_settings']);
    extra = new AccountInfoDataExtra.fromJson(json['extra']);
    facebookId = json['facebook_id'];
    facebookUrl = json['facebook_url'];
    firstname = json['firstname'];
    fraudrecord = new AccountInfoDataFraudrecord.fromJson(json['fraudrecord']);
    githubId = json['github_id'];
    githubUrl = json['github_url'];
    googleId = json['google_id'];
    googleUrl = json['google_url'];
    innertellId = json['innertell_id'];
    lastname = json['lastname'];
    locale = json['locale'];
    maxmind = new AccountInfoMaxMindResponse.fromJson(json['maxmind']);
    maxmindScore = json['maxmind_score'];
    mbId = json['mb_id'];
    modernbillId = json['modernbill_id'];
    picture = json['picture'];
    referrerCoupon = json['referrer_coupon'];
    resellerMarkup = json['reseller_markup'];
    username = json['username'];
    sshKey = json['ssh_key'];
    sshKeyWrapped = json['ssh_key_wrapped'];
    apiKey = json['api_key'];
    apiKeyWrapped = json['api_key_wrapped'];
    n2faGoogleKey = json['2fa_google_key'];
    n2faGoogleEnabled = json['2fa_google_enabled'];
    n2faGoogle = json['2fa_google'];
    n2faGoogleSplit = json['2fa_google_split'];
    n2faGoogleQr = json['2fa_google_qr'];
  }

  Map<String, dynamic> toJson() {
    return {
      'group': group,
      'address': address,
      'city': city,
      'country': country,
      'disable_cc': disableCc,
      'fraudrecord_score': fraudrecordScore,
      'ima': ima,
      'name': name,
      'payment_method': paymentMethod,
      'phone': phone,
      'pin': pin,
      'state': state,
      'status': status,
      'zip': zip,
      'account_id': accountId,
      'account_lid': accountLid,
      'address2': address2,
      'affiliate_dock_description': affiliateDockDescription,
      'affiliate_dock_title': affiliateDockTitle,
      'affiliate_payment_method': affiliatePaymentMethod,
      'affiliate_paypal': affiliatePaypal,
      'cc': cc,
      'cc_auto': ccAuto,
      'cc_exp': ccExp,
      'cc_type': ccType,
      'cc_whitelist': ccWhitelist,
      'ccs': ccs,
      'ccs_added': ccsAdded,
      'company': company,
      'currency': currency,
      'disable_reinstall': disableReinstall,
      'disable_reset': disableReset,
      'email': email,
      'email_abuse': emailAbuse,
      'email_settings': emailSettings,
      'extra': extra,
      'facebook_id': facebookId,
      'facebook_url': facebookUrl,
      'firstname': firstname,
      'fraudrecord': fraudrecord,
      'github_id': githubId,
      'github_url': githubUrl,
      'google_id': googleId,
      'google_url': googleUrl,
      'innertell_id': innertellId,
      'lastname': lastname,
      'locale': locale,
      'maxmind': maxmind,
      'maxmind_score': maxmindScore,
      'mb_id': mbId,
      'modernbill_id': modernbillId,
      'picture': picture,
      'referrer_coupon': referrerCoupon,
      'reseller_markup': resellerMarkup,
      'username': username,
      'ssh_key': sshKey,
      'ssh_key_wrapped': sshKeyWrapped,
      'api_key': apiKey,
      'api_key_wrapped': apiKeyWrapped,
      '2fa_google_key': n2faGoogleKey,
      '2fa_google_enabled': n2faGoogleEnabled,
      '2fa_google': n2faGoogle,
      '2fa_google_split': n2faGoogleSplit,
      '2fa_google_qr': n2faGoogleQr
     };
  }

  static List<AccountInfoData> listFromJson(List<dynamic> json) {
    return json == null ? new List<AccountInfoData>() : json.map((value) => new AccountInfoData.fromJson(value)).toList();
  }

  static Map<String, AccountInfoData> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AccountInfoData>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AccountInfoData.fromJson(value));
    }
    return map;
  }
}
