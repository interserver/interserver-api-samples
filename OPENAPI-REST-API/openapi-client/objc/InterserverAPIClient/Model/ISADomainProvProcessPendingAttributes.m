#import "ISADomainProvProcessPendingAttributes.h"

@implementation ISADomainProvProcessPendingAttributes

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"orderId": @"order_id", @"registrationExpirationDate": @"registration expiration date", @"fAutoRenew": @"f_auto_renew" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"orderId", @"registrationExpirationDate", @"fAutoRenew"];
  return [optionalProperties containsObject:propertyName];
}

@end
