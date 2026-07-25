//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/quickserver_order_version_centosstream8.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'quickserver_order_version.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class QuickserverOrderVersion {
  /// Returns a new [QuickserverOrderVersion] instance.
  QuickserverOrderVersion({

    this.centosstream8 = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'centosstream-8',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<QuickserverOrderVersionCentosstream8?> centosstream8;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is QuickserverOrderVersion &&
      runtimeType == other.runtimeType &&
      equals(
        [
            centosstream8,
        ],
        [
            other.centosstream8,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        centosstream8,
    ],);

  factory QuickserverOrderVersion.fromJson(Map<String, dynamic> json) => _$QuickserverOrderVersionFromJson(json);

  Map<String, dynamic> toJson() => _$QuickserverOrderVersionToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

