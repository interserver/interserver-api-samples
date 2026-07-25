#import "ISALicenseServiceInfo.h"

@implementation ISALicenseServiceInfo

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"licenseId": @"license_id", @"licenseType": @"license_type", @"licenseCurrency": @"license_currency", @"licenseOrderDate": @"license_order_date", @"licenseCustid": @"license_custid", @"licenseIp": @"license_ip", @"licenseStatus": @"license_status", @"licenseHostname": @"license_hostname", @"licenseKey": @"license_key", @"licenseInvoice": @"license_invoice", @"licenseCoupon": @"license_coupon", @"licenseExtra": @"license_extra" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"licenseHostname", @"licenseKey", @"licenseExtra"];
  return [optionalProperties containsObject:propertyName];
}

@end
