//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'quickserver_service_extra.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class QuickserverServiceExtra {
  /// Returns a new [QuickserverServiceExtra] instance.
  QuickserverServiceExtra({

    this.platform = const Optional.absent(),
  });

      /// Platform information
  @OptionalConverter()
  @JsonKey(
    
    name: r'platform',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> platform;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is QuickserverServiceExtra &&
      runtimeType == other.runtimeType &&
      equals(
        [
            platform,
        ],
        [
            other.platform,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        platform,
    ],);

  factory QuickserverServiceExtra.fromJson(Map<String, dynamic> json) => _$QuickserverServiceExtraFromJson(json);

  Map<String, dynamic> toJson() => _$QuickserverServiceExtraToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

