//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/account_info_data_ccs.dart';
import 'package:interserver_api/lib/model/account_info_data_extra.dart';
import 'package:interserver_api/lib/model/account_info_max_mind_response.dart';
import 'package:interserver_api/lib/model/account_info_data_email_settings.dart';
import 'package:interserver_api/lib/model/account_info_data_fraudrecord.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'account_info_data.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class AccountInfoData {
  /// Returns a new [AccountInfoData] instance.
  AccountInfoData({

    this.group = const Optional.absent(),

    this.address = const Optional.absent(),

    this.city = const Optional.absent(),

    this.country = const Optional.absent(),

    this.disableCc = const Optional.absent(),

    this.fraudrecordScore = const Optional.absent(),

    this.ima = const Optional.absent(),

    this.name = const Optional.absent(),

    this.paymentMethod = const Optional.absent(),

    this.phone = const Optional.absent(),

    this.pin = const Optional.absent(),

    this.state = const Optional.absent(),

    this.status = const Optional.absent(),

    this.zip = const Optional.absent(),

    this.accountId = const Optional.absent(),

    this.accountLid = const Optional.absent(),

    this.address2 = const Optional.absent(),

    this.affiliateDockDescription = const Optional.absent(),

    this.affiliateDockTitle = const Optional.absent(),

    this.affiliatePaymentMethod = const Optional.absent(),

    this.affiliatePaypal = const Optional.absent(),

    this.cc = const Optional.absent(),

    this.ccAuto = const Optional.absent(),

    this.ccExp = const Optional.absent(),

    this.ccType = const Optional.absent(),

    this.ccWhitelist = const Optional.absent(),

    this.ccs = const Optional.absent(),

    this.ccsAdded = const Optional.absent(),

    this.company = const Optional.absent(),

    this.currency = const Optional.absent(),

    this.disableReinstall = const Optional.absent(),

    this.disableReset = const Optional.absent(),

    this.email = const Optional.absent(),

    this.emailAbuse = const Optional.absent(),

    this.emailSettings = const Optional.absent(),

    this.extra = const Optional.absent(),

    this.facebookId = const Optional.absent(),

    this.facebookUrl = const Optional.absent(),

    this.firstname = const Optional.absent(),

    this.fraudrecord = const Optional.absent(),

    this.githubId = const Optional.absent(),

    this.githubUrl = const Optional.absent(),

    this.googleId = const Optional.absent(),

    this.googleUrl = const Optional.absent(),

    this.innertellId = const Optional.absent(),

    this.lastname = const Optional.absent(),

    this.locale = const Optional.absent(),

    this.maxmind = const Optional.absent(),

    this.maxmindScore = const Optional.absent(),

    this.mbId = const Optional.absent(),

    this.modernbillId = const Optional.absent(),

    this.picture = const Optional.absent(),

    this.referrerCoupon = const Optional.absent(),

    this.resellerMarkup = const Optional.absent(),

    this.username = const Optional.absent(),

    this.sshKey = const Optional.absent(),

    this.sshKeyWrapped = const Optional.absent(),

    this.apiKey = const Optional.absent(),

    this.apiKeyWrapped = const Optional.absent(),

    this.n2faGoogleKey = const Optional.absent(),

    this.n2faGoogleEnabled = const Optional.absent(),

    this.n2faGoogle = const Optional.absent(),

    this.n2faGoogleSplit = const Optional.absent(),

    this.n2faGoogleQr = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'group',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> group;



  @OptionalConverter()
  @JsonKey(
    
    name: r'address',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> address;



  @OptionalConverter()
  @JsonKey(
    
    name: r'city',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> city;



  @OptionalConverter()
  @JsonKey(
    
    name: r'country',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> country;



  @OptionalConverter()
  @JsonKey(
    
    name: r'disable_cc',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> disableCc;



  @OptionalConverter()
  @JsonKey(
    
    name: r'fraudrecord_score',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> fraudrecordScore;



  @OptionalConverter()
  @JsonKey(
    
    name: r'ima',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> ima;



  @OptionalConverter()
  @JsonKey(
    
    name: r'name',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> name;



  @OptionalConverter()
  @JsonKey(
    
    name: r'payment_method',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> paymentMethod;



  @OptionalConverter()
  @JsonKey(
    
    name: r'phone',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> phone;



  @OptionalConverter()
  @JsonKey(
    
    name: r'pin',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> pin;



  @OptionalConverter()
  @JsonKey(
    
    name: r'state',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> state;



  @OptionalConverter()
  @JsonKey(
    
    name: r'status',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> status;



  @OptionalConverter()
  @JsonKey(
    
    name: r'zip',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> zip;



  @OptionalConverter()
  @JsonKey(
    
    name: r'account_id',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> accountId;



  @OptionalConverter()
  @JsonKey(
    
    name: r'account_lid',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> accountLid;



  @OptionalConverter()
  @JsonKey(
    
    name: r'address2',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> address2;



  @OptionalConverter()
  @JsonKey(
    
    name: r'affiliate_dock_description',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> affiliateDockDescription;



  @OptionalConverter()
  @JsonKey(
    
    name: r'affiliate_dock_title',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> affiliateDockTitle;



  @OptionalConverter()
  @JsonKey(
    
    name: r'affiliate_payment_method',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> affiliatePaymentMethod;



  @OptionalConverter()
  @JsonKey(
    
    name: r'affiliate_paypal',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> affiliatePaypal;



  @OptionalConverter()
  @JsonKey(
    
    name: r'cc',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> cc;



  @OptionalConverter()
  @JsonKey(
    
    name: r'cc_auto',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> ccAuto;



  @OptionalConverter()
  @JsonKey(
    
    name: r'cc_exp',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> ccExp;



  @OptionalConverter()
  @JsonKey(
    
    name: r'cc_type',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> ccType;



  @OptionalConverter()
  @JsonKey(
    
    name: r'cc_whitelist',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> ccWhitelist;



  @OptionalConverter()
  @JsonKey(
    
    name: r'ccs',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<AccountInfoDataCcs?> ccs;



  @OptionalConverter()
  @JsonKey(
    
    name: r'ccs_added',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> ccsAdded;



  @OptionalConverter()
  @JsonKey(
    
    name: r'company',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> company;



  @OptionalConverter()
  @JsonKey(
    
    name: r'currency',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> currency;



  @OptionalConverter()
  @JsonKey(
    
    name: r'disable_reinstall',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> disableReinstall;



  @OptionalConverter()
  @JsonKey(
    
    name: r'disable_reset',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> disableReset;



  @OptionalConverter()
  @JsonKey(
    
    name: r'email',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> email;



  @OptionalConverter()
  @JsonKey(
    
    name: r'email_abuse',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> emailAbuse;



  @OptionalConverter()
  @JsonKey(
    
    name: r'email_settings',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<AccountInfoDataEmailSettings?> emailSettings;



  @OptionalConverter()
  @JsonKey(
    
    name: r'extra',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<AccountInfoDataExtra?> extra;



  @OptionalConverter()
  @JsonKey(
    
    name: r'facebook_id',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> facebookId;



  @OptionalConverter()
  @JsonKey(
    
    name: r'facebook_url',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> facebookUrl;



  @OptionalConverter()
  @JsonKey(
    
    name: r'firstname',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> firstname;



  @OptionalConverter()
  @JsonKey(
    
    name: r'fraudrecord',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<AccountInfoDataFraudrecord?> fraudrecord;



  @OptionalConverter()
  @JsonKey(
    
    name: r'github_id',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> githubId;



  @OptionalConverter()
  @JsonKey(
    
    name: r'github_url',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> githubUrl;



  @OptionalConverter()
  @JsonKey(
    
    name: r'google_id',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> googleId;



  @OptionalConverter()
  @JsonKey(
    
    name: r'google_url',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> googleUrl;



  @OptionalConverter()
  @JsonKey(
    
    name: r'innertell_id',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> innertellId;



  @OptionalConverter()
  @JsonKey(
    
    name: r'lastname',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> lastname;



  @OptionalConverter()
  @JsonKey(
    
    name: r'locale',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> locale;



  @OptionalConverter()
  @JsonKey(
    
    name: r'maxmind',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<AccountInfoMaxMindResponse?> maxmind;



  @OptionalConverter()
  @JsonKey(
    
    name: r'maxmind_score',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> maxmindScore;



  @OptionalConverter()
  @JsonKey(
    
    name: r'mb_id',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> mbId;



  @OptionalConverter()
  @JsonKey(
    
    name: r'modernbill_id',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> modernbillId;



  @OptionalConverter()
  @JsonKey(
    
    name: r'picture',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> picture;



  @OptionalConverter()
  @JsonKey(
    
    name: r'referrer_coupon',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> referrerCoupon;



  @OptionalConverter()
  @JsonKey(
    
    name: r'reseller_markup',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> resellerMarkup;



  @OptionalConverter()
  @JsonKey(
    
    name: r'username',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> username;



  @OptionalConverter()
  @JsonKey(
    
    name: r'ssh_key',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> sshKey;



  @OptionalConverter()
  @JsonKey(
    
    name: r'ssh_key_wrapped',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> sshKeyWrapped;



  @OptionalConverter()
  @JsonKey(
    
    name: r'api_key',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> apiKey;



  @OptionalConverter()
  @JsonKey(
    
    name: r'api_key_wrapped',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> apiKeyWrapped;



  @OptionalConverter()
  @JsonKey(
    
    name: r'2fa_google_key',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> n2faGoogleKey;



  @OptionalConverter()
  @JsonKey(
    
    name: r'2fa_google_enabled',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<bool?> n2faGoogleEnabled;



  @OptionalConverter()
  @JsonKey(
    
    name: r'2fa_google',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> n2faGoogle;



  @OptionalConverter()
  @JsonKey(
    
    name: r'2fa_google_split',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> n2faGoogleSplit;



  @OptionalConverter()
  @JsonKey(
    
    name: r'2fa_google_qr',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> n2faGoogleQr;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is AccountInfoData &&
      runtimeType == other.runtimeType &&
      equals(
        [
            group,
            address,
            city,
            country,
            disableCc,
            fraudrecordScore,
            ima,
            name,
            paymentMethod,
            phone,
            pin,
            state,
            status,
            zip,
            accountId,
            accountLid,
            address2,
            affiliateDockDescription,
            affiliateDockTitle,
            affiliatePaymentMethod,
            affiliatePaypal,
            cc,
            ccAuto,
            ccExp,
            ccType,
            ccWhitelist,
            ccs,
            ccsAdded,
            company,
            currency,
            disableReinstall,
            disableReset,
            email,
            emailAbuse,
            emailSettings,
            extra,
            facebookId,
            facebookUrl,
            firstname,
            fraudrecord,
            githubId,
            githubUrl,
            googleId,
            googleUrl,
            innertellId,
            lastname,
            locale,
            maxmind,
            maxmindScore,
            mbId,
            modernbillId,
            picture,
            referrerCoupon,
            resellerMarkup,
            username,
            sshKey,
            sshKeyWrapped,
            apiKey,
            apiKeyWrapped,
            n2faGoogleKey,
            n2faGoogleEnabled,
            n2faGoogle,
            n2faGoogleSplit,
            n2faGoogleQr,
        ],
        [
            other.group,
            other.address,
            other.city,
            other.country,
            other.disableCc,
            other.fraudrecordScore,
            other.ima,
            other.name,
            other.paymentMethod,
            other.phone,
            other.pin,
            other.state,
            other.status,
            other.zip,
            other.accountId,
            other.accountLid,
            other.address2,
            other.affiliateDockDescription,
            other.affiliateDockTitle,
            other.affiliatePaymentMethod,
            other.affiliatePaypal,
            other.cc,
            other.ccAuto,
            other.ccExp,
            other.ccType,
            other.ccWhitelist,
            other.ccs,
            other.ccsAdded,
            other.company,
            other.currency,
            other.disableReinstall,
            other.disableReset,
            other.email,
            other.emailAbuse,
            other.emailSettings,
            other.extra,
            other.facebookId,
            other.facebookUrl,
            other.firstname,
            other.fraudrecord,
            other.githubId,
            other.githubUrl,
            other.googleId,
            other.googleUrl,
            other.innertellId,
            other.lastname,
            other.locale,
            other.maxmind,
            other.maxmindScore,
            other.mbId,
            other.modernbillId,
            other.picture,
            other.referrerCoupon,
            other.resellerMarkup,
            other.username,
            other.sshKey,
            other.sshKeyWrapped,
            other.apiKey,
            other.apiKeyWrapped,
            other.n2faGoogleKey,
            other.n2faGoogleEnabled,
            other.n2faGoogle,
            other.n2faGoogleSplit,
            other.n2faGoogleQr,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        group,
        address,
        city,
        country,
        disableCc,
        fraudrecordScore,
        ima,
        name,
        paymentMethod,
        phone,
        pin,
        state,
        status,
        zip,
        accountId,
        accountLid,
        address2,
        affiliateDockDescription,
        affiliateDockTitle,
        affiliatePaymentMethod,
        affiliatePaypal,
        cc,
        ccAuto,
        ccExp,
        ccType,
        ccWhitelist,
        ccs,
        ccsAdded,
        company,
        currency,
        disableReinstall,
        disableReset,
        email,
        emailAbuse,
        emailSettings,
        extra,
        facebookId,
        facebookUrl,
        firstname,
        fraudrecord,
        githubId,
        githubUrl,
        googleId,
        googleUrl,
        innertellId,
        lastname,
        locale,
        maxmind,
        maxmindScore,
        mbId,
        modernbillId,
        picture,
        referrerCoupon,
        resellerMarkup,
        username,
        sshKey,
        sshKeyWrapped,
        apiKey,
        apiKeyWrapped,
        n2faGoogleKey,
        n2faGoogleEnabled,
        n2faGoogle,
        n2faGoogleSplit,
        n2faGoogleQr,
    ],);

  factory AccountInfoData.fromJson(Map<String, dynamic> json) => _$AccountInfoDataFromJson(json);

  Map<String, dynamic> toJson() => _$AccountInfoDataToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

