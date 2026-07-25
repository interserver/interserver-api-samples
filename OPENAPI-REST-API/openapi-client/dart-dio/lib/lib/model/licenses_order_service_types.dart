//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/licenses_order_service_types11482.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'licenses_order_service_types.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class LicensesOrderServiceTypes {
  /// Returns a new [LicensesOrderServiceTypes] instance.
  LicensesOrderServiceTypes({

    this.licensesOrderServiceTypes11482 = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'LicensesOrderServiceTypes11482',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<LicensesOrderServiceTypes11482?> licensesOrderServiceTypes11482;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is LicensesOrderServiceTypes &&
      runtimeType == other.runtimeType &&
      equals(
        [
            licensesOrderServiceTypes11482,
        ],
        [
            other.licensesOrderServiceTypes11482,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        licensesOrderServiceTypes11482,
    ],);

  factory LicensesOrderServiceTypes.fromJson(Map<String, dynamic> json) => _$LicensesOrderServiceTypesFromJson(json);

  Map<String, dynamic> toJson() => _$LicensesOrderServiceTypesToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

