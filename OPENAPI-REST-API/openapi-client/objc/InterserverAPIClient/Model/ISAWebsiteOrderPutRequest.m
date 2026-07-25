#import "ISAWebsiteOrderPutRequest.h"

@implementation ISAWebsiteOrderPutRequest

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    self.rootpass = @"";
    self.period = @1;
    self.coupon = @"";
    self.serviceOfferId = @0;
    self.script = @0;
    self.comment = @"";
    self.registerDomain = @(NO);
    
  }
  return self;
}


/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper {
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"hostname": @"hostname", @"packageId": @"packageId", @"rootpass": @"rootpass", @"period": @"period", @"coupon": @"coupon", @"serviceOfferId": @"serviceOfferId", @"script": @"script", @"comment": @"comment", @"registerDomain": @"registerDomain" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"rootpass", @"period", @"coupon", @"serviceOfferId", @"script", @"comment", @"registerDomain"];
  return [optionalProperties containsObject:propertyName];
}

@end
