#import "ISAMailAlertsResponseInner.h"

@implementation ISAMailAlertsResponseInner

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"alertId": @"alert_id", @"alertType": @"alert_type", @"alertValue": @"alert_value", @"alertTo": @"alert_to", @"alertEnabled": @"alert_enabled" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"alertId", @"alertType", @"alertValue", @"alertTo", @"alertEnabled"];
  return [optionalProperties containsObject:propertyName];
}

@end
