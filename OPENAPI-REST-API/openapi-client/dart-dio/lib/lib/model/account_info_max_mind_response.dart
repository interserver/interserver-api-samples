//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/account_info_max_mind_response_risk_score.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'account_info_max_mind_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class AccountInfoMaxMindResponse {
  /// Returns a new [AccountInfoMaxMindResponse] instance.
  AccountInfoMaxMindResponse({

    this.distance = const Optional.absent(),

    this.countryMatch = const Optional.absent(),

    this.countryCode = const Optional.absent(),

    this.freeMail = const Optional.absent(),

    this.anonymousProxy = const Optional.absent(),

    this.score = const Optional.absent(),

    this.binMatch = const Optional.absent(),

    this.binCountry = const Optional.absent(),

    this.err = const Optional.absent(),

    this.proxyScore = const Optional.absent(),

    this.ipRegion = const Optional.absent(),

    this.ipCity = const Optional.absent(),

    this.ipLatitude = const Optional.absent(),

    this.ipLongitude = const Optional.absent(),

    this.binName = const Optional.absent(),

    this.ipIsp = const Optional.absent(),

    this.ipOrg = const Optional.absent(),

    this.binNameMatch = const Optional.absent(),

    this.binPhoneMatch = const Optional.absent(),

    this.binPhone = const Optional.absent(),

    this.custPhoneInBillingLoc = const Optional.absent(),

    this.highRiskCountry = const Optional.absent(),

    this.queriesRemaining = const Optional.absent(),

    this.cityPostalMatch = const Optional.absent(),

    this.shipCityPostalMatch = const Optional.absent(),

    this.maxmindID = const Optional.absent(),

    this.ipAsnum = const Optional.absent(),

    this.ipUserType = const Optional.absent(),

    this.ipCountryConf = const Optional.absent(),

    this.ipRegionConf = const Optional.absent(),

    this.ipCityConf = const Optional.absent(),

    this.ipPostalCode = const Optional.absent(),

    this.ipPostalConf = const Optional.absent(),

    this.ipAccuracyRadius = const Optional.absent(),

    this.ipNetSpeedCell = const Optional.absent(),

    this.ipMetroCode = const Optional.absent(),

    this.ipAreaCode = const Optional.absent(),

    this.ipTimeZone = const Optional.absent(),

    this.ipRegionName = const Optional.absent(),

    this.ipDomain = const Optional.absent(),

    this.ipCountryName = const Optional.absent(),

    this.ipContinentCode = const Optional.absent(),

    this.ipCorporateProxy = const Optional.absent(),

    this.carderEmail = const Optional.absent(),

    this.highRiskUsername = const Optional.absent(),

    this.highRiskPassword = const Optional.absent(),

    this.riskScore = const Optional.absent(),

    this.isTransProxy = const Optional.absent(),

    this.prepaid = const Optional.absent(),

    this.minfraudVersion = const Optional.absent(),

    this.serviceLevel = const Optional.absent(),

    this.explanation = const Optional.absent(),

    this.femaleName = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'distance',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> distance;



  @OptionalConverter()
  @JsonKey(
    
    name: r'countryMatch',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> countryMatch;



  @OptionalConverter()
  @JsonKey(
    
    name: r'countryCode',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> countryCode;



  @OptionalConverter()
  @JsonKey(
    
    name: r'freeMail',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> freeMail;



  @OptionalConverter()
  @JsonKey(
    
    name: r'anonymousProxy',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> anonymousProxy;



  @OptionalConverter()
  @JsonKey(
    
    name: r'score',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> score;



  @OptionalConverter()
  @JsonKey(
    
    name: r'binMatch',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> binMatch;



  @OptionalConverter()
  @JsonKey(
    
    name: r'binCountry',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> binCountry;



  @OptionalConverter()
  @JsonKey(
    
    name: r'err',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> err;



  @OptionalConverter()
  @JsonKey(
    
    name: r'proxyScore',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> proxyScore;



  @OptionalConverter()
  @JsonKey(
    
    name: r'ip_region',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> ipRegion;



  @OptionalConverter()
  @JsonKey(
    
    name: r'ip_city',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> ipCity;



  @OptionalConverter()
  @JsonKey(
    
    name: r'ip_latitude',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> ipLatitude;



  @OptionalConverter()
  @JsonKey(
    
    name: r'ip_longitude',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> ipLongitude;



  @OptionalConverter()
  @JsonKey(
    
    name: r'binName',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> binName;



  @OptionalConverter()
  @JsonKey(
    
    name: r'ip_isp',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> ipIsp;



  @OptionalConverter()
  @JsonKey(
    
    name: r'ip_org',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> ipOrg;



  @OptionalConverter()
  @JsonKey(
    
    name: r'binNameMatch',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> binNameMatch;



  @OptionalConverter()
  @JsonKey(
    
    name: r'binPhoneMatch',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> binPhoneMatch;



  @OptionalConverter()
  @JsonKey(
    
    name: r'binPhone',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> binPhone;



  @OptionalConverter()
  @JsonKey(
    
    name: r'custPhoneInBillingLoc',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> custPhoneInBillingLoc;



  @OptionalConverter()
  @JsonKey(
    
    name: r'highRiskCountry',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> highRiskCountry;



  @OptionalConverter()
  @JsonKey(
    
    name: r'queriesRemaining',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> queriesRemaining;



  @OptionalConverter()
  @JsonKey(
    
    name: r'cityPostalMatch',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> cityPostalMatch;



  @OptionalConverter()
  @JsonKey(
    
    name: r'shipCityPostalMatch',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> shipCityPostalMatch;



  @OptionalConverter()
  @JsonKey(
    
    name: r'maxmindID',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> maxmindID;



  @OptionalConverter()
  @JsonKey(
    
    name: r'ip_asnum',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> ipAsnum;



  @OptionalConverter()
  @JsonKey(
    
    name: r'ip_userType',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> ipUserType;



  @OptionalConverter()
  @JsonKey(
    
    name: r'ip_countryConf',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> ipCountryConf;



  @OptionalConverter()
  @JsonKey(
    
    name: r'ip_regionConf',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> ipRegionConf;



  @OptionalConverter()
  @JsonKey(
    
    name: r'ip_cityConf',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> ipCityConf;



  @OptionalConverter()
  @JsonKey(
    
    name: r'ip_postalCode',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> ipPostalCode;



  @OptionalConverter()
  @JsonKey(
    
    name: r'ip_postalConf',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> ipPostalConf;



  @OptionalConverter()
  @JsonKey(
    
    name: r'ip_accuracyRadius',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> ipAccuracyRadius;



  @OptionalConverter()
  @JsonKey(
    
    name: r'ip_netSpeedCell',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> ipNetSpeedCell;



  @OptionalConverter()
  @JsonKey(
    
    name: r'ip_metroCode',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> ipMetroCode;



  @OptionalConverter()
  @JsonKey(
    
    name: r'ip_areaCode',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> ipAreaCode;



  @OptionalConverter()
  @JsonKey(
    
    name: r'ip_timeZone',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> ipTimeZone;



  @OptionalConverter()
  @JsonKey(
    
    name: r'ip_regionName',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> ipRegionName;



  @OptionalConverter()
  @JsonKey(
    
    name: r'ip_domain',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> ipDomain;



  @OptionalConverter()
  @JsonKey(
    
    name: r'ip_countryName',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> ipCountryName;



  @OptionalConverter()
  @JsonKey(
    
    name: r'ip_continentCode',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> ipContinentCode;



  @OptionalConverter()
  @JsonKey(
    
    name: r'ip_corporateProxy',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> ipCorporateProxy;



  @OptionalConverter()
  @JsonKey(
    
    name: r'carderEmail',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> carderEmail;



  @OptionalConverter()
  @JsonKey(
    
    name: r'highRiskUsername',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> highRiskUsername;



  @OptionalConverter()
  @JsonKey(
    
    name: r'highRiskPassword',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> highRiskPassword;



  @OptionalConverter()
  @JsonKey(
    
    name: r'riskScore',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<AccountInfoMaxMindResponseRiskScore?> riskScore;



  @OptionalConverter()
  @JsonKey(
    
    name: r'isTransProxy',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> isTransProxy;



  @OptionalConverter()
  @JsonKey(
    
    name: r'prepaid',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> prepaid;



  @OptionalConverter()
  @JsonKey(
    
    name: r'minfraud_version',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> minfraudVersion;



  @OptionalConverter()
  @JsonKey(
    
    name: r'service_level',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> serviceLevel;



  @OptionalConverter()
  @JsonKey(
    
    name: r'explanation',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> explanation;



  @OptionalConverter()
  @JsonKey(
    
    name: r'female_name',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> femaleName;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is AccountInfoMaxMindResponse &&
      runtimeType == other.runtimeType &&
      equals(
        [
            distance,
            countryMatch,
            countryCode,
            freeMail,
            anonymousProxy,
            score,
            binMatch,
            binCountry,
            err,
            proxyScore,
            ipRegion,
            ipCity,
            ipLatitude,
            ipLongitude,
            binName,
            ipIsp,
            ipOrg,
            binNameMatch,
            binPhoneMatch,
            binPhone,
            custPhoneInBillingLoc,
            highRiskCountry,
            queriesRemaining,
            cityPostalMatch,
            shipCityPostalMatch,
            maxmindID,
            ipAsnum,
            ipUserType,
            ipCountryConf,
            ipRegionConf,
            ipCityConf,
            ipPostalCode,
            ipPostalConf,
            ipAccuracyRadius,
            ipNetSpeedCell,
            ipMetroCode,
            ipAreaCode,
            ipTimeZone,
            ipRegionName,
            ipDomain,
            ipCountryName,
            ipContinentCode,
            ipCorporateProxy,
            carderEmail,
            highRiskUsername,
            highRiskPassword,
            riskScore,
            isTransProxy,
            prepaid,
            minfraudVersion,
            serviceLevel,
            explanation,
            femaleName,
        ],
        [
            other.distance,
            other.countryMatch,
            other.countryCode,
            other.freeMail,
            other.anonymousProxy,
            other.score,
            other.binMatch,
            other.binCountry,
            other.err,
            other.proxyScore,
            other.ipRegion,
            other.ipCity,
            other.ipLatitude,
            other.ipLongitude,
            other.binName,
            other.ipIsp,
            other.ipOrg,
            other.binNameMatch,
            other.binPhoneMatch,
            other.binPhone,
            other.custPhoneInBillingLoc,
            other.highRiskCountry,
            other.queriesRemaining,
            other.cityPostalMatch,
            other.shipCityPostalMatch,
            other.maxmindID,
            other.ipAsnum,
            other.ipUserType,
            other.ipCountryConf,
            other.ipRegionConf,
            other.ipCityConf,
            other.ipPostalCode,
            other.ipPostalConf,
            other.ipAccuracyRadius,
            other.ipNetSpeedCell,
            other.ipMetroCode,
            other.ipAreaCode,
            other.ipTimeZone,
            other.ipRegionName,
            other.ipDomain,
            other.ipCountryName,
            other.ipContinentCode,
            other.ipCorporateProxy,
            other.carderEmail,
            other.highRiskUsername,
            other.highRiskPassword,
            other.riskScore,
            other.isTransProxy,
            other.prepaid,
            other.minfraudVersion,
            other.serviceLevel,
            other.explanation,
            other.femaleName,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        distance,
        countryMatch,
        countryCode,
        freeMail,
        anonymousProxy,
        score,
        binMatch,
        binCountry,
        err,
        proxyScore,
        ipRegion,
        ipCity,
        ipLatitude,
        ipLongitude,
        binName,
        ipIsp,
        ipOrg,
        binNameMatch,
        binPhoneMatch,
        binPhone,
        custPhoneInBillingLoc,
        highRiskCountry,
        queriesRemaining,
        cityPostalMatch,
        shipCityPostalMatch,
        maxmindID,
        ipAsnum,
        ipUserType,
        ipCountryConf,
        ipRegionConf,
        ipCityConf,
        ipPostalCode,
        ipPostalConf,
        ipAccuracyRadius,
        ipNetSpeedCell,
        ipMetroCode,
        ipAreaCode,
        ipTimeZone,
        ipRegionName,
        ipDomain,
        ipCountryName,
        ipContinentCode,
        ipCorporateProxy,
        carderEmail,
        highRiskUsername,
        highRiskPassword,
        riskScore,
        isTransProxy,
        prepaid,
        minfraudVersion,
        serviceLevel,
        explanation,
        femaleName,
    ],);

  factory AccountInfoMaxMindResponse.fromJson(Map<String, dynamic> json) => _$AccountInfoMaxMindResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AccountInfoMaxMindResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

