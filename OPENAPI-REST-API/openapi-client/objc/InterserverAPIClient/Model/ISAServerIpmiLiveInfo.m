#import "ISAServerIpmiLiveInfo.h"

@implementation ISAServerIpmiLiveInfo

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"text": @"text", @"publicIp": @"public_ip", @"allowedIp": @"allowed_ip", @"clientUsername": @"client_username", @"clientPassword": @"client_password" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"text", @"publicIp", @"allowedIp", @"clientUsername", @"clientPassword"];
  return [optionalProperties containsObject:propertyName];
}

@end
