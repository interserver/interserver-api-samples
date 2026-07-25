#import "ISABackupServiceMaster.h"

@implementation ISABackupServiceMaster

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"backupId": @"backup_id", @"backupName": @"backup_name", @"backupIp": @"backup_ip", @"backupType": @"backup_type", @"backupHdsize": @"backup_hdsize", @"backupHdfree": @"backup_hdfree", @"backupLastUpdate": @"backup_last_update", @"backupAvailable": @"backup_available", @"backupIowait": @"backup_iowait", @"backupOrder": @"backup_order" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"backupId", @"backupName", @"backupIp", @"backupType", @"backupHdsize", @"backupHdfree", @"backupLastUpdate", @"backupAvailable", @"backupIowait", @"backupOrder"];
  return [optionalProperties containsObject:propertyName];
}

@end
