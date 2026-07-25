#import "ISAAffiliateTrafficRow.h"

@implementation ISAAffiliateTrafficRow

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"trafficId": @"traffic_id", @"trafficIp": @"traffic_ip", @"trafficUrl": @"traffic_url", @"trafficAffiliate": @"traffic_affiliate", @"trafficReferrer": @"traffic_referrer", @"trafficTimestamp": @"traffic_timestamp" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"trafficId", @"trafficIp", @"trafficUrl", @"trafficAffiliate", @"trafficReferrer", @"trafficTimestamp"];
  return [optionalProperties containsObject:propertyName];
}

@end
