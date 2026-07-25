#import "ISAQuickserverClientLink.h"

@implementation ISAQuickserverClientLink

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"label": @"label", @"link": @"link", @"icon": @"icon", @"iconText": @"icon_text", @"helpText": @"help_text", @"otherAttr": @"other_attr" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"label", @"link", @"icon", @"iconText", @"helpText", @"otherAttr"];
  return [optionalProperties containsObject:propertyName];
}

@end
