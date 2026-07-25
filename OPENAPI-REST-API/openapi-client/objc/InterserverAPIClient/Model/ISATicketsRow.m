#import "ISATicketsRow.h"

@implementation ISATicketsRow

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"title": @"title", @"ticketmaskid": @"ticketmaskid", @"lastreplier": @"lastreplier", @"status": @"status", @"priority": @"priority", @"totalReplies": @"total_replies", @"lastactivity": @"lastactivity", @"departmenttitle": @"departmenttitle", @"ticketid": @"ticketid", @"canClose": @"can_close", @"attachments": @"attachments", @"statusText": @"status_text", @"checked": @"checked" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[];
  return [optionalProperties containsObject:propertyName];
}

@end
