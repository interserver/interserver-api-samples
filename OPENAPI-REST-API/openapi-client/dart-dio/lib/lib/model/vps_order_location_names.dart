//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'vps_order_location_names.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class VpsOrderLocationNames {
  /// Returns a new [VpsOrderLocationNames] instance.
  VpsOrderLocationNames({

    this.n3 = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'3',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> n3;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is VpsOrderLocationNames &&
      runtimeType == other.runtimeType &&
      equals(
        [
            n3,
        ],
        [
            other.n3,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        n3,
    ],);

  factory VpsOrderLocationNames.fromJson(Map<String, dynamic> json) => _$VpsOrderLocationNamesFromJson(json);

  Map<String, dynamic> toJson() => _$VpsOrderLocationNamesToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

