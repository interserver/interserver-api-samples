#import "ISAQsOrderRequest.h"

@implementation ISAQsOrderRequest

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    self.os = @"";
    self.comment = @"";
    
  }
  return self;
}


/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper {
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"server": @"server", @"password": @"password", @"tos": @"tos", @"os": @"os", @"comment": @"comment" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"os", @"comment"];
  return [optionalProperties containsObject:propertyName];
}

@end
