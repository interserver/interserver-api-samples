#import "ISAServerOrderMemory.h"

@implementation ISAServerOrderMemory

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"price": @"price", @"img": @"img", @"shortDesc": @"short_desc", @"longDesc": @"long_desc", @"manu": @"manu", @"size": @"size", @"type": @"type", @"hidden": @"hidden", @"monthlyPrice": @"monthly_price", @"driveType": @"drive_type", @"monthlyPriceDisplay": @"monthly_price_display" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"price", @"img", @"shortDesc", @"longDesc", @"manu", @"size", @"type", @"hidden", @"monthlyPrice", @"driveType", @"monthlyPriceDisplay"];
  return [optionalProperties containsObject:propertyName];
}

@end
