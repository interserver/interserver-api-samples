//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/vps_order_service_types32.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'vps_order_service_types.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class VpsOrderServiceTypes {
  /// Returns a new [VpsOrderServiceTypes] instance.
  VpsOrderServiceTypes({

    this.n32 = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'32',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<VpsOrderServiceTypes32?> n32;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is VpsOrderServiceTypes &&
      runtimeType == other.runtimeType &&
      equals(
        [
            n32,
        ],
        [
            other.n32,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        n32,
    ],);

  factory VpsOrderServiceTypes.fromJson(Map<String, dynamic> json) => _$VpsOrderServiceTypesFromJson(json);

  Map<String, dynamic> toJson() => _$VpsOrderServiceTypesToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

