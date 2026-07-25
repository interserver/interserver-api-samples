//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'vps_order_templates_hyperv_windows.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class VpsOrderTemplatesHypervWindows {
  /// Returns a new [VpsOrderTemplatesHypervWindows] instance.
  VpsOrderTemplatesHypervWindows({

    this.windows2019Standard = const Optional.absent(),

    this.windows2022 = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'Windows2019Standard',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> windows2019Standard;



  @OptionalConverter()
  @JsonKey(
    
    name: r'Windows2022',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> windows2022;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is VpsOrderTemplatesHypervWindows &&
      runtimeType == other.runtimeType &&
      equals(
        [
            windows2019Standard,
            windows2022,
        ],
        [
            other.windows2019Standard,
            other.windows2022,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        windows2019Standard,
        windows2022,
    ],);

  factory VpsOrderTemplatesHypervWindows.fromJson(Map<String, dynamic> json) => _$VpsOrderTemplatesHypervWindowsFromJson(json);

  Map<String, dynamic> toJson() => _$VpsOrderTemplatesHypervWindowsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

