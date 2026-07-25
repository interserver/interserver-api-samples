#import "ISAVpsTemplateRow.h"

@implementation ISAVpsTemplateRow

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"templateId": @"template_id", @"templateType": @"template_type", @"templateOs": @"template_os", @"templateVersion": @"template_version", @"templateBits": @"template_bits", @"templateFile": @"template_file", @"templateAvailable": @"template_available", @"templateName": @"template_name", @"templateDir": @"template_dir" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"templateId", @"templateType", @"templateOs", @"templateVersion", @"templateBits", @"templateFile", @"templateAvailable", @"templateName", @"templateDir"];
  return [optionalProperties containsObject:propertyName];
}

@end
