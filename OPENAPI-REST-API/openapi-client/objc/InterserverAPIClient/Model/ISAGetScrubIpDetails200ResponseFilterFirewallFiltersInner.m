#import "ISAGetScrubIpDetails200ResponseFilterFirewallFiltersInner.h"

@implementation ISAGetScrubIpDetails200ResponseFilterFirewallFiltersInner

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"daddr": @"daddr", @"dest": @"dest", @"filterName": @"filter_name", @"destinationIp": @"destination_ip", @"filter": @"filter" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"daddr", @"dest", @"filterName", @"destinationIp", @"filter"];
  return [optionalProperties containsObject:propertyName];
}

@end
