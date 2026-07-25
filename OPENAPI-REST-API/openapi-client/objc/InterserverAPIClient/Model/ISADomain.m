#import "ISADomain.h"

@implementation ISADomain

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"serviceInfo": @"serviceInfo", @"serviceTypes": @"serviceTypes", @"clientLinks": @"client_links", @"billingDetails": @"billingDetails", @"custCurrency": @"custCurrency", @"custCurrencySymbol": @"custCurrencySymbol", @"serviceExtra": @"serviceExtra", @"extraInfoTables": @"extraInfoTables", @"serviceType": @"serviceType", @"contactDetails": @"contact_details", @"pwarning": @"pwarning", @"transferInfo": @"transfer_info", @"errors": @"errors", @"domainLogs": @"domain_logs", @"allInfo": @"allInfo", @"registrarStatus": @"registrarStatus", @"locked": @"locked", @"whoisPrivacy": @"whoisPrivacy", @"autoRenew": @"autoRenew" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"serviceInfo", @"serviceTypes", @"clientLinks", @"billingDetails", @"custCurrency", @"custCurrencySymbol", @"serviceExtra", @"extraInfoTables", @"serviceType", @"contactDetails", @"pwarning", @"transferInfo", @"errors", @"domainLogs", @"allInfo", @"registrarStatus", @"locked", @"whoisPrivacy", @"autoRenew"];
  return [optionalProperties containsObject:propertyName];
}

@end
