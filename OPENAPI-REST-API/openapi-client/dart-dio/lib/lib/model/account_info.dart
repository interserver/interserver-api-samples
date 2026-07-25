//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/account_info_oauthproviders.dart';
import 'package:interserver_api/lib/model/account_info_limits.dart';
import 'package:interserver_api/lib/model/account_info_oauth_config.dart';
import 'package:interserver_api/lib/model/account_info_data.dart';
import 'package:interserver_api/lib/model/account_info_country_currencies.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'account_info.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class AccountInfo {
  /// Returns a new [AccountInfo] instance.
  AccountInfo({

    this.custid = const Optional.absent(),

    this.ima = const Optional.absent(),

    this.data = const Optional.absent(),

    this.ip = const Optional.absent(),

    this.oauthproviders = const Optional.absent(),

    this.oauthconfig = const Optional.absent(),

    this.oauthadapters = const Optional.absent(),

    this.limits = const Optional.absent(),

    this.language = const Optional.absent(),

    this.countryCurrencies = const Optional.absent(),

    this.enableLocales = const Optional.absent(),

    this.enableCurrencies = const Optional.absent(),

    this.gravatar = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'custid',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> custid;



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
    
    name: r'data',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<AccountInfoData?> data;



  @OptionalConverter()
  @JsonKey(
    
    name: r'ip',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> ip;



  @OptionalConverter()
  @JsonKey(
    
    name: r'oauthproviders',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<AccountInfoOauthproviders?> oauthproviders;



  @OptionalConverter()
  @JsonKey(
    
    name: r'oauthconfig',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<AccountInfoOauthConfig?> oauthconfig;



  @OptionalConverter()
  @JsonKey(
    
    name: r'oauthadapters',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<List<String>?> oauthadapters;



  @OptionalConverter()
  @JsonKey(
    
    name: r'limits',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<AccountInfoLimits?> limits;



  @OptionalConverter()
  @JsonKey(
    
    name: r'language',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> language;



  @OptionalConverter()
  @JsonKey(
    
    name: r'countryCurrencies',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<AccountInfoCountryCurrencies?> countryCurrencies;



  @OptionalConverter()
  @JsonKey(
    
    name: r'enableLocales',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<bool?> enableLocales;



  @OptionalConverter()
  @JsonKey(
    
    name: r'enableCurrencies',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<bool?> enableCurrencies;



  @OptionalConverter()
  @JsonKey(
    
    name: r'gravatar',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> gravatar;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is AccountInfo &&
      runtimeType == other.runtimeType &&
      equals(
        [
            custid,
            ima,
            data,
            ip,
            oauthproviders,
            oauthconfig,
            oauthadapters,
            limits,
            language,
            countryCurrencies,
            enableLocales,
            enableCurrencies,
            gravatar,
        ],
        [
            other.custid,
            other.ima,
            other.data,
            other.ip,
            other.oauthproviders,
            other.oauthconfig,
            other.oauthadapters,
            other.limits,
            other.language,
            other.countryCurrencies,
            other.enableLocales,
            other.enableCurrencies,
            other.gravatar,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        custid,
        ima,
        data,
        ip,
        oauthproviders,
        oauthconfig,
        oauthadapters,
        limits,
        language,
        countryCurrencies,
        enableLocales,
        enableCurrencies,
        gravatar,
    ],);

  factory AccountInfo.fromJson(Map<String, dynamic> json) => _$AccountInfoFromJson(json);

  Map<String, dynamic> toJson() => _$AccountInfoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

