//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/vps_order_templates_hyperv.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'vps_order_templates.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class VpsOrderTemplates {
  /// Returns a new [VpsOrderTemplates] instance.
  VpsOrderTemplates({

    this.hyperv = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'hyperv',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<VpsOrderTemplatesHyperv?> hyperv;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is VpsOrderTemplates &&
      runtimeType == other.runtimeType &&
      equals(
        [
            hyperv,
        ],
        [
            other.hyperv,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        hyperv,
    ],);

  factory VpsOrderTemplates.fromJson(Map<String, dynamic> json) => _$VpsOrderTemplatesFromJson(json);

  Map<String, dynamic> toJson() => _$VpsOrderTemplatesToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

