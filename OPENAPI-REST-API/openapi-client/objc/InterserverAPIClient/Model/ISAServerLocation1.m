#import "ISAServerLocation1.h"

@implementation ISAServerLocation1

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"locationId": @"location_id", @"locationName": @"location_name", @"locationLat": @"location_lat", @"locationLong": @"location_long", @"locationDescription": @"location_description", @"locationIpmiGroup": @"location_ipmi_group" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"locationDescription", @"locationIpmiGroup"];
  return [optionalProperties containsObject:propertyName];
}

@end
