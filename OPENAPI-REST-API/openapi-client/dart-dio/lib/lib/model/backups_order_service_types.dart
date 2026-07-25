//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'backups_order_service_types.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class BackupsOrderServiceTypes {
  /// Returns a new [BackupsOrderServiceTypes] instance.
  BackupsOrderServiceTypes({

    this.n11006 = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'11006',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<BackupsOrderServiceTypes?> n11006;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is BackupsOrderServiceTypes &&
      runtimeType == other.runtimeType &&
      equals(
        [
            n11006,
        ],
        [
            other.n11006,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        n11006,
    ],);

  factory BackupsOrderServiceTypes.fromJson(Map<String, dynamic> json) => _$BackupsOrderServiceTypesFromJson(json);

  Map<String, dynamic> toJson() => _$BackupsOrderServiceTypesToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

