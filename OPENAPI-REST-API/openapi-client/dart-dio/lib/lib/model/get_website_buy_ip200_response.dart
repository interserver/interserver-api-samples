//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'get_website_buy_ip200_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class GetWebsiteBuyIp200Response {
  /// Returns a new [GetWebsiteBuyIp200Response] instance.
  GetWebsiteBuyIp200Response({

    this.ips = const Optional.absent(),
  });

      /// A map of IP addresses to their current reverse DNS hostnames.
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
      other is GetWebsiteBuyIp200Response &&
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

  factory GetWebsiteBuyIp200Response.fromJson(Map<String, dynamic> json) => _$GetWebsiteBuyIp200ResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetWebsiteBuyIp200ResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

