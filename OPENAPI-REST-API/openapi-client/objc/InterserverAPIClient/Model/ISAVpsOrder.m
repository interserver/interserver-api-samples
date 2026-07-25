#import "ISAVpsOrder.h"

@implementation ISAVpsOrder

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"vpsSliceSsdOvzCost": @"vpsSliceSsdOvzCost", @"vpsSliceOvzCost": @"vpsSliceOvzCost", @"vpsSliceSsdVirtuozzoCost": @"vpsSliceSsdVirtuozzoCost", @"vpsSliceVirtuozzoCost": @"vpsSliceVirtuozzoCost", @"vpsSliceHypervCost": @"vpsSliceHypervCost", @"vpsSliceVmwareCost": @"vpsSliceVmwareCost", @"vpsSliceLxcCost": @"vpsSliceLxcCost", @"vpsSliceXenCost": @"vpsSliceXenCost", @"vpsSliceKvmLCost": @"vpsSliceKvmLCost", @"vpsSliceKvmStorageCost": @"vpsSliceKvmStorageCost", @"vpsNyCost": @"vpsNyCost", @"vpsSliceKvmWCost": @"vpsSliceKvmWCost", @"cpanelCost": @"cpanelCost", @"daCost": @"daCost", @"ramSlice": @"ramSlice", @"hdSlice": @"hdSlice", @"hdStorageSlice": @"hdStorageSlice", @"bwSlice": @"bwSlice", @"bwType": @"bwType", @"bwTotal": @"bwTotal", @"maxSlices": @"maxSlices", @"platformPackages": @"platformPackages", @"platformNames": @"platformNames", @"packageCosts": @"packageCosts", @"locationStock": @"locationStock", @"locationNames": @"locationNames", @"osNames": @"osNames", @"templates": @"templates", @"serviceTypes": @"serviceTypes", @"currency": @"currency", @"currencySymbol": @"currencySymbol" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[];
  return [optionalProperties containsObject:propertyName];
}

@end
