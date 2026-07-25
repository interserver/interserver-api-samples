#import "ISAGetAccountTfaSetup200Response.h"

@implementation ISAGetAccountTfaSetup200Response

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_2faGoogleKey": @"2fa_google_key", @"_2faGoogleSplit": @"2fa_google_split" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_2faGoogleKey", @"_2faGoogleSplit"];
  return [optionalProperties containsObject:propertyName];
}

@end
