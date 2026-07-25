#import "ISADomainSearchResponse.h"

@implementation ISADomainSearchResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"success": @"success", @"responseText": @"response_text", @"responseTime": @"response_time", @"lookup": @"lookup", @"suggest": @"suggest", @"tlds": @"tlds" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"success", @"responseText", @"responseTime", @"lookup", @"suggest", @"tlds"];
  return [optionalProperties containsObject:propertyName];
}

@end
