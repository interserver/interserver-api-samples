#import "ISAWebsiteServiceMaster.h"

@implementation ISAWebsiteServiceMaster

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"websiteId": @"website_id", @"websiteName": @"website_name", @"websiteIp": @"website_ip", @"websiteType": @"website_type", @"websiteAvailable": @"website_available", @"websiteHdsize": @"website_hdsize", @"websiteHdfree": @"website_hdfree", @"websiteLoad": @"website_load", @"websiteLastUpdate": @"website_last_update", @"websiteMaxSites": @"website_max_sites", @"websiteOrder": @"website_order", @"websitePartitions": @"website_partitions", @"websiteDns1": @"website_dns1", @"websiteDns2": @"website_dns2" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"websiteId", @"websiteName", @"websiteIp", @"websiteType", @"websiteAvailable", @"websiteHdsize", @"websiteHdfree", @"websiteLoad", @"websiteLastUpdate", @"websiteMaxSites", @"websiteOrder", @"websitePartitions", @"websiteDns1", @"websiteDns2"];
  return [optionalProperties containsObject:propertyName];
}

@end
