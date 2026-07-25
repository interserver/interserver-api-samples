#import "ISADomainOrderRequest.h"

@implementation ISADomainOrderRequest

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    self.type = @"register";
    self.coupon = @"";
    
  }
  return self;
}


/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper {
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"hostname": @"hostname", @"type": @"type", @"coupon": @"coupon", @"whoisPrivacy": @"whois_privacy" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"type", @"coupon", @"whoisPrivacy"];
  return [optionalProperties containsObject:propertyName];
}

@end
