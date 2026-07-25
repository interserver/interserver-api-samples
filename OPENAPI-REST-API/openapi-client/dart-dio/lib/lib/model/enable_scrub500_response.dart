//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'enable_scrub500_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class EnableScrub500Response {
  /// Returns a new [EnableScrub500Response] instance.
  EnableScrub500Response({

    required  this.success,

    required  this.text,
  });

  @JsonKey(
    
    name: r'success',
    required: true,
    includeIfNull: false,
  )


  final bool success;



  @JsonKey(
    
    name: r'text',
    required: true,
    includeIfNull: false,
  )


  final String text;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is EnableScrub500Response &&
      runtimeType == other.runtimeType &&
      equals(
        [
            success,
            text,
        ],
        [
            other.success,
            other.text,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        success,
        text,
    ],);

  factory EnableScrub500Response.fromJson(Map<String, dynamic> json) => _$EnableScrub500ResponseFromJson(json);

  Map<String, dynamic> toJson() => _$EnableScrub500ResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

