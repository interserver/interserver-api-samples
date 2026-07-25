#import "ISADomainRow.h"

@implementation ISADomainRow

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"domainId": @"domain_id", @"domainHostname": @"domain_hostname", @"domainExpireDate": @"domain_expire_date", @"cost": @"cost", @"domainStatus": @"domain_status" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"domainId", @"domainHostname", @"domainExpireDate", @"cost", @"domainStatus"];
  return [optionalProperties containsObject:propertyName];
}

@end
