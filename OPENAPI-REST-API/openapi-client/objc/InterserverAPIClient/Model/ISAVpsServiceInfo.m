#import "ISAVpsServiceInfo.h"

@implementation ISAVpsServiceInfo

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"vpsId": @"vps_id", @"vpsCustid": @"vps_custid", @"vpsServer": @"vps_server", @"vpsIp": @"vps_ip", @"vpsIpv6": @"vps_ipv6", @"vpsVzid": @"vps_vzid", @"vpsCurrency": @"vps_currency", @"vpsType": @"vps_type", @"vpsOrderDate": @"vps_order_date", @"vpsStatus": @"vps_status", @"vpsInvoice": @"vps_invoice", @"vpsCoupon": @"vps_coupon", @"vpsExtra": @"vps_extra", @"vpsHostname": @"vps_hostname", @"vpsServerStatus": @"vps_server_status", @"vpsComment": @"vps_comment", @"vpsSlices": @"vps_slices", @"vpsVnc": @"vps_vnc", @"vpsVncPort": @"vps_vnc_port", @"vpsRootpass": @"vps_rootpass", @"vpsMac": @"vps_mac", @"vpsOs": @"vps_os", @"vpsVersion": @"vps_version", @"vpsLocation": @"vps_location", @"vpsPlatform": @"vps_platform", @"vpsDiskused": @"vps_diskused", @"vpsDiskmax": @"vps_diskmax" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"vpsId", @"vpsCustid", @"vpsServer", @"vpsIp", @"vpsIpv6", @"vpsVzid", @"vpsCurrency", @"vpsType", @"vpsOrderDate", @"vpsStatus", @"vpsInvoice", @"vpsCoupon", @"vpsExtra", @"vpsHostname", @"vpsServerStatus", @"vpsComment", @"vpsSlices", @"vpsVnc", @"vpsVncPort", @"vpsRootpass", @"vpsMac", @"vpsOs", @"vpsVersion", @"vpsLocation", @"vpsPlatform", @"vpsDiskused", @"vpsDiskmax"];
  return [optionalProperties containsObject:propertyName];
}

@end
