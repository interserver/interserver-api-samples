//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'vps_order_os_names.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class VpsOrderOsNames {
  /// Returns a new [VpsOrderOsNames] instance.
  VpsOrderOsNames({

    this.opensuse = const Optional.absent(),

    this.ubuntu = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'opensuse',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> opensuse;



  @OptionalConverter()
  @JsonKey(
    
    name: r'ubuntu',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> ubuntu;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is VpsOrderOsNames &&
      runtimeType == other.runtimeType &&
      equals(
        [
            opensuse,
            ubuntu,
        ],
        [
            other.opensuse,
            other.ubuntu,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        opensuse,
        ubuntu,
    ],);

  factory VpsOrderOsNames.fromJson(Map<String, dynamic> json) => _$VpsOrderOsNamesFromJson(json);

  Map<String, dynamic> toJson() => _$VpsOrderOsNamesToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

