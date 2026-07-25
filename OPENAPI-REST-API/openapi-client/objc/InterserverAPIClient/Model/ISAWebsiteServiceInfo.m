#import "ISAWebsiteServiceInfo.h"

@implementation ISAWebsiteServiceInfo

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"websiteId": @"website_id", @"websiteServer": @"website_server", @"websiteType": @"website_type", @"websiteCurrency": @"website_currency", @"websiteOrderDate": @"website_order_date", @"websiteCustid": @"website_custid", @"websiteIp": @"website_ip", @"websiteStatus": @"website_status", @"websiteInvoice": @"website_invoice", @"websiteCoupon": @"website_coupon", @"websiteExtra": @"website_extra", @"websiteHostname": @"website_hostname", @"websiteComment": @"website_comment", @"websiteUsername": @"website_username", @"websiteServerStatus": @"website_server_status" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"websiteId", @"websiteServer", @"websiteType", @"websiteCurrency", @"websiteOrderDate", @"websiteCustid", @"websiteIp", @"websiteStatus", @"websiteInvoice", @"websiteCoupon", @"websiteExtra", @"websiteHostname", @"websiteComment", @"websiteUsername", @"websiteServerStatus"];
  return [optionalProperties containsObject:propertyName];
}

@end
