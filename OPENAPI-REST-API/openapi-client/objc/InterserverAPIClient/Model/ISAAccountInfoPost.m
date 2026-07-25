#import "ISAAccountInfoPost.h"

@implementation ISAAccountInfoPost

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"name": @"name", @"company": @"company", @"address": @"address", @"address2": @"address2", @"city": @"city", @"state": @"state", @"zip": @"zip", @"country": @"country", @"phone": @"phone", @"locale": @"locale", @"emailInvoices": @"email_invoices", @"emailAbuse": @"email_abuse", @"disableReset": @"disable_reset", @"disableReinstall": @"disable_reinstall", @"disableServerNotifications": @"disable_server_notifications", @"disableEmailNotifications": @"disable_email_notifications", @"gstin": @"gstin" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"company", @"address2", @"locale", @"emailInvoices", @"emailAbuse", @"disableReset", @"disableReinstall", @"disableServerNotifications", @"disableEmailNotifications", @"gstin"];
  return [optionalProperties containsObject:propertyName];
}

@end
