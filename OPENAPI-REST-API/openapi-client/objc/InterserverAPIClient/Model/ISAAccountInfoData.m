#import "ISAAccountInfoData.h"

@implementation ISAAccountInfoData

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"group": @"group", @"address": @"address", @"city": @"city", @"country": @"country", @"disableCc": @"disable_cc", @"fraudrecordScore": @"fraudrecord_score", @"ima": @"ima", @"name": @"name", @"paymentMethod": @"payment_method", @"phone": @"phone", @"pin": @"pin", @"state": @"state", @"status": @"status", @"zip": @"zip", @"accountId": @"account_id", @"accountLid": @"account_lid", @"address2": @"address2", @"affiliateDockDescription": @"affiliate_dock_description", @"affiliateDockTitle": @"affiliate_dock_title", @"affiliatePaymentMethod": @"affiliate_payment_method", @"affiliatePaypal": @"affiliate_paypal", @"cc": @"cc", @"ccAuto": @"cc_auto", @"ccExp": @"cc_exp", @"ccType": @"cc_type", @"ccWhitelist": @"cc_whitelist", @"ccs": @"ccs", @"ccsAdded": @"ccs_added", @"company": @"company", @"currency": @"currency", @"disableReinstall": @"disable_reinstall", @"disableReset": @"disable_reset", @"email": @"email", @"emailAbuse": @"email_abuse", @"emailSettings": @"email_settings", @"extra": @"extra", @"facebookId": @"facebook_id", @"facebookUrl": @"facebook_url", @"firstname": @"firstname", @"fraudrecord": @"fraudrecord", @"githubId": @"github_id", @"githubUrl": @"github_url", @"googleId": @"google_id", @"googleUrl": @"google_url", @"innertellId": @"innertell_id", @"lastname": @"lastname", @"locale": @"locale", @"maxmind": @"maxmind", @"maxmindScore": @"maxmind_score", @"mbId": @"mb_id", @"modernbillId": @"modernbill_id", @"picture": @"picture", @"referrerCoupon": @"referrer_coupon", @"resellerMarkup": @"reseller_markup", @"username": @"username", @"sshKey": @"ssh_key", @"sshKeyWrapped": @"ssh_key_wrapped", @"apiKey": @"api_key", @"apiKeyWrapped": @"api_key_wrapped", @"_2faGoogleKey": @"2fa_google_key", @"_2faGoogleEnabled": @"2fa_google_enabled", @"_2faGoogle": @"2fa_google", @"_2faGoogleSplit": @"2fa_google_split", @"_2faGoogleQr": @"2fa_google_qr" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"group", @"address", @"city", @"country", @"disableCc", @"fraudrecordScore", @"ima", @"name", @"paymentMethod", @"phone", @"pin", @"state", @"status", @"zip", @"accountId", @"accountLid", @"address2", @"affiliateDockDescription", @"affiliateDockTitle", @"affiliatePaymentMethod", @"affiliatePaypal", @"cc", @"ccAuto", @"ccExp", @"ccType", @"ccWhitelist", @"ccs", @"ccsAdded", @"company", @"currency", @"disableReinstall", @"disableReset", @"email", @"emailAbuse", @"emailSettings", @"extra", @"facebookId", @"facebookUrl", @"firstname", @"fraudrecord", @"githubId", @"githubUrl", @"googleId", @"googleUrl", @"innertellId", @"lastname", @"locale", @"maxmind", @"maxmindScore", @"mbId", @"modernbillId", @"picture", @"referrerCoupon", @"resellerMarkup", @"username", @"sshKey", @"sshKeyWrapped", @"apiKey", @"apiKeyWrapped", @"_2faGoogleKey", @"_2faGoogleEnabled", @"_2faGoogle", @"_2faGoogleSplit", @"_2faGoogleQr"];
  return [optionalProperties containsObject:propertyName];
}

@end
