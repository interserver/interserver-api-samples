#import "ISAQuickserver.h"

@implementation ISAQuickserver

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"serviceInfo": @"serviceInfo", @"clientLinks": @"client_links", @"billingDetails": @"billingDetails", @"custCurrency": @"custCurrency", @"custCurrencySymbol": @"custCurrencySymbol", @"serviceMaster": @"serviceMaster", @"package": @"package", @"osTemplate": @"os_template", @"serviceExtra": @"serviceExtra", @"extraInfoTables": @"extraInfoTables", @"cpuGraphData": @"cpu_graph_data", @"bandwidthXaxis": @"bandwidth_xaxis", @"bandwidthYaxis": @"bandwidth_yaxis", @"module": @"module", @"token": @"token", @"serviceDiskUsed": @"service_disk_used", @"serviceDiskTotal": @"service_disk_total", @"diskPercentage": @"disk_percentage", @"memory": @"memory", @"hdd": @"hdd", @"serviceOverviewExtra": @"service_overview_extra" }];
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
