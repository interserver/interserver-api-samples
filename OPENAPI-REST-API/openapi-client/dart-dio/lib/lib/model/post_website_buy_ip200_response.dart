//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'post_website_buy_ip200_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PostWebsiteBuyIp200Response {
  /// Returns a new [PostWebsiteBuyIp200Response] instance.
  PostWebsiteBuyIp200Response({

    this.message = const Optional.absent(),

    this.success = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'message',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> message;



  @OptionalConverter()
  @JsonKey(
    
    name: r'success',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<bool?> success;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is PostWebsiteBuyIp200Response &&
      runtimeType == other.runtimeType &&
      equals(
        [
            message,
            success,
        ],
        [
            other.message,
            other.success,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        message,
        success,
    ],);

  factory PostWebsiteBuyIp200Response.fromJson(Map<String, dynamic> json) => _$PostWebsiteBuyIp200ResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PostWebsiteBuyIp200ResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

