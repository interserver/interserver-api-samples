#import "ISAVpsServiceAddons.h"

@implementation ISAVpsServiceAddons

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"hasCpanel": @"has_cpanel", @"hasDirectadmin": @"has_directadmin", @"hasFantastico": @"has_fantastico", @"hasSoftaculous": @"has_softaculous", @"hasHdspace": @"has_hdspace", @"dedicatedIp": @"dedicated_ip", @"extraIps": @"extra_ips", @"extraIps6": @"extra_ips6", @"unpaidIps": @"unpaid_ips", @"ips": @"ips", @"ips6": @"ips6", @"cpanelId": @"cpanel_id", @"cost": @"cost", @"ids": @"ids", @"rdata": @"rdata" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"hasCpanel", @"hasDirectadmin", @"hasFantastico", @"hasSoftaculous", @"hasHdspace", @"dedicatedIp", @"extraIps", @"extraIps6", @"unpaidIps", @"ips", @"ips6", @"cpanelId", @"cost", @"ids", @"rdata"];
  return [optionalProperties containsObject:propertyName];
}

@end
