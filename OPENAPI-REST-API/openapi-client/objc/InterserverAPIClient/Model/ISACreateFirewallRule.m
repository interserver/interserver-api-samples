#import "ISACreateFirewallRule.h"

@implementation ISACreateFirewallRule

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    self.destinationPort = @80;
    self.sourceIp = @"0.0.0.0";
    self.sourcePort = @0;
    
  }
  return self;
}


/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper {
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"destinationPort": @"destination_port", @"sourceIp": @"source_ip", @"sourcePort": @"source_port", @"protocolId": @"protocol_id", @"xdpAction": @"xdp_action" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"destinationPort", @"sourceIp", @"sourcePort", ];
  return [optionalProperties containsObject:propertyName];
}

@end
