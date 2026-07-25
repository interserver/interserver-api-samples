#import "ISABuyItNowServerOrder200ResponseRaidInner.h"

@implementation ISABuyItNowServerOrder200ResponseRaidInner

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"shortDesc": @"short_desc", @"longDesc": @"long_desc", @"monthlyPrice": @"monthly_price" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"shortDesc", @"longDesc", @"monthlyPrice"];
  return [optionalProperties containsObject:propertyName];
}

@end
