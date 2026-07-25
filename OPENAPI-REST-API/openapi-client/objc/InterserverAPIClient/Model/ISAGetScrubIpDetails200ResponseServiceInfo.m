#import "ISAGetScrubIpDetails200ResponseServiceInfo.h"

@implementation ISAGetScrubIpDetails200ResponseServiceInfo

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"scrubIpId": @"scrub_ip_id", @"scrubIpType": @"scrub_ip_type", @"scrubIpCustid": @"scrub_ip_custid", @"scrubIpOrderDate": @"scrub_ip_order_date", @"scrubIpIp": @"scrub_ip_ip", @"scrubIpServiceId": @"scrub_ip_service_id", @"scrubIpServiceModule": @"scrub_ip_service_module", @"scrubIpStatus": @"scrub_ip_status", @"scrubIpInvoice": @"scrub_ip_invoice", @"scrubIpCurrency": @"scrub_ip_currency", @"scrubIpCoupon": @"scrub_ip_coupon", @"scrubIpComment": @"scrub_ip_comment" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"scrubIpId", @"scrubIpType", @"scrubIpCustid", @"scrubIpOrderDate", @"scrubIpIp", @"scrubIpServiceId", @"scrubIpServiceModule", @"scrubIpStatus", @"scrubIpInvoice", @"scrubIpCurrency", @"scrubIpCoupon", @"scrubIpComment"];
  return [optionalProperties containsObject:propertyName];
}

@end
