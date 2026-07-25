#import "ISAVps.h"

@implementation ISAVps

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"serviceInfo": @"serviceInfo", @"clientLinks": @"client_links", @"billingDetails": @"billingDetails", @"custCurrency": @"custCurrency", @"custCurrencySymbol": @"custCurrencySymbol", @"serviceMaster": @"serviceMaster", @"package": @"package", @"serviceExtra": @"serviceExtra", @"extraInfoTables": @"extraInfoTables", @"module": @"module", @"token": @"token", @"daLink": @"da_link", @"srLink": @"sr_link", @"cpData": @"cp_data", @"daData": @"da_data", @"plesk12Data": @"plesk12_data", @"serviceAddons": @"serviceAddons", @"osTemplate": @"os_template", @"cpuGraphData": @"cpu_graph_data" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"osTemplate", @"cpuGraphData"];
  return [optionalProperties containsObject:propertyName];
}

@end
