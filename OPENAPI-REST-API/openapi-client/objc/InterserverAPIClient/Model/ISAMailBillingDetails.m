#import "ISAMailBillingDetails.h"

@implementation ISAMailBillingDetails

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"serviceLastInvoiceDate": @"service_last_invoice_date", @"servicePaymentStatus": @"service_payment_status", @"serviceFrequency": @"service_frequency", @"nextDate": @"next_date", @"serviceNextInvoiceDate": @"service_next_invoice_date", @"serviceCurrency": @"service_currency", @"serviceCurrencySymbol": @"service_currency_symbol", @"serviceCostInfo": @"service_cost_info", @"serviceExtra": @"service_extra", @"serviceExtraJson": @"service_extra_json" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"serviceLastInvoiceDate", @"servicePaymentStatus", @"serviceFrequency", @"nextDate", @"serviceNextInvoiceDate", @"serviceCurrency", @"serviceCurrencySymbol", @"serviceCostInfo", @"serviceExtra", @"serviceExtraJson"];
  return [optionalProperties containsObject:propertyName];
}

@end
