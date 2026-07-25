//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'vps_cp_data.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class VpsCPData {
  /// Returns a new [VpsCPData] instance.
  VpsCPData({

    this.name = const Optional.absent(),

    this.cost = const Optional.absent(),
  });

      /// Control panel name (e.g., cPanel).
  @OptionalConverter()
  @JsonKey(
    
    name: r'name',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> name;



      /// Monthly cost in cents for the control panel license.
  @OptionalConverter()
  @JsonKey(
    
    name: r'cost',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> cost;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is VpsCPData &&
      runtimeType == other.runtimeType &&
      equals(
        [
            name,
            cost,
        ],
        [
            other.name,
            other.cost,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        name,
        cost,
    ],);

  factory VpsCPData.fromJson(Map<String, dynamic> json) => _$VpsCPDataFromJson(json);

  Map<String, dynamic> toJson() => _$VpsCPDataToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

