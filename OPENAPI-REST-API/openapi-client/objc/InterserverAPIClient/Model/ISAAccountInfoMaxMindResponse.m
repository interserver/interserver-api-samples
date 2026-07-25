#import "ISAAccountInfoMaxMindResponse.h"

@implementation ISAAccountInfoMaxMindResponse

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    
  }
  return self;
}


/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper {
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"distance": @"distance", @"countryMatch": @"countryMatch", @"countryCode": @"countryCode", @"freeMail": @"freeMail", @"anonymousProxy": @"anonymousProxy", @"score": @"score", @"binMatch": @"binMatch", @"binCountry": @"binCountry", @"err": @"err", @"proxyScore": @"proxyScore", @"ipRegion": @"ip_region", @"ipCity": @"ip_city", @"ipLatitude": @"ip_latitude", @"ipLongitude": @"ip_longitude", @"binName": @"binName", @"ipIsp": @"ip_isp", @"ipOrg": @"ip_org", @"binNameMatch": @"binNameMatch", @"binPhoneMatch": @"binPhoneMatch", @"binPhone": @"binPhone", @"custPhoneInBillingLoc": @"custPhoneInBillingLoc", @"highRiskCountry": @"highRiskCountry", @"queriesRemaining": @"queriesRemaining", @"cityPostalMatch": @"cityPostalMatch", @"shipCityPostalMatch": @"shipCityPostalMatch", @"maxmindID": @"maxmindID", @"ipAsnum": @"ip_asnum", @"ipUserType": @"ip_userType", @"ipCountryConf": @"ip_countryConf", @"ipRegionConf": @"ip_regionConf", @"ipCityConf": @"ip_cityConf", @"ipPostalCode": @"ip_postalCode", @"ipPostalConf": @"ip_postalConf", @"ipAccuracyRadius": @"ip_accuracyRadius", @"ipNetSpeedCell": @"ip_netSpeedCell", @"ipMetroCode": @"ip_metroCode", @"ipAreaCode": @"ip_areaCode", @"ipTimeZone": @"ip_timeZone", @"ipRegionName": @"ip_regionName", @"ipDomain": @"ip_domain", @"ipCountryName": @"ip_countryName", @"ipContinentCode": @"ip_continentCode", @"ipCorporateProxy": @"ip_corporateProxy", @"carderEmail": @"carderEmail", @"highRiskUsername": @"highRiskUsername", @"highRiskPassword": @"highRiskPassword", @"riskScore": @"riskScore", @"isTransProxy": @"isTransProxy", @"prepaid": @"prepaid", @"minfraudVersion": @"minfraud_version", @"serviceLevel": @"service_level", @"explanation": @"explanation", @"femaleName": @"female_name" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"distance", @"countryMatch", @"countryCode", @"freeMail", @"anonymousProxy", @"score", @"binMatch", @"binCountry", @"err", @"proxyScore", @"ipRegion", @"ipCity", @"ipLatitude", @"ipLongitude", @"binName", @"ipIsp", @"ipOrg", @"binNameMatch", @"binPhoneMatch", @"binPhone", @"custPhoneInBillingLoc", @"highRiskCountry", @"queriesRemaining", @"cityPostalMatch", @"shipCityPostalMatch", @"maxmindID", @"ipAsnum", @"ipUserType", @"ipCountryConf", @"ipRegionConf", @"ipCityConf", @"ipPostalCode", @"ipPostalConf", @"ipAccuracyRadius", @"ipNetSpeedCell", @"ipMetroCode", @"ipAreaCode", @"ipTimeZone", @"ipRegionName", @"ipDomain", @"ipCountryName", @"ipContinentCode", @"ipCorporateProxy", @"carderEmail", @"highRiskUsername", @"highRiskPassword", @"riskScore", @"isTransProxy", @"prepaid", @"minfraudVersion", @"serviceLevel", @"explanation", @"femaleName"];
  return [optionalProperties containsObject:propertyName];
}

@end
