#import "ISAVpsOrderPutRequest.h"

@implementation ISAVpsOrderPutRequest

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    self.slices = @1;
    self.period = @1;
    self.location = @1;
    self.hostname = @"";
    self.coupon = @"";
    self.comment = @"";
    
  }
  return self;
}


/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper {
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"osDistro": @"osDistro", @"slices": @"slices", @"vpsPlatform": @"vpsPlatform", @"period": @"period", @"location": @"location", @"osVersion": @"osVersion", @"hostname": @"hostname", @"rootpass": @"rootpass", @"controlpanel": @"controlpanel", @"coupon": @"coupon", @"comment": @"comment" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"controlpanel", @"coupon", @"comment"];
  return [optionalProperties containsObject:propertyName];
}

@end
