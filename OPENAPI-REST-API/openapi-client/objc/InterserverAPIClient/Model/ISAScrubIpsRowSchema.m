#import "ISAScrubIpsRowSchema.h"

@implementation ISAScrubIpsRowSchema

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"scrubIpId": @"scrub_ip_id", @"repeatInvoicesCost": @"repeat_invoices_cost", @"scrubIpIp": @"scrub_ip_ip", @"scrubIpStatus": @"scrub_ip_status", @"servicesName": @"services_name" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"scrubIpId", @"repeatInvoicesCost", @"scrubIpIp", @"scrubIpStatus", @"servicesName"];
  return [optionalProperties containsObject:propertyName];
}

@end
