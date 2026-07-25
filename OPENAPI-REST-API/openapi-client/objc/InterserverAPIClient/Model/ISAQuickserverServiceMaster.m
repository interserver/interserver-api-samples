#import "ISAQuickserverServiceMaster.h"

@implementation ISAQuickserverServiceMaster

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"qsId": @"qs_id", @"qsName": @"qs_name", @"qsIp": @"qs_ip", @"qsType": @"qs_type", @"qsHdsize": @"qs_hdsize", @"qsHdfree": @"qs_hdfree", @"qsBits": @"qs_bits", @"qsLoad": @"qs_load", @"qsRam": @"qs_ram", @"qsCpuModel": @"qs_cpu_model", @"qsCpuMhz": @"qs_cpu_mhz", @"qsLocation": @"qs_location", @"qsAvailable": @"qs_available", @"qsCost": @"qs_cost", @"qsLastUpdate": @"qs_last_update", @"qsCores": @"qs_cores", @"qsIowait": @"qs_iowait", @"qsRaidStatus": @"qs_raid_status", @"qsDriveType": @"qs_drive_type", @"qsOrder": @"qs_order", @"qsRaidBuilding": @"qs_raid_building", @"qsKernel": @"qs_kernel", @"qsIoping": @"qs_ioping", @"qsSpeed": @"qs_speed", @"qsDistro": @"qs_distro", @"qsDistroVersion": @"qs_distro_version", @"qsBytesSecIn": @"qs_bytes_sec_in", @"qsBytesSecOut": @"qs_bytes_sec_out", @"qsPacketsSecIn": @"qs_packets_sec_in", @"qsPacketsSecOut": @"qs_packets_sec_out", @"qsLastInstallTime": @"qs_last_install_time", @"qsPartitions": @"qs_partitions", @"qsCpuFlags": @"qs_cpu_flags" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"qsId", @"qsName", @"qsIp", @"qsType", @"qsHdsize", @"qsHdfree", @"qsBits", @"qsLoad", @"qsRam", @"qsCpuModel", @"qsCpuMhz", @"qsLocation", @"qsAvailable", @"qsCost", @"qsLastUpdate", @"qsCores", @"qsIowait", @"qsRaidStatus", @"qsDriveType", @"qsOrder", @"qsRaidBuilding", @"qsKernel", @"qsIoping", @"qsSpeed", @"qsDistro", @"qsDistroVersion", @"qsBytesSecIn", @"qsBytesSecOut", @"qsPacketsSecIn", @"qsPacketsSecOut", @"qsLastInstallTime", @"qsPartitions", @"qsCpuFlags"];
  return [optionalProperties containsObject:propertyName];
}

@end
