#import "ISAVpsRow.h"

@implementation ISAVpsRow

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"vpsId": @"vps_id", @"vpsName": @"vps_name", @"repeatInvoicesCost": @"repeat_invoices_cost", @"vpsHostname": @"vps_hostname", @"vpsIp": @"vps_ip", @"vpsStatus": @"vps_status", @"servicesName": @"services_name", @"vpsComment": @"vps_comment" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[];
  return [optionalProperties containsObject:propertyName];
}

@end
