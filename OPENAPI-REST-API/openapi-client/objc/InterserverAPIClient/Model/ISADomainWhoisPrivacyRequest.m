#import "ISADomainWhoisPrivacyRequest.h"

@implementation ISADomainWhoisPrivacyRequest

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"func": @"func", @"csrfToken": @"csrf_token", @"domainFirstname": @"domain_firstname", @"domainLastname": @"domain_lastname", @"domainEmail": @"domain_email", @"domainAddress": @"domain_address", @"domainAddress2": @"domain_address2", @"domainAddress3": @"domain_address3", @"domainCity": @"domain_city", @"domainState": @"domain_state", @"domainZip": @"domain_zip", @"domainCountry": @"domain_country", @"domainPhone": @"domain_phone", @"domainFax": @"domain_fax", @"domainCompany": @"domain_company", @"domainExtra": @"domain_extra" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"func", @"csrfToken", @"domainFirstname", @"domainLastname", @"domainEmail", @"domainAddress", @"domainAddress2", @"domainAddress3", @"domainCity", @"domainState", @"domainZip", @"domainCountry", @"domainPhone", @"domainFax", @"domainCompany", @"domainExtra"];
  return [optionalProperties containsObject:propertyName];
}

@end
