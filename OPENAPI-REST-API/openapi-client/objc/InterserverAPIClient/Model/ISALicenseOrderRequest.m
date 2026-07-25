#import "ISALicenseOrderRequest.h"

@implementation ISALicenseOrderRequest

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    self.frequency = @1;
    self.coupon = @"";
    self.comment = @"";
    
  }
  return self;
}


/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper {
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"package": @"package", @"ip": @"ip", @"tos": @"tos", @"frequency": @"frequency", @"coupon": @"coupon", @"comment": @"comment" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"frequency", @"coupon", @"comment"];
  return [optionalProperties containsObject:propertyName];
}

@end
