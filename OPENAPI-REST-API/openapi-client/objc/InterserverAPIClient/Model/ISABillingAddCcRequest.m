#import "ISABillingAddCcRequest.h"

@implementation ISABillingAddCcRequest

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"name": @"name", @"address": @"address", @"city": @"city", @"state": @"state", @"country": @"country", @"zip": @"zip", @"cc": @"cc", @"ccExp": @"cc_exp", @"ccCcv2": @"cc_ccv2" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"name", @"address", @"city", @"state", @"country", @"zip", @"cc", @"ccExp", @"ccCcv2"];
  return [optionalProperties containsObject:propertyName];
}

@end
