#import "ISADomainAllInfoAttributes.h"

@implementation ISADomainAllInfoAttributes

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"contactSet": @"contact_set", @"registryCreatedate": @"registry_createdate", @"registryExpiredate": @"registry_expiredate", @"tldData": @"tld_data", @"letExpire": @"let_expire", @"autoRenew": @"auto_renew", @"sponsoringRsp": @"sponsoring_rsp", @"gdprConsentStatus": @"gdpr_consent_status", @"nameserverList": @"nameserver_list", @"registryUpdatedate": @"registry_updatedate", @"affiliateId": @"affiliate_id", @"expiredate": @"expiredate" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"contactSet", @"registryCreatedate", @"registryExpiredate", @"tldData", @"letExpire", @"autoRenew", @"sponsoringRsp", @"gdprConsentStatus", @"nameserverList", @"registryUpdatedate", @"affiliateId", @"expiredate"];
  return [optionalProperties containsObject:propertyName];
}

@end
