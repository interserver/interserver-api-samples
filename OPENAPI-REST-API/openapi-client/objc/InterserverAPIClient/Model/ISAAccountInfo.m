#import "ISAAccountInfo.h"

@implementation ISAAccountInfo

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"custid": @"custid", @"ima": @"ima", @"data": @"data", @"ip": @"ip", @"oauthproviders": @"oauthproviders", @"oauthconfig": @"oauthconfig", @"oauthadapters": @"oauthadapters", @"limits": @"limits", @"language": @"language", @"countryCurrencies": @"countryCurrencies", @"enableLocales": @"enableLocales", @"enableCurrencies": @"enableCurrencies", @"gravatar": @"gravatar" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"custid", @"ima", @"data", @"ip", @"oauthproviders", @"oauthconfig", @"oauthadapters", @"limits", @"language", @"countryCurrencies", @"enableLocales", @"enableCurrencies", @"gravatar"];
  return [optionalProperties containsObject:propertyName];
}

@end
