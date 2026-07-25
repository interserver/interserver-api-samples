#import "ISADomainAdminContact.h"

@implementation ISADomainAdminContact

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"status": @"status", @"state": @"state", @"orgName": @"org_name", @"country": @"country", @"postalCode": @"postal_code", @"email": @"email", @"fax": @"fax", @"address2": @"address2", @"address3": @"address3", @"address1": @"address1", @"city": @"city", @"phone": @"phone", @"firstName": @"first_name", @"lastName": @"last_name" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"status", @"state", @"orgName", @"country", @"postalCode", @"email", @"fax", @"address2", @"address3", @"address1", @"city", @"phone", @"firstName", @"lastName"];
  return [optionalProperties containsObject:propertyName];
}

@end
