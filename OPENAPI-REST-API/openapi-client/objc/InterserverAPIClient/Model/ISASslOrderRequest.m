#import "ISASslOrderRequest.h"

@implementation ISASslOrderRequest

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    self.frequency = @12;
    self.coupon = @"";
    self.csrType = @"generated";
    self.csr = @"";
    self.department = @"Administration";
    
  }
  return self;
}


/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper {
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"ssl": @"ssl", @"hostname": @"hostname", @"approverEmail": @"approver_email", @"frequency": @"frequency", @"coupon": @"coupon", @"csrType": @"csr_type", @"csr": @"csr", @"firstname": @"firstname", @"lastname": @"lastname", @"email": @"email", @"address": @"address", @"city": @"city", @"state": @"state", @"zip": @"zip", @"country": @"country", @"phone": @"phone", @"company": @"company", @"department": @"department", @"agency": @"agency", @"businessCategory": @"business_category" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"frequency", @"coupon", @"csrType", @"csr", @"firstname", @"lastname", @"email", @"address", @"city", @"state", @"zip", @"country", @"phone", @"company", @"department", @"agency", @"businessCategory"];
  return [optionalProperties containsObject:propertyName];
}

@end
