#import "ISAAccountInfoDataEmailSettings.h"

@implementation ISAAccountInfoDataEmailSettings

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"adminCcBadResponse": @"admin/cc_bad_response", @"adminMassCommunicationsTpl": @"admin/mass_communications.tpl" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"adminCcBadResponse", @"adminMassCommunicationsTpl"];
  return [optionalProperties containsObject:propertyName];
}

@end
