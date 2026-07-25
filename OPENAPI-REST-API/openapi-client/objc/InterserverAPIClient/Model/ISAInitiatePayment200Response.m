#import "ISAInitiatePayment200Response.h"

@implementation ISAInitiatePayment200Response

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"type": @"type", @"redirect": @"redirect", @"action": @"action", @"method": @"method", @"items": @"items", @"text": @"text" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"type", @"redirect", @"action", @"method", @"items", @"text"];
  return [optionalProperties containsObject:propertyName];
}

@end
