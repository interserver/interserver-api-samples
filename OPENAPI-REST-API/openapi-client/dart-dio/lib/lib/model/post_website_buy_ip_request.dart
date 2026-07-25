//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'post_website_buy_ip_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PostWebsiteBuyIpRequest {
  /// Returns a new [PostWebsiteBuyIpRequest] instance.
  PostWebsiteBuyIpRequest({

    this.ips = const Optional.absent(),
  });

      /// A map of IP addresses to their desired reverse DNS hostnames.
  @OptionalConverter()
  @JsonKey(
    
    name: r'ips',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<Map<String, String>?> ips;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is PostWebsiteBuyIpRequest &&
      runtimeType == other.runtimeType &&
      equals(
        [
            ips,
        ],
        [
            other.ips,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        ips,
    ],);

  factory PostWebsiteBuyIpRequest.fromJson(Map<String, dynamic> json) => _$PostWebsiteBuyIpRequestFromJson(json);

  Map<String, dynamic> toJson() => _$PostWebsiteBuyIpRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

