#import "ISADomainServiceInfo.h"

@implementation ISADomainServiceInfo

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"domainId": @"domain_id", @"domainHostname": @"domain_hostname", @"domainUsername": @"domain_username", @"domainPassword": @"domain_password", @"domainType": @"domain_type", @"domainCurrency": @"domain_currency", @"domainExpireDate": @"domain_expire_date", @"domainOrderDate": @"domain_order_date", @"domainCustid": @"domain_custid", @"domainStatus": @"domain_status", @"domainInvoice": @"domain_invoice", @"domainCoupon": @"domain_coupon" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"domainId", @"domainHostname", @"domainUsername", @"domainPassword", @"domainType", @"domainCurrency", @"domainExpireDate", @"domainOrderDate", @"domainCustid", @"domainStatus", @"domainInvoice", @"domainCoupon"];
  return [optionalProperties containsObject:propertyName];
}

@end
