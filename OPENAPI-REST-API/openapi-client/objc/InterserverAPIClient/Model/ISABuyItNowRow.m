#import "ISABuyItNowRow.h"

@implementation ISABuyItNowRow

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"serverId": @"server_id", @"cpu": @"cpu", @"memory": @"memory", @"disk": @"disk", @"bandwidth": @"bandwidth", @"ips": @"ips", @"location": @"location", @"price": @"price" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"serverId", @"cpu", @"memory", @"disk", @"bandwidth", @"ips", @"location", @"price"];
  return [optionalProperties containsObject:propertyName];
}

@end
