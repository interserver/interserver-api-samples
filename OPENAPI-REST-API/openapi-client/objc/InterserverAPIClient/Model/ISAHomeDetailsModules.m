#import "ISAHomeDetailsModules.h"

@implementation ISAHomeDetailsModules

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"domains": @"domains", @"webhosting": @"webhosting", @"vps": @"vps", @"licenses": @"licenses", @"backups": @"backups", @"servers": @"servers", @"quickservers": @"quickservers" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"domains", @"webhosting", @"vps", @"licenses", @"backups", @"servers", @"quickservers"];
  return [optionalProperties containsObject:propertyName];
}

@end
