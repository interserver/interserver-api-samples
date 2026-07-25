#import "ISAVpsOrderPutResponse.h"

@implementation ISAVpsOrderPutResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_continue": @"continue", @"errors": @"errors", @"couponCode": @"coupon_code", @"serviceCost": @"service_cost", @"sliceCost": @"slice_cost", @"serviceType": @"service_type", @"repeatSliceCost": @"repeat_slice_cost", @"originalSliceCost": @"original_slice_cost", @"originalCost": @"original_cost", @"repeatServiceCost": @"repeat_service_cost", @"monthlyServiceCost": @"monthly_service_cost", @"custid": @"custid", @"os": @"os", @"slices": @"slices", @"platform": @"platform", @"controlpanel": @"controlpanel", @"period": @"period", @"location": @"location", @"version": @"version", @"hostname": @"hostname", @"coupon": @"coupon", @"rootpass": @"rootpass" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_continue", @"errors", @"couponCode", @"serviceCost", @"sliceCost", @"serviceType", @"repeatSliceCost", @"originalSliceCost", @"originalCost", @"repeatServiceCost", @"monthlyServiceCost", @"custid", @"os", @"slices", @"platform", @"controlpanel", @"period", @"location", @"version", @"hostname", @"coupon", @"rootpass"];
  return [optionalProperties containsObject:propertyName];
}

@end
