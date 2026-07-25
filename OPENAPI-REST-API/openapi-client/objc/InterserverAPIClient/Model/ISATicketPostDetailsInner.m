#import "ISATicketPostDetailsInner.h"

@implementation ISATicketPostDetailsInner

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"postId": @"post_id", @"date": @"date", @"contents": @"contents", @"creator": @"creator", @"creatorEmail": @"creator_email", @"creatorName": @"creator_name", @"hasattachments": @"hasattachments", @"attachmentDownload": @"attachment_download" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"postId", @"date", @"contents", @"creator", @"creatorEmail", @"creatorName", @"hasattachments", @"attachmentDownload"];
  return [optionalProperties containsObject:propertyName];
}

@end
