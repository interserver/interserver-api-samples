#import "ISAHomeServicesVpsLinks.h"

@implementation ISAHomeServicesVpsLinks

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_465503": @"465503", @"_2500081": @"2500081", @"_2578866": @"2578866" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_465503", @"_2500081", @"_2578866"];
  return [optionalProperties containsObject:propertyName];
}

@end
