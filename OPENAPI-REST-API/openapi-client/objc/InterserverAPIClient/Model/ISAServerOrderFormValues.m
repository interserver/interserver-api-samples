#import "ISAServerOrderFormValues.h"

@implementation ISAServerOrderFormValues

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"memory": @"memory", @"bandwidth": @"bandwidth", @"ips": @"ips", @"os": @"os", @"cp": @"cp", @"raid": @"raid", @"hd": @"hd" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"memory", @"bandwidth", @"ips", @"os", @"cp", @"raid", @"hd"];
  return [optionalProperties containsObject:propertyName];
}

@end
