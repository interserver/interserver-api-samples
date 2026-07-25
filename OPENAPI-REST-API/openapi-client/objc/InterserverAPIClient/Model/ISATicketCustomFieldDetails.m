#import "ISATicketCustomFieldDetails.h"

@implementation ISATicketCustomFieldDetails

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"customerServerAccess": @"Customer Server Access", @"ipAddress": @"Ip Address", @"rootPassword": @"Root Password", @"sudoUser": @"Sudo User", @"sudoPassword": @"Sudo Password", @"port": @"Port" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"customerServerAccess", @"ipAddress", @"rootPassword", @"sudoUser", @"sudoPassword", @"port"];
  return [optionalProperties containsObject:propertyName];
}

@end
