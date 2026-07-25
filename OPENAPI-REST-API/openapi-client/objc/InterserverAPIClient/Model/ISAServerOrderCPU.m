#import "ISAServerOrderCPU.h"

@implementation ISAServerOrderCPU

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"price": @"price", @"img": @"img", @"shortDesc": @"short_desc", @"longDesc": @"long_desc", @"location": @"location", @"fsb": @"fsb", @"manu": @"manu", @"type": @"type", @"speed": @"speed", @"cache": @"cache", @"active": @"active", @"numCores": @"num_cores", @"numCpus": @"num_cpus", @"benchmark": @"benchmark", @"monthlyPrice": @"monthly_price", @"maxRam": @"max_ram", @"minRam": @"min_ram", @"maxLff": @"max_lff", @"maxSff": @"max_sff", @"maxNve": @"max_nve", @"visible": @"visible", @"hdIds": @"hd_ids", @"priceDisplay": @"price_display", @"monthlyPriceDisplay": @"monthly_price_display" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"price", @"img", @"shortDesc", @"longDesc", @"location", @"fsb", @"manu", @"type", @"speed", @"cache", @"active", @"numCores", @"numCpus", @"benchmark", @"monthlyPrice", @"maxRam", @"minRam", @"maxLff", @"maxSff", @"maxNve", @"visible", @"hdIds", @"priceDisplay", @"monthlyPriceDisplay"];
  return [optionalProperties containsObject:propertyName];
}

@end
