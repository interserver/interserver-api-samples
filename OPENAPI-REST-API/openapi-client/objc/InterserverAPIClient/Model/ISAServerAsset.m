#import "ISAServerAsset.h"

@implementation ISAServerAsset

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"orderId": @"order_id", @"hostname": @"hostname", @"status": @"status", @"primaryIpv4": @"primary_ipv4", @"primaryIpv6": @"primary_ipv6", @"datacenter": @"datacenter", @"typeId": @"type_id", @"assetTag": @"asset_tag", @"rack": @"rack", @"row": @"row", @"col": @"col", @"unitStart": @"unit_start", @"unitEnd": @"unit_end", @"unitSub": @"unit_sub", @"ipmiMac": @"ipmi_mac", @"ipmiIp": @"ipmi_ip", @"ipmiWorking": @"ipmi_working", @"company": @"company", @"comments": @"comments", @"make": @"make", @"model": @"model", @"_description": @"description", @"customerId": @"customer_id", @"externalId": @"external_id", @"billingStatus": @"billing_status", @"overdue": @"overdue", @"assetId": @"asset_id", @"assetName": @"asset_name", @"rackId": @"rack_id", @"rackName": @"rack_name", @"rackLocation": @"rack_location", @"rackSize": @"rack_size", @"rackX": @"rack_x", @"rackY": @"rack_y", @"switchports": @"switchports", @"vlans": @"vlans", @"vlans6": @"vlans6", @"lease": @"lease", @"mac": @"mac", @"ipmiAdminUsername": @"ipmi_admin_username", @"ipmiAdminPassword": @"ipmi_admin_password", @"ipmiClientUsername": @"ipmi_client_username", @"ipmiClientPassword": @"ipmi_client_password", @"ipmiUpdated": @"ipmi_updated", @"createTimestamp": @"create_timestamp", @"updateTimestamp": @"update_timestamp", @"comment": @"comment" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"mac", @"ipmiAdminUsername", @"ipmiAdminPassword", @"ipmiClientUsername", @"ipmiClientPassword", @"ipmiUpdated", @"createTimestamp", @"updateTimestamp", @"comment"];
  return [optionalProperties containsObject:propertyName];
}

@end
