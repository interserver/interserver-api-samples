//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/vps_snapshot.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'vps_service_extra.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class VpsServiceExtra {
  /// Returns a new [VpsServiceExtra] instance.
  VpsServiceExtra({

    this.spice = const Optional.absent(),

    this.snapshots = const Optional.absent(),
  });

      /// Spice
  @OptionalConverter()
  @JsonKey(
    
    name: r'spice',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> spice;



  @OptionalConverter()
  @JsonKey(
    
    name: r'snapshots',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<List<VpsSnapshot>?> snapshots;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is VpsServiceExtra &&
      runtimeType == other.runtimeType &&
      equals(
        [
            spice,
            snapshots,
        ],
        [
            other.spice,
            other.snapshots,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        spice,
        snapshots,
    ],);

  factory VpsServiceExtra.fromJson(Map<String, dynamic> json) => _$VpsServiceExtraFromJson(json);

  Map<String, dynamic> toJson() => _$VpsServiceExtraToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

