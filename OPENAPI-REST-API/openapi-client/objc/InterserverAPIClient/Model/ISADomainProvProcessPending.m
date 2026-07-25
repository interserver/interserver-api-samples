#import "ISADomainProvProcessPending.h"

@implementation ISADomainProvProcessPending

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"oPSVersion": @"_OPS_version", @"responseText": @"response_text", @"_protocol": @"protocol", @"responseCode": @"response_code", @"action": @"action", @"object": @"object", @"isSuccess": @"is_success", @"attributes": @"attributes" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"oPSVersion", @"responseText", @"_protocol", @"responseCode", @"action", @"object", @"isSuccess", @"attributes"];
  return [optionalProperties containsObject:propertyName];
}

@end
