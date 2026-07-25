//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'account_info_country_currencies.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class AccountInfoCountryCurrencies {
  /// Returns a new [AccountInfoCountryCurrencies] instance.
  AccountInfoCountryCurrencies({
  });


    bool operator ==(Object other) {
      return identical(this, other) ||
      other is AccountInfoCountryCurrencies &&
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

  factory AccountInfoCountryCurrencies.fromJson(Map<String, dynamic> json) => _$AccountInfoCountryCurrenciesFromJson(json);

  Map<String, dynamic> toJson() => _$AccountInfoCountryCurrenciesToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

