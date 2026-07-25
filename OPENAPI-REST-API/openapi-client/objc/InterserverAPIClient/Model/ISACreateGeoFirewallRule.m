#import "ISACreateGeoFirewallRule.h"

@implementation ISACreateGeoFirewallRule

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    self.destinationPort = @80;
    
  }
  return self;
}


/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper {
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"xdpAction": @"xdp_action", @"destinationPort": @"destination_port", @"countryCode": @"country_code", @"asn": @"asn" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"destinationPort", @"countryCode", @"asn"];
  return [optionalProperties containsObject:propertyName];
}

@end
