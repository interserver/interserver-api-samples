#import "ISAServerServiceInfo.h"

@implementation ISAServerServiceInfo

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"serverId": @"server_id", @"serverHostname": @"server_hostname", @"serverCustid": @"server_custid", @"serverType": @"server_type", @"serverCurrency": @"server_currency", @"serverOrderDate": @"server_order_date", @"serverInvoice": @"server_invoice", @"serverCoupon": @"server_coupon", @"serverStatus": @"server_status", @"serverRoot": @"server_root", @"serverDedicatedTag": @"server_dedicated_tag", @"serverCustomTag": @"server_custom_tag", @"serverComment": @"server_comment", @"serverInitialBill": @"server_initial_bill", @"serverHardware": @"server_hardware", @"serverIps": @"server_ips", @"serverMonthlyBill": @"server_monthly_bill", @"serverSetup": @"server_setup", @"serverDiscount": @"server_discount", @"serverRep": @"server_rep", @"serverDate": @"server_date", @"serverTotalCost": @"server_total_cost", @"serverLocation": @"server_location", @"serverHardwareOrdered": @"server_hardware_ordered", @"serverBilled": @"server_billed", @"serverWelcomeEmail": @"server_welcome_email", @"serverDedicatedCpu": @"server_dedicated_cpu", @"serverDedicatedMemory": @"server_dedicated_memory", @"serverDedicatedHd1": @"server_dedicated_hd1", @"serverDedicatedHd2": @"server_dedicated_hd2", @"serverDedicatedBandwidth": @"server_dedicated_bandwidth", @"serverDedicatedIps": @"server_dedicated_ips", @"serverDedicatedOs": @"server_dedicated_os", @"serverDedicatedCp": @"server_dedicated_cp", @"serverDedicatedRaid": @"server_dedicated_raid", @"serverExtra": @"server_extra" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"serverId", @"serverHostname", @"serverCustid", @"serverType", @"serverCurrency", @"serverOrderDate", @"serverInvoice", @"serverCoupon", @"serverStatus", @"serverRoot", @"serverDedicatedTag", @"serverCustomTag", @"serverComment", @"serverInitialBill", @"serverHardware", @"serverIps", @"serverMonthlyBill", @"serverSetup", @"serverDiscount", @"serverRep", @"serverDate", @"serverTotalCost", @"serverLocation", @"serverHardwareOrdered", @"serverBilled", @"serverWelcomeEmail", @"serverDedicatedCpu", @"serverDedicatedMemory", @"serverDedicatedHd1", @"serverDedicatedHd2", @"serverDedicatedBandwidth", @"serverDedicatedIps", @"serverDedicatedOs", @"serverDedicatedCp", @"serverDedicatedRaid", @"serverExtra"];
  return [optionalProperties containsObject:propertyName];
}

@end
