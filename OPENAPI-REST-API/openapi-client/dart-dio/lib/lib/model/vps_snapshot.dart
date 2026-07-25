//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'vps_snapshot.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class VpsSnapshot {
  /// Returns a new [VpsSnapshot] instance.
  VpsSnapshot({

    this.name = const Optional.absent(),

    this.used = const Optional.absent(),

    this.date = const Optional.absent(),
  });

      /// Snapshot name.
  @OptionalConverter()
  @JsonKey(
    
    name: r'name',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> name;



      /// Disk space used by this snapshot in bytes.
  @OptionalConverter()
  @JsonKey(
    
    name: r'used',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> used;



      /// Unix timestamp of when the snapshot was created.
  @OptionalConverter()
  @JsonKey(
    
    name: r'date',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> date;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is VpsSnapshot &&
      runtimeType == other.runtimeType &&
      equals(
        [
            name,
            used,
            date,
        ],
        [
            other.name,
            other.used,
            other.date,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        name,
        used,
        date,
    ],);

  factory VpsSnapshot.fromJson(Map<String, dynamic> json) => _$VpsSnapshotFromJson(json);

  Map<String, dynamic> toJson() => _$VpsSnapshotToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

