//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'timezone_update.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class TimezoneUpdate {
  /// Returns a new [TimezoneUpdate] instance.
  TimezoneUpdate({

    required  this.timezone,
  });

      /// The time zone
  @JsonKey(
    
    name: r'timezone',
    required: true,
    includeIfNull: false,
  )


  final String timezone;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is TimezoneUpdate &&
      runtimeType == other.runtimeType &&
      equals(
        [
            timezone,
        ],
        [
            other.timezone,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        timezone,
    ],);

  factory TimezoneUpdate.fromJson(Map<String, dynamic> json) => _$TimezoneUpdateFromJson(json);

  Map<String, dynamic> toJson() => _$TimezoneUpdateToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

