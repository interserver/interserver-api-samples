part of swagger.api;

class AccountInfoMaxMindResponse {
  
  String distance = null;

  String countryMatch = null;

  String countryCode = null;

  String freeMail = null;

  String anonymousProxy = null;

  String score = null;

  String binMatch = null;

  String binCountry = null;

  String err = null;

  String proxyScore = null;

  String ipRegion = null;

  String ipCity = null;

  String ipLatitude = null;

  String ipLongitude = null;

  String binName = null;

  String ipIsp = null;

  String ipOrg = null;

  String binNameMatch = null;

  String binPhoneMatch = null;

  String binPhone = null;

  String custPhoneInBillingLoc = null;

  String highRiskCountry = null;

  String queriesRemaining = null;

  String cityPostalMatch = null;

  String shipCityPostalMatch = null;

  String maxmindID = null;

  String ipAsnum = null;

  String ipUserType = null;

  String ipCountryConf = null;

  String ipRegionConf = null;

  String ipCityConf = null;

  String ipPostalCode = null;

  String ipPostalConf = null;

  String ipAccuracyRadius = null;

  String ipNetSpeedCell = null;

  String ipMetroCode = null;

  String ipAreaCode = null;

  String ipTimeZone = null;

  String ipRegionName = null;

  String ipDomain = null;

  String ipCountryName = null;

  String ipContinentCode = null;

  String ipCorporateProxy = null;

  String carderEmail = null;

  String highRiskUsername = null;

  String highRiskPassword = null;

  OneOfAccountInfoMaxMindResponseRiskScore riskScore = null;

  String isTransProxy = null;

  String prepaid = null;

  String minfraudVersion = null;

  String serviceLevel = null;

  String explanation = null;

  String femaleName = null;

  AccountInfoMaxMindResponse();

  @override
  String toString() {
    return 'AccountInfoMaxMindResponse[distance=$distance, countryMatch=$countryMatch, countryCode=$countryCode, freeMail=$freeMail, anonymousProxy=$anonymousProxy, score=$score, binMatch=$binMatch, binCountry=$binCountry, err=$err, proxyScore=$proxyScore, ipRegion=$ipRegion, ipCity=$ipCity, ipLatitude=$ipLatitude, ipLongitude=$ipLongitude, binName=$binName, ipIsp=$ipIsp, ipOrg=$ipOrg, binNameMatch=$binNameMatch, binPhoneMatch=$binPhoneMatch, binPhone=$binPhone, custPhoneInBillingLoc=$custPhoneInBillingLoc, highRiskCountry=$highRiskCountry, queriesRemaining=$queriesRemaining, cityPostalMatch=$cityPostalMatch, shipCityPostalMatch=$shipCityPostalMatch, maxmindID=$maxmindID, ipAsnum=$ipAsnum, ipUserType=$ipUserType, ipCountryConf=$ipCountryConf, ipRegionConf=$ipRegionConf, ipCityConf=$ipCityConf, ipPostalCode=$ipPostalCode, ipPostalConf=$ipPostalConf, ipAccuracyRadius=$ipAccuracyRadius, ipNetSpeedCell=$ipNetSpeedCell, ipMetroCode=$ipMetroCode, ipAreaCode=$ipAreaCode, ipTimeZone=$ipTimeZone, ipRegionName=$ipRegionName, ipDomain=$ipDomain, ipCountryName=$ipCountryName, ipContinentCode=$ipContinentCode, ipCorporateProxy=$ipCorporateProxy, carderEmail=$carderEmail, highRiskUsername=$highRiskUsername, highRiskPassword=$highRiskPassword, riskScore=$riskScore, isTransProxy=$isTransProxy, prepaid=$prepaid, minfraudVersion=$minfraudVersion, serviceLevel=$serviceLevel, explanation=$explanation, femaleName=$femaleName, ]';
  }

  AccountInfoMaxMindResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    distance = json['distance'];
    countryMatch = json['countryMatch'];
    countryCode = json['countryCode'];
    freeMail = json['freeMail'];
    anonymousProxy = json['anonymousProxy'];
    score = json['score'];
    binMatch = json['binMatch'];
    binCountry = json['binCountry'];
    err = json['err'];
    proxyScore = json['proxyScore'];
    ipRegion = json['ip_region'];
    ipCity = json['ip_city'];
    ipLatitude = json['ip_latitude'];
    ipLongitude = json['ip_longitude'];
    binName = json['binName'];
    ipIsp = json['ip_isp'];
    ipOrg = json['ip_org'];
    binNameMatch = json['binNameMatch'];
    binPhoneMatch = json['binPhoneMatch'];
    binPhone = json['binPhone'];
    custPhoneInBillingLoc = json['custPhoneInBillingLoc'];
    highRiskCountry = json['highRiskCountry'];
    queriesRemaining = json['queriesRemaining'];
    cityPostalMatch = json['cityPostalMatch'];
    shipCityPostalMatch = json['shipCityPostalMatch'];
    maxmindID = json['maxmindID'];
    ipAsnum = json['ip_asnum'];
    ipUserType = json['ip_userType'];
    ipCountryConf = json['ip_countryConf'];
    ipRegionConf = json['ip_regionConf'];
    ipCityConf = json['ip_cityConf'];
    ipPostalCode = json['ip_postalCode'];
    ipPostalConf = json['ip_postalConf'];
    ipAccuracyRadius = json['ip_accuracyRadius'];
    ipNetSpeedCell = json['ip_netSpeedCell'];
    ipMetroCode = json['ip_metroCode'];
    ipAreaCode = json['ip_areaCode'];
    ipTimeZone = json['ip_timeZone'];
    ipRegionName = json['ip_regionName'];
    ipDomain = json['ip_domain'];
    ipCountryName = json['ip_countryName'];
    ipContinentCode = json['ip_continentCode'];
    ipCorporateProxy = json['ip_corporateProxy'];
    carderEmail = json['carderEmail'];
    highRiskUsername = json['highRiskUsername'];
    highRiskPassword = json['highRiskPassword'];
    riskScore = new OneOfAccountInfoMaxMindResponseRiskScore.fromJson(json['riskScore']);
    isTransProxy = json['isTransProxy'];
    prepaid = json['prepaid'];
    minfraudVersion = json['minfraud_version'];
    serviceLevel = json['service_level'];
    explanation = json['explanation'];
    femaleName = json['female_name'];
  }

  Map<String, dynamic> toJson() {
    return {
      'distance': distance,
      'countryMatch': countryMatch,
      'countryCode': countryCode,
      'freeMail': freeMail,
      'anonymousProxy': anonymousProxy,
      'score': score,
      'binMatch': binMatch,
      'binCountry': binCountry,
      'err': err,
      'proxyScore': proxyScore,
      'ip_region': ipRegion,
      'ip_city': ipCity,
      'ip_latitude': ipLatitude,
      'ip_longitude': ipLongitude,
      'binName': binName,
      'ip_isp': ipIsp,
      'ip_org': ipOrg,
      'binNameMatch': binNameMatch,
      'binPhoneMatch': binPhoneMatch,
      'binPhone': binPhone,
      'custPhoneInBillingLoc': custPhoneInBillingLoc,
      'highRiskCountry': highRiskCountry,
      'queriesRemaining': queriesRemaining,
      'cityPostalMatch': cityPostalMatch,
      'shipCityPostalMatch': shipCityPostalMatch,
      'maxmindID': maxmindID,
      'ip_asnum': ipAsnum,
      'ip_userType': ipUserType,
      'ip_countryConf': ipCountryConf,
      'ip_regionConf': ipRegionConf,
      'ip_cityConf': ipCityConf,
      'ip_postalCode': ipPostalCode,
      'ip_postalConf': ipPostalConf,
      'ip_accuracyRadius': ipAccuracyRadius,
      'ip_netSpeedCell': ipNetSpeedCell,
      'ip_metroCode': ipMetroCode,
      'ip_areaCode': ipAreaCode,
      'ip_timeZone': ipTimeZone,
      'ip_regionName': ipRegionName,
      'ip_domain': ipDomain,
      'ip_countryName': ipCountryName,
      'ip_continentCode': ipContinentCode,
      'ip_corporateProxy': ipCorporateProxy,
      'carderEmail': carderEmail,
      'highRiskUsername': highRiskUsername,
      'highRiskPassword': highRiskPassword,
      'riskScore': riskScore,
      'isTransProxy': isTransProxy,
      'prepaid': prepaid,
      'minfraud_version': minfraudVersion,
      'service_level': serviceLevel,
      'explanation': explanation,
      'female_name': femaleName
     };
  }

  static List<AccountInfoMaxMindResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<AccountInfoMaxMindResponse>() : json.map((value) => new AccountInfoMaxMindResponse.fromJson(value)).toList();
  }

  static Map<String, AccountInfoMaxMindResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AccountInfoMaxMindResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AccountInfoMaxMindResponse.fromJson(value));
    }
    return map;
  }
}
