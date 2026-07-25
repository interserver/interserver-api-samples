#import "ISABillingVerifyCcRequest.h"

@implementation ISABillingVerifyCcRequest

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"idx": @"idx", @"ccCcv2": @"cc_ccv2", @"ccAmount1": @"cc_amount1", @"ccAmount2": @"cc_amount2", @"terms": @"terms" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"idx", @"ccCcv2", @"ccAmount1", @"ccAmount2", @"terms"];
  return [optionalProperties containsObject:propertyName];
}

@end
