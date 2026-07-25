#import "ISAGetScrubIpDetails200Response.h"

@implementation ISAGetScrubIpDetails200Response

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"serviceInfo": @"serviceInfo", @"clientLinks": @"client_links", @"billingDetails": @"billingDetails", @"custCurrency": @"custCurrency", @"custCurrencySymbol": @"custCurrencySymbol", @"package": @"package", @"extraInfoTables": @"extraInfoTables", @"filterFirewall": @"filter_firewall" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"serviceInfo", @"clientLinks", @"billingDetails", @"custCurrency", @"custCurrencySymbol", @"package", @"extraInfoTables", @"filterFirewall"];
  return [optionalProperties containsObject:propertyName];
}

@end
