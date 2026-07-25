#import "ISAMailStatsType.h"

@implementation ISAMailStatsType

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    self.time = @"1h";
    
  }
  return self;
}


/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper {
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"time": @"time", @"usage": @"usage", @"currency": @"currency", @"currencySymbol": @"currencySymbol", @"cost": @"cost", @"received": @"received", @"sent": @"sent", @"volume": @"volume" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"time", @"usage", @"currency", @"currencySymbol", @"cost", @"received", @"sent", @"volume"];
  return [optionalProperties containsObject:propertyName];
}

@end
