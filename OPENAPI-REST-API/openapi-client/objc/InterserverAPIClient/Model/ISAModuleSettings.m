#import "ISAModuleSettings.h"

@implementation ISAModuleSettings

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"sERVICEIDOFFSET": @"SERVICE_ID_OFFSET", @"uSEREPEATINVOICE": @"USE_REPEAT_INVOICE", @"uSEPACKAGES": @"USE_PACKAGES", @"bILLINGDAYSOFFSET": @"BILLING_DAYS_OFFSET", @"iMGNAME": @"IMGNAME", @"rEPEATBILLINGMETHOD": @"REPEAT_BILLING_METHOD", @"dELETEPENDINGDAYS": @"DELETE_PENDING_DAYS", @"sUSPENDDAYS": @"SUSPEND_DAYS", @"sUSPENDWARNINGDAYS": @"SUSPEND_WARNING_DAYS", @"tITLE": @"TITLE", @"mENUNAME": @"MENUNAME", @"eMAILFROM": @"EMAIL_FROM", @"tBLNAME": @"TBLNAME", @"tABLE": @"TABLE", @"tITLEFIELD": @"TITLE_FIELD", @"pREFIX": @"PREFIX", @"tITLEFIELD2": @"TITLE_FIELD2", @"tITLEFIELD3": @"TITLE_FIELD3" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"tITLEFIELD2", @"tITLEFIELD3"];
  return [optionalProperties containsObject:propertyName];
}

@end
