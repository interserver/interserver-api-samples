#import "ISAWebsitesOrderJsonServiceOffersItem.h"

@implementation ISAWebsitesOrderJsonServiceOffersItem

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"serviceOfferId": @"service_offer_id", @"serviceId": @"service_id", @"introCost": @"intro_cost", @"renewalCost": @"renewal_cost", @"introFrequency": @"intro_frequency", @"renewalFrequency": @"renewal_frequency", @"allowCoupon": @"allow_coupon", @"serviceModule": @"service_module", @"createdAt": @"created_at", @"updatedAt": @"updated_at", @"deletedAt": @"deleted_at", @"currencySymbol": @"currencySymbol" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"serviceOfferId", @"serviceId", @"introCost", @"renewalCost", @"introFrequency", @"renewalFrequency", @"allowCoupon", @"serviceModule", @"createdAt", @"updatedAt", @"deletedAt", @"currencySymbol"];
  return [optionalProperties containsObject:propertyName];
}

@end
