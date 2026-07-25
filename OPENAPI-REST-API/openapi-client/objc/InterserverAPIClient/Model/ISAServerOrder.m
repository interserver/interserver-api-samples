#import "ISAServerOrder.h"

@implementation ISAServerOrder

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"formValues": @"form_values", @"configIds": @"config_ids", @"cpu": @"cpu", @"fieldLabel": @"field_label", @"cpuLi": @"cpu_li", @"memoryLi": @"memory_li", @"bandwidthLi": @"bandwidth_li", @"ipsLi": @"ips_li", @"osLi": @"os_li", @"cpLi": @"cp_li", @"raidLi": @"raid_li" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"formValues", @"configIds", @"cpu", @"fieldLabel", @"cpuLi", @"memoryLi", @"bandwidthLi", @"ipsLi", @"osLi", @"cpLi", @"raidLi"];
  return [optionalProperties containsObject:propertyName];
}

@end
