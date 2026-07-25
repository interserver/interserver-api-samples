#import "ISABackupServiceInfo.h"

@implementation ISABackupServiceInfo

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"backupId": @"backup_id", @"backupServer": @"backup_server", @"backupUsername": @"backup_username", @"backupType": @"backup_type", @"backupCurrency": @"backup_currency", @"backupOrderDate": @"backup_order_date", @"backupCustid": @"backup_custid", @"backupQuota": @"backup_quota", @"backupIp": @"backup_ip", @"backupStatus": @"backup_status", @"backupInvoice": @"backup_invoice", @"backupCoupon": @"backup_coupon", @"backupExtra": @"backup_extra", @"backupServerStatus": @"backup_server_status", @"backupComment": @"backup_comment" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"backupId", @"backupServer", @"backupUsername", @"backupType", @"backupCurrency", @"backupOrderDate", @"backupCustid", @"backupQuota", @"backupIp", @"backupStatus", @"backupInvoice", @"backupCoupon", @"backupExtra", @"backupServerStatus", @"backupComment"];
  return [optionalProperties containsObject:propertyName];
}

@end
