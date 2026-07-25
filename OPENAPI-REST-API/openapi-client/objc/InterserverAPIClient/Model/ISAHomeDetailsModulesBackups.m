#import "ISAHomeDetailsModulesBackups.h"

@implementation ISAHomeDetailsModulesBackups

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"icon": @"icon", @"viewLink": @"view_link", @"heading": @"heading", @"buyLink": @"buy_link", @"listLink": @"list_link" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"icon", @"viewLink", @"heading", @"buyLink", @"listLink"];
  return [optionalProperties containsObject:propertyName];
}

@end
