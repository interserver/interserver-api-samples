#import "ISAMailServiceInfo.h"

@implementation ISAMailServiceInfo

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"mailId": @"mail_id", @"mailType": @"mail_type", @"mailCurrency": @"mail_currency", @"mailOrderDate": @"mail_order_date", @"mailCustid": @"mail_custid", @"mailQuota": @"mail_quota", @"mailStatus": @"mail_status", @"mailInvoice": @"mail_invoice", @"mailUsername": @"mail_username", @"mailIp": @"mail_ip", @"mailCoupon": @"mail_coupon", @"mailExtra": @"mail_extra", @"mailServerStatus": @"mail_server_status", @"mailComment": @"mail_comment" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"mailUsername", @"mailIp", @"mailCoupon", @"mailExtra", @"mailServerStatus", @"mailComment"];
  return [optionalProperties containsObject:propertyName];
}

@end
