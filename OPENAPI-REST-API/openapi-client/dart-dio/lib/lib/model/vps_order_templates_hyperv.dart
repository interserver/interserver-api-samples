//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/vps_order_templates_hyperv_windows.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'vps_order_templates_hyperv.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class VpsOrderTemplatesHyperv {
  /// Returns a new [VpsOrderTemplatesHyperv] instance.
  VpsOrderTemplatesHyperv({

    this.windows = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'windows',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<VpsOrderTemplatesHypervWindows?> windows;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is VpsOrderTemplatesHyperv &&
      runtimeType == other.runtimeType &&
      equals(
        [
            windows,
        ],
        [
            other.windows,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        windows,
    ],);

  factory VpsOrderTemplatesHyperv.fromJson(Map<String, dynamic> json) => _$VpsOrderTemplatesHypervFromJson(json);

  Map<String, dynamic> toJson() => _$VpsOrderTemplatesHypervToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

