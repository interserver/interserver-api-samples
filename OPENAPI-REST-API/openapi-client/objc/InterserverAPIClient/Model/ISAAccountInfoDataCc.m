#import "ISAAccountInfoDataCc.h"

@implementation ISAAccountInfoDataCc

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"cc": @"cc", @"ccExp": @"cc_exp", @"name": @"name", @"address": @"address", @"city": @"city", @"state": @"state", @"zip": @"zip", @"country": @"country", @"maxmindRiskscore": @"maxmind_riskscore", @"maxmind": @"maxmind", @"verified": @"verified" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"cc", @"ccExp", @"name", @"address", @"city", @"state", @"zip", @"country", @"maxmindRiskscore", @"maxmind", @"verified"];
  return [optionalProperties containsObject:propertyName];
}

@end
