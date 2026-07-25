//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'account_info_oauth_config_providers_value.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class AccountInfoOauthConfigProvidersValue {
  /// Returns a new [AccountInfoOauthConfigProvidersValue] instance.
  AccountInfoOauthConfigProvidersValue({

    this.enabled = const Optional.absent(),

    this.linked = const Optional.absent(),

    this.account = const Optional.absent(),

    this.url = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'enabled',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<bool?> enabled;



  @OptionalConverter()
  @JsonKey(
    
    name: r'linked',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<bool?> linked;



  @OptionalConverter()
  @JsonKey(
    
    name: r'account',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> account;



  @OptionalConverter()
  @JsonKey(
    
    name: r'url',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> url;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is AccountInfoOauthConfigProvidersValue &&
      runtimeType == other.runtimeType &&
      equals(
        [
            enabled,
            linked,
            account,
            url,
        ],
        [
            other.enabled,
            other.linked,
            other.account,
            other.url,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        enabled,
        linked,
        account,
        url,
    ],);

  factory AccountInfoOauthConfigProvidersValue.fromJson(Map<String, dynamic> json) => _$AccountInfoOauthConfigProvidersValueFromJson(json);

  Map<String, dynamic> toJson() => _$AccountInfoOauthConfigProvidersValueToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

