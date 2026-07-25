#import "ISABackupRow.h"

@implementation ISABackupRow

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"backupId": @"backup_id", @"backupName": @"backup_name", @"backupCost": @"backup_cost", @"backupUsername": @"backup_username", @"backupStatus": @"backup_status", @"servicesName": @"services_name" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"backupId", @"backupName", @"backupCost", @"backupUsername", @"backupStatus", @"servicesName"];
  return [optionalProperties containsObject:propertyName];
}

@end
