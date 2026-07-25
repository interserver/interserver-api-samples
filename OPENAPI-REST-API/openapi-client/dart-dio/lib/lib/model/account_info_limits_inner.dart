//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'account_info_limits_inner.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class AccountInfoLimitsInner {
  /// Returns a new [AccountInfoLimitsInner] instance.
  AccountInfoLimitsInner({

    this.start = const Optional.absent(),

    this.end = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'start',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> start;



  @OptionalConverter()
  @JsonKey(
    
    name: r'end',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> end;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is AccountInfoLimitsInner &&
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

  factory AccountInfoLimitsInner.fromJson(Map<String, dynamic> json) => _$AccountInfoLimitsInnerFromJson(json);

  Map<String, dynamic> toJson() => _$AccountInfoLimitsInnerToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

