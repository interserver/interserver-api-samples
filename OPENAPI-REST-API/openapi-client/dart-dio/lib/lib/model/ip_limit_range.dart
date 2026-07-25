//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'ip_limit_range.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class IpLimitRange {
  /// Returns a new [IpLimitRange] instance.
  IpLimitRange({

    required  this.start,

    required  this.end,
  });

      /// The begining (or first) IP address in the range.
  @JsonKey(
    
    name: r'start',
    required: true,
    includeIfNull: false,
  )


  final String start;



      /// The ending (or last) IP address in the range.
  @JsonKey(
    
    name: r'end',
    required: true,
    includeIfNull: false,
  )


  final String end;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is IpLimitRange &&
      runtimeType == other.runtimeType &&
      equals(
        [
            start,
            end,
        ],
        [
            other.start,
            other.end,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        start,
        end,
    ],);

  factory IpLimitRange.fromJson(Map<String, dynamic> json) => _$IpLimitRangeFromJson(json);

  Map<String, dynamic> toJson() => _$IpLimitRangeToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

