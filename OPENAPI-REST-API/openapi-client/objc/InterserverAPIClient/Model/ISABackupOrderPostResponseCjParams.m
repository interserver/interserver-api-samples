#import "ISABackupOrderPostResponseCjParams.h"

@implementation ISABackupOrderPostResponseCjParams

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"containerTagId": @"containerTagId", @"cID": @"CID", @"oID": @"OID", @"tYPE": @"TYPE", @"iTEM1": @"ITEM1", @"aMT1": @"AMT1", @"qTY1": @"QTY1", @"cURRENCY": @"CURRENCY" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"containerTagId", @"cID", @"oID", @"tYPE", @"iTEM1", @"aMT1", @"qTY1", @"cURRENCY"];
  return [optionalProperties containsObject:propertyName];
}

@end
