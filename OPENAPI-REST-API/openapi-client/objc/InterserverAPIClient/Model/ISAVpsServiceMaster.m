#import "ISAVpsServiceMaster.h"

@implementation ISAVpsServiceMaster

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"vpsId": @"vps_id", @"vpsName": @"vps_name", @"vpsIp": @"vps_ip", @"vpsType": @"vps_type", @"vpsHdsize": @"vps_hdsize", @"vpsHdfree": @"vps_hdfree", @"vpsBits": @"vps_bits", @"vpsLoad": @"vps_load", @"vpsRam": @"vps_ram", @"vpsCpuModel": @"vps_cpu_model", @"vpsCpuMhz": @"vps_cpu_mhz", @"vpsLocation": @"vps_location", @"vpsLastUpdate": @"vps_last_update", @"vpsRaidBuilding": @"vps_raid_building", @"vpsKernel": @"vps_kernel", @"vpsAvailable": @"vps_available", @"vpsCores": @"vps_cores", @"vpsIowait": @"vps_iowait", @"vpsRaidStatus": @"vps_raid_status", @"vpsMounts": @"vps_mounts", @"vpsServerMax": @"vps_server_max", @"vpsServerMaxSlices": @"vps_server_max_slices", @"vpsDriveType": @"vps_drive_type", @"vpsOrder": @"vps_order" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"vpsId", @"vpsName", @"vpsIp", @"vpsType", @"vpsHdsize", @"vpsHdfree", @"vpsBits", @"vpsLoad", @"vpsRam", @"vpsCpuModel", @"vpsCpuMhz", @"vpsLocation", @"vpsLastUpdate", @"vpsRaidBuilding", @"vpsKernel", @"vpsAvailable", @"vpsCores", @"vpsIowait", @"vpsRaidStatus", @"vpsMounts", @"vpsServerMax", @"vpsServerMaxSlices", @"vpsDriveType", @"vpsOrder"];
  return [optionalProperties containsObject:propertyName];
}

@end
