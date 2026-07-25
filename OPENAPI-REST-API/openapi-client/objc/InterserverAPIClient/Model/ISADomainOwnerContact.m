#import "ISADomainOwnerContact.h"

@implementation ISADomainOwnerContact

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"postalCode": @"postal_code", @"orgName": @"org_name", @"country": @"country", @"status": @"status", @"state": @"state", @"firstName": @"first_name", @"lastName": @"last_name", @"address3": @"address3", @"fax": @"fax", @"address2": @"address2", @"email": @"email", @"city": @"city", @"phone": @"phone", @"address1": @"address1" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"postalCode", @"orgName", @"country", @"status", @"state", @"firstName", @"lastName", @"address3", @"fax", @"address2", @"email", @"city", @"phone", @"address1"];
  return [optionalProperties containsObject:propertyName];
}

@end
