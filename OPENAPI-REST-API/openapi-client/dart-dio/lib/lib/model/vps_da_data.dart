//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/vps_da_license.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'vps_da_data.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class VpsDAData {
  /// Returns a new [VpsDAData] instance.
  VpsDAData({

    this.free = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'free',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<VpsDALicense?> free;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is VpsDAData &&
      runtimeType == other.runtimeType &&
      equals(
        [
            free,
        ],
        [
            other.free,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        free,
    ],);

  factory VpsDAData.fromJson(Map<String, dynamic> json) => _$VpsDADataFromJson(json);

  Map<String, dynamic> toJson() => _$VpsDADataToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

