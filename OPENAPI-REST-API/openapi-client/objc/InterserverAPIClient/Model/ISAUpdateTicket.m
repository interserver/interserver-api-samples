#import "ISAUpdateTicket.h"

@implementation ISAUpdateTicket

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"ip": @"ip", @"ipAddress": @"ip_address", @"customerServerAccess": @"customer_server_access", @"rootPassword": @"root_password", @"sudoUsername": @"sudo_username", @"sudoPassword": @"sudo_password", @"port": @"port" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"ip", @"ipAddress", @"customerServerAccess", @"rootPassword", @"sudoUsername", @"sudoPassword", @"port"];
  return [optionalProperties containsObject:propertyName];
}

@end
