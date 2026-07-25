//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'quickserver_order_version_centosstream8.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class QuickserverOrderVersionCentosstream8 {
  /// Returns a new [QuickserverOrderVersionCentosstream8] instance.
  QuickserverOrderVersionCentosstream8({

    this.centosstream8 = const Optional.absent(),
  });

      /// Version details of CentOS Stream 8.
  @OptionalConverter()
  @JsonKey(
    
    name: r'centosstream-8',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> centosstream8;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is QuickserverOrderVersionCentosstream8 &&
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

  factory QuickserverOrderVersionCentosstream8.fromJson(Map<String, dynamic> json) => _$QuickserverOrderVersionCentosstream8FromJson(json);

  Map<String, dynamic> toJson() => _$QuickserverOrderVersionCentosstream8ToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

