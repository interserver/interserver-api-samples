//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'quickserver_order_distro_sel_ubuntu.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class QuickserverOrderDistroSelUbuntu {
  /// Returns a new [QuickserverOrderDistroSelUbuntu] instance.
  QuickserverOrderDistroSelUbuntu({

    this.ubuntu = const Optional.absent(),
  });

      /// Selected distribution for Ubuntu.
  @OptionalConverter()
  @JsonKey(
    
    name: r'Ubuntu',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> ubuntu;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is QuickserverOrderDistroSelUbuntu &&
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

  factory QuickserverOrderDistroSelUbuntu.fromJson(Map<String, dynamic> json) => _$QuickserverOrderDistroSelUbuntuFromJson(json);

  Map<String, dynamic> toJson() => _$QuickserverOrderDistroSelUbuntuToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

