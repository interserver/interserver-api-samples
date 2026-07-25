#import "ISAServerOrderPostRequest.h"

@implementation ISAServerOrderPostRequest

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    self.comment = @"";
    
  }
  return self;
}


/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper {
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"cpu": @"cpu", @"hd": @"hd", @"memory": @"memory", @"bandwidth": @"bandwidth", @"ips": @"ips", @"os": @"os", @"cp": @"cp", @"raid": @"raid", @"region": @"region", @"servername": @"servername", @"rootpass": @"rootpass", @"tos": @"tos", @"comment": @"comment" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"comment"];
  return [optionalProperties containsObject:propertyName];
}

@end
