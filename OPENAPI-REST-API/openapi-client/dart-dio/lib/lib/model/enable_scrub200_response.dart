//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'enable_scrub200_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class EnableScrub200Response {
  /// Returns a new [EnableScrub200Response] instance.
  EnableScrub200Response({

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
      other is EnableScrub200Response &&
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

  factory EnableScrub200Response.fromJson(Map<String, dynamic> json) => _$EnableScrub200ResponseFromJson(json);

  Map<String, dynamic> toJson() => _$EnableScrub200ResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

