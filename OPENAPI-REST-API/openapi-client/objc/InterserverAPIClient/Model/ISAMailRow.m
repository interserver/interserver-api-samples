#import "ISAMailRow.h"

@implementation ISAMailRow

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"mailId": @"mail_id", @"repeatInvoicesCost": @"repeat_invoices_cost", @"mailUsername": @"mail_username", @"mailStatus": @"mail_status", @"servicesName": @"services_name" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"mailId", @"repeatInvoicesCost", @"mailUsername", @"mailStatus", @"servicesName"];
  return [optionalProperties containsObject:propertyName];
}

@end
