#import "ISADomainBillingExtra.h"

@implementation ISADomainBillingExtra

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"order": @"order", @"orderId": @"order_id", @"domainId": @"domain_id", @"provProcessPending": @"provProcessPending", @"email": @"email", @"firstname": @"firstname", @"lastname": @"lastname", @"company": @"company", @"address": @"address", @"address2": @"address2", @"address3": @"address3", @"city": @"city", @"state": @"state", @"zip": @"zip", @"country": @"country", @"phone": @"phone", @"fax": @"fax" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"order", @"orderId", @"domainId", @"provProcessPending", @"email", @"firstname", @"lastname", @"company", @"address", @"address2", @"address3", @"city", @"state", @"zip", @"country", @"phone", @"fax"];
  return [optionalProperties containsObject:propertyName];
}

@end
