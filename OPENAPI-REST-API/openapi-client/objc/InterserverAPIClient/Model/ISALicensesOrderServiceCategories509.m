#import "ISALicensesOrderServiceCategories509.h"

@implementation ISALicensesOrderServiceCategories509

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"categoryId": @"category_id", @"categoryName": @"category_name", @"categoryTag": @"category_tag", @"categoryModule": @"category_module" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"categoryId", @"categoryName", @"categoryTag", @"categoryModule"];
  return [optionalProperties containsObject:propertyName];
}

@end
