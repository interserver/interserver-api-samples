#import "ISAWebsitesOrder.h"

@implementation ISAWebsitesOrder

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"step": @"step", @"website": @"website", @"period": @"period", @"serviceOfferId": @"serviceOfferId", @"packages": @"packages", @"enableDomainRegistering": @"enableDomainRegistering", @"jsonServices": @"jsonServices", @"jsonServiceOffers": @"jsonServiceOffers", @"serviceTypes": @"serviceTypes", @"serviceOffers": @"serviceOffers", @"packges": @"packges" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"packges"];
  return [optionalProperties containsObject:propertyName];
}

@end
