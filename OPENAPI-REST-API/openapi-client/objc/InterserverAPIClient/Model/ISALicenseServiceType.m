#import "ISALicenseServiceType.h"

@implementation ISALicenseServiceType

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"servicesId": @"services_id", @"servicesName": @"services_name", @"servicesCost": @"services_cost", @"servicesCategory": @"services_category", @"servicesBuyable": @"services_buyable", @"servicesType": @"services_type", @"servicesField1": @"services_field1", @"servicesField2": @"services_field2", @"servicesModule": @"services_module" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"servicesId", @"servicesName", @"servicesCost", @"servicesCategory", @"servicesBuyable", @"servicesType", @"servicesField1", @"servicesField2", @"servicesModule"];
  return [optionalProperties containsObject:propertyName];
}

@end
