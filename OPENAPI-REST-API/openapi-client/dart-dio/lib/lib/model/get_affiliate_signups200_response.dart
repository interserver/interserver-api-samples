//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'get_affiliate_signups200_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class GetAffiliateSignups200Response {
  /// Returns a new [GetAffiliateSignups200Response] instance.
  GetAffiliateSignups200Response({

    this.data = const Optional.absent(),
  });

      /// Affiliate signup statistics and client-side data.
  @OptionalConverter()
  @JsonKey(
    
    name: r'data',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<Object?> data;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is GetAffiliateSignups200Response &&
      runtimeType == other.runtimeType &&
      equals(
        [
            data,
        ],
        [
            other.data,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        data,
    ],);

  factory GetAffiliateSignups200Response.fromJson(Map<String, dynamic> json) => _$GetAffiliateSignups200ResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetAffiliateSignups200ResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

