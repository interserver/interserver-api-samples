//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'account_features.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class AccountFeatures {
  /// Returns a new [AccountFeatures] instance.
  AccountFeatures({

    this.disableReset = const Optional.absent(),

    this.disableReinstall = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'disable_reset',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> disableReset;



  @OptionalConverter()
  @JsonKey(
    
    name: r'disable_reinstall',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> disableReinstall;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is AccountFeatures &&
      runtimeType == other.runtimeType &&
      equals(
        [
            disableReset,
            disableReinstall,
        ],
        [
            other.disableReset,
            other.disableReinstall,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        disableReset,
        disableReinstall,
    ],);

  factory AccountFeatures.fromJson(Map<String, dynamic> json) => _$AccountFeaturesFromJson(json);

  Map<String, dynamic> toJson() => _$AccountFeaturesToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

