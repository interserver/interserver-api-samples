#import "ISALicenseRow.h"

@implementation ISALicenseRow

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"licenseId": @"license_id", @"licenseHostname": @"license_hostname", @"licenseIp": @"license_ip", @"servicesName": @"services_name", @"cost": @"cost", @"licenseStatus": @"license_status", @"invoicesPaid": @"invoices_paid", @"invoicesDate": @"invoices_date" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"licenseId", @"licenseHostname", @"licenseIp", @"servicesName", @"cost", @"licenseStatus", @"invoicesPaid", @"invoicesDate"];
  return [optionalProperties containsObject:propertyName];
}

@end
