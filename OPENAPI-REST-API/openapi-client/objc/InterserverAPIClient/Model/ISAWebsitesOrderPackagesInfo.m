#import "ISAWebsitesOrderPackagesInfo.h"

@implementation ISAWebsitesOrderPackagesInfo

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"servicesId": @"services_id", @"servicesName": @"services_name", @"servicesCost": @"services_cost", @"servicesCategory": @"services_category", @"servicesBuyable": @"services_buyable", @"servicesType": @"services_type", @"servicesModule": @"services_module", @"servicesDescription": @"services_description", @"servicesField1": @"services_field1", @"servicesField2": @"services_field2", @"servicesHtml": @"services_html", @"servicesMoreinfoUrl": @"services_moreinfo_url", @"servicesHidden": @"services_hidden" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"servicesField1", @"servicesField2", @"servicesHtml", @"servicesMoreinfoUrl", @"servicesHidden"];
  return [optionalProperties containsObject:propertyName];
}

@end
