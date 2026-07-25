#import "ISAQuickserverServiceInfo.h"

@implementation ISAQuickserverServiceInfo

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"qsId": @"qs_id", @"qsCustid": @"qs_custid", @"qsServer": @"qs_server", @"qsIp": @"qs_ip", @"qsIpv6": @"qs_ipv6", @"qsVzid": @"qs_vzid", @"qsCurrency": @"qs_currency", @"qsType": @"qs_type", @"qsOrderDate": @"qs_order_date", @"qsStatus": @"qs_status", @"qsInvoice": @"qs_invoice", @"qsCoupon": @"qs_coupon", @"qsExtra": @"qs_extra", @"qsHostname": @"qs_hostname", @"qsServerStatus": @"qs_server_status", @"qsComment": @"qs_comment", @"qsSlices": @"qs_slices", @"qsVnc": @"qs_vnc", @"qsVncPort": @"qs_vnc_port", @"qsRootpass": @"qs_rootpass", @"qsMac": @"qs_mac", @"qsOs": @"qs_os", @"qsVersion": @"qs_version", @"qsLocation": @"qs_location", @"qsPlatform": @"qs_platform" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"qsId", @"qsCustid", @"qsServer", @"qsIp", @"qsIpv6", @"qsVzid", @"qsCurrency", @"qsType", @"qsOrderDate", @"qsStatus", @"qsInvoice", @"qsCoupon", @"qsExtra", @"qsHostname", @"qsServerStatus", @"qsComment", @"qsSlices", @"qsVnc", @"qsVncPort", @"qsRootpass", @"qsMac", @"qsOs", @"qsVersion", @"qsLocation", @"qsPlatform"];
  return [optionalProperties containsObject:propertyName];
}

@end
