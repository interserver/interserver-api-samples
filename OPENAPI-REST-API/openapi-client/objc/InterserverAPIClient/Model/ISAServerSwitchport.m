#import "ISAServerSwitchport.h"

@implementation ISAServerSwitchport

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"switchportId": @"switchport_id", @"switchId": @"switch_id", @"_switch": @"switch", @"port": @"port", @"blade": @"blade", @"justport": @"justport", @"graphId": @"graph_id", @"assetId": @"asset_id", @"vlans": @"vlans", @"vlans6": @"vlans6" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"vlans", @"vlans6"];
  return [optionalProperties containsObject:propertyName];
}

@end
