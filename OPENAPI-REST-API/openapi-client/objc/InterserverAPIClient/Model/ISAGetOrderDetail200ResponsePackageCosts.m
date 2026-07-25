#import "ISAGetOrderDetail200ResponsePackageCosts.h"

@implementation ISAGetOrderDetail200ResponsePackageCosts

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"packageId": @"package_id", @"packageCost": @"package_cost", @"currency": @"currency", @"currencySymbol": @"currencySymbol" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"packageId", @"packageCost", @"currency", @"currencySymbol"];
  return [optionalProperties containsObject:propertyName];
}

@end
