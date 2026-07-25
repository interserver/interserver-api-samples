#import "ISABackupOrderPutResponse.h"

@implementation ISABackupOrderPutResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_continue": @"continue", @"errors": @"errors", @"serviceType": @"serviceType", @"serviceCost": @"serviceCost", @"originalCost": @"originalCost", @"repeatServiceCost": @"repeatServiceCost", @"hostname": @"hostname", @"password": @"password", @"coupon": @"coupon", @"couponCode": @"couponCode" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_continue", @"errors", @"serviceType", @"serviceCost", @"originalCost", @"repeatServiceCost", @"hostname", @"password", @"coupon", @"couponCode"];
  return [optionalProperties containsObject:propertyName];
}

@end
