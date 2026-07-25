#import "ISAChargeInvoiceRowsInvoicesValuePaidInvoicesValueRefundInvoicesValue.h"

@implementation ISAChargeInvoiceRowsInvoicesValuePaidInvoicesValueRefundInvoicesValue

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"invoicesId": @"invoices_id", @"invoicesDescription": @"invoices_description", @"invoicesAmount": @"invoices_amount", @"invoicesDate": @"invoices_date", @"invoicesCurrency": @"invoices_currency", @"currencySymbol": @"currency_symbol", @"invoicesDateFormatted": @"invoices_date_formatted" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"invoicesId", @"invoicesDescription", @"invoicesAmount", @"invoicesDate", @"invoicesCurrency", @"currencySymbol", @"invoicesDateFormatted"];
  return [optionalProperties containsObject:propertyName];
}

@end
