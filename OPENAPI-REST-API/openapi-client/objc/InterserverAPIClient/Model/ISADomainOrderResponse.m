#import "ISADomainOrderResponse.h"

@implementation ISADomainOrderResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"oPSVersion": @"_OPS_version", @"_protocol": @"protocol", @"isSuccess": @"is_success", @"action": @"action", @"attributes": @"attributes", @"responseText": @"response_text", @"object": @"object", @"responseCode": @"response_code" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"oPSVersion", @"_protocol", @"isSuccess", @"action", @"attributes", @"responseText", @"object", @"responseCode"];
  return [optionalProperties containsObject:propertyName];
}

@end
