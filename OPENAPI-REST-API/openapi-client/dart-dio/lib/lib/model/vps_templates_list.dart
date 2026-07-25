//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/vps_template_row.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'vps_templates_list.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class VpsTemplatesList {
  /// Returns a new [VpsTemplatesList] instance.
  VpsTemplatesList({

    required  this.templates,
  });

      /// A listing of the templates.
  @JsonKey(
    
    name: r'templates',
    required: true,
    includeIfNull: false,
  )


  final List<VpsTemplateRow> templates;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is VpsTemplatesList &&
      runtimeType == other.runtimeType &&
      equals(
        [
            templates,
        ],
        [
            other.templates,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        templates,
    ],);

  factory VpsTemplatesList.fromJson(Map<String, dynamic> json) => _$VpsTemplatesListFromJson(json);

  Map<String, dynamic> toJson() => _$VpsTemplatesListToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

