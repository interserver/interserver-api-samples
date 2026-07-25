#import "ISAPostWebsiteMigrationRequest.h"

@implementation ISAPostWebsiteMigrationRequest

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"custPortal": @"custPortal", @"regEmail": @"regEmail", @"password": @"password", @"ctrlPanel": @"ctrlPanel", @"ftpUsername": @"ftpUsername", @"ftpPassword": @"ftpPassword", @"siteBusyMig": @"siteBusyMig", @"splReqMig": @"splReqMig", @"domainReg": @"domainReg", @"dataMig": @"dataMig", @"domainRegPortal": @"domainRegPortal", @"domainRegEmail": @"domainRegEmail", @"domainRegPassword": @"domainRegPassword" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"custPortal", @"regEmail", @"password", @"ctrlPanel", @"ftpUsername", @"ftpPassword", @"siteBusyMig", @"splReqMig", @"domainReg", @"dataMig", @"domainRegPortal", @"domainRegEmail", @"domainRegPassword"];
  return [optionalProperties containsObject:propertyName];
}

@end
