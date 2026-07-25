#import "ISADomainLookupResponse.h"

@implementation ISADomainLookupResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"available": @"available", @"premium": @"premium", @"website": @"website", @"domainService": @"domain_service", @"service": @"service", @"whoisPrivacy": @"whois_privacy", @"varNew": @"new", @"renewal": @"renewal", @"transfer": @"transfer", @"fields": @"fields", @"currencies": @"currencies" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"available", @"premium", @"website", @"domainService", @"service", @"whoisPrivacy", @"varNew", @"renewal", @"transfer", @"fields", @"currencies"];
  return [optionalProperties containsObject:propertyName];
}

@end
