//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/account_info_oauth_config_providers.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'account_info_oauth_config.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class AccountInfoOauthConfig {
  /// Returns a new [AccountInfoOauthConfig] instance.
  AccountInfoOauthConfig({

    required  this.callback,

    required  this.providers,
  });

  @JsonKey(
    
    name: r'callback',
    required: true,
    includeIfNull: false,
  )


  final String callback;



  @JsonKey(
    
    name: r'providers',
    required: true,
    includeIfNull: false,
  )


  final AccountInfoOauthConfigProviders providers;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is AccountInfoOauthConfig &&
      runtimeType == other.runtimeType &&
      equals(
        [
            callback,
            providers,
        ],
        [
            other.callback,
            other.providers,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        callback,
        providers,
    ],);

  factory AccountInfoOauthConfig.fromJson(Map<String, dynamic> json) => _$AccountInfoOauthConfigFromJson(json);

  Map<String, dynamic> toJson() => _$AccountInfoOauthConfigToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

