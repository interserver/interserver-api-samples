#import "ISAServiceOrderPostResponse.h"

@implementation ISAServiceOrderPostResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_continue": @"continue", @"errors": @"errors", @"totalCost": @"total_cost", @"iid": @"iid", @"iids": @"iids", @"realIids": @"real_iids", @"serviceId": @"serviceId", @"invoiceDescription": @"invoice_description" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_continue", @"errors", @"totalCost", @"iid", @"iids", @"realIids", @"serviceId", @"invoiceDescription"];
  return [optionalProperties containsObject:propertyName];
}

@end
