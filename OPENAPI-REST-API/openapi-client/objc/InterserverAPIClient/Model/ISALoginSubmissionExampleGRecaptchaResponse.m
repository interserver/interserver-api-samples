#import "ISALoginSubmissionExampleGRecaptchaResponse.h"

@implementation ISALoginSubmissionExampleGRecaptchaResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"vIsShallow": @"__v_isShallow", @"dep": @"dep", @"vIsRef": @"__v_isRef", @"rawValue": @"_rawValue", @"value": @"_value" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"vIsShallow", @"dep", @"vIsRef", @"rawValue", @"value"];
  return [optionalProperties containsObject:propertyName];
}

@end
