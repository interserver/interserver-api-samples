//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/account_info_oauth_config_providers_value.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'account_info_oauth_config_providers.g.dart';

// ignore_for_file: unused_import


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class AccountInfoOauthConfigProviders {
  /// Returns a new [AccountInfoOauthConfigProviders] instance.
  AccountInfoOauthConfigProviders({
  });


    bool operator ==(Object other) {
      return identical(this, other) ||
      other is AccountInfoOauthConfigProviders &&
      runtimeType == other.runtimeType &&
      equals(
        [
        ],
        [
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
    ],);

  factory AccountInfoOauthConfigProviders.fromJson(Map<String, dynamic> json) => _$AccountInfoOauthConfigProvidersFromJson(json);

  Map<String, dynamic> toJson() => _$AccountInfoOauthConfigProvidersToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

