#import "ISATicketDetails.h"

@implementation ISATicketDetails

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"ticketid": @"ticketid", @"ticketmaskid": @"ticketmaskid", @"department": @"department", @"status": @"status", @"priority": @"priority", @"subject": @"subject", @"createdOn": @"created_on", @"updatedOn": @"updated_on" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"ticketid", @"ticketmaskid", @"department", @"status", @"priority", @"subject", @"createdOn", @"updatedOn"];
  return [optionalProperties containsObject:propertyName];
}

@end
