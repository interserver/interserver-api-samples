#import "ISADomainAllInfo.h"

@implementation ISADomainAllInfo

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"oPSVersion": @"_OPS_version", @"attributes": @"attributes", @"object": @"object", @"_protocol": @"protocol", @"responseText": @"response_text", @"responseCode": @"response_code", @"action": @"action", @"isSuccess": @"is_success" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"oPSVersion", @"attributes", @"object", @"_protocol", @"responseText", @"responseCode", @"action", @"isSuccess"];
  return [optionalProperties containsObject:propertyName];
}

@end
