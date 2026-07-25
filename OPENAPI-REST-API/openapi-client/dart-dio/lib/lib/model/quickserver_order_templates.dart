//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/quickserver_order_templates_ubuntu64.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'quickserver_order_templates.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class QuickserverOrderTemplates {
  /// Returns a new [QuickserverOrderTemplates] instance.
  QuickserverOrderTemplates({

    this.ubuntu = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'Ubuntu',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<QuickserverOrderTemplatesUbuntu64?> ubuntu;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is QuickserverOrderTemplates &&
      runtimeType == other.runtimeType &&
      equals(
        [
            ubuntu,
        ],
        [
            other.ubuntu,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        ubuntu,
    ],);

  factory QuickserverOrderTemplates.fromJson(Map<String, dynamic> json) => _$QuickserverOrderTemplatesFromJson(json);

  Map<String, dynamic> toJson() => _$QuickserverOrderTemplatesToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

