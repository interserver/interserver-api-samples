#import "ISALicense.h"

@implementation ISALicense

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"serviceInfo": @"serviceInfo", @"clientLinks": @"client_links", @"billingDetails": @"billingDetails", @"custCurrency": @"custCurrency", @"custCurrencySymbol": @"custCurrencySymbol", @"package": @"package", @"serviceExtra": @"serviceExtra", @"extraInfoTables": @"extraInfoTables", @"serviceOverviewExtra": @"service_overview_extra", @"serviceType": @"serviceType", @"licenseKey": @"license_key" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[];
  return [optionalProperties containsObject:propertyName];
}

@end
