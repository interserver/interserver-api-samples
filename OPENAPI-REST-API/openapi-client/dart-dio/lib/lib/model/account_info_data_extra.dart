//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'account_info_data_extra.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class AccountInfoDataExtra {
  /// Returns a new [AccountInfoDataExtra] instance.
  AccountInfoDataExtra({

    this.privateWhois = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'private_whois',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> privateWhois;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is AccountInfoDataExtra &&
      runtimeType == other.runtimeType &&
      equals(
        [
            privateWhois,
        ],
        [
            other.privateWhois,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        privateWhois,
    ],);

  factory AccountInfoDataExtra.fromJson(Map<String, dynamic> json) => _$AccountInfoDataExtraFromJson(json);

  Map<String, dynamic> toJson() => _$AccountInfoDataExtraToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

