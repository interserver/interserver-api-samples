#import "ISAMailStatsTypeVolumeTo.h"

@implementation ISAMailStatsTypeVolumeTo

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"clientdomainCom": @"client@domain.com", @"usersiteNet": @"user@site.net", @"salescompanyCom": @"sales@company.com", @"clientanothersiteCom": @"client@anothersite.com" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"clientdomainCom", @"usersiteNet", @"salescompanyCom", @"clientanothersiteCom"];
  return [optionalProperties containsObject:propertyName];
}

@end
