#import "ISAServer.h"

@implementation ISAServer

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"ipmiAuth": @"ipmiAuth", @"clientLinks": @"client_links", @"billingDetails": @"billingDetails", @"custCurrency": @"custCurrency", @"custCurrencySymbol": @"custCurrencySymbol", @"package": @"package", @"serviceExtra": @"serviceExtra", @"locations": @"locations", @"networkInfo": @"networkInfo", @"extraInfoTables": @"extraInfoTables", @"serviceInfo": @"serviceInfo" }];
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
