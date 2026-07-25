#import "ISAScrubIpsLogRowSchema.h"

@implementation ISAScrubIpsLogRowSchema

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"date": @"date", @"filter": @"filter", @"blockedIp": @"blocked_ip", @"targetIp": @"target_ip", @"targetPort": @"target_port", @"_protocol": @"protocol", @"byteCount": @"byte_count", @"xdpAction": @"xdp_action" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"date", @"filter", @"blockedIp", @"targetIp", @"targetPort", @"_protocol", @"byteCount", @"xdpAction"];
  return [optionalProperties containsObject:propertyName];
}

@end
