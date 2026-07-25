#import "ISAMailStatsTypeVolumeIp.h"

@implementation ISAMailStatsTypeVolumeIp

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_1111": @"1.1.1.1", @"_2222": @"2.2.2.2", @"_3333": @"3.3.3.3", @"_4444": @"4.4.4.4" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_1111", @"_2222", @"_3333", @"_4444"];
  return [optionalProperties containsObject:propertyName];
}

@end
