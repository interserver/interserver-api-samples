#import "ISAPlaceBuyNowServerRequest.h"

@implementation ISAPlaceBuyNowServerRequest

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"serverId": @"server_id", @"serverHostname": @"server_hostname", @"serverRootPassword": @"server_root_password" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"serverId", @"serverHostname", @"serverRootPassword"];
  return [optionalProperties containsObject:propertyName];
}

@end
