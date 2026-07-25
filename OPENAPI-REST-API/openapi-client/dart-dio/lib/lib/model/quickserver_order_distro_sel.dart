//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/quickserver_order_distro_sel_ubuntu.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'quickserver_order_distro_sel.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class QuickserverOrderDistroSel {
  /// Returns a new [QuickserverOrderDistroSel] instance.
  QuickserverOrderDistroSel({

    this.ubuntu = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'Ubuntu',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<QuickserverOrderDistroSelUbuntu?> ubuntu;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is QuickserverOrderDistroSel &&
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

  factory QuickserverOrderDistroSel.fromJson(Map<String, dynamic> json) => _$QuickserverOrderDistroSelFromJson(json);

  Map<String, dynamic> toJson() => _$QuickserverOrderDistroSelToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

