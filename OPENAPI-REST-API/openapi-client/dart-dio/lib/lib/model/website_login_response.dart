//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'website_login_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class WebsiteLoginResponse {
  /// Returns a new [WebsiteLoginResponse] instance.
  WebsiteLoginResponse({

    this.type = const Optional.absent(),

    this.location = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'type',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> type;



  @OptionalConverter()
  @JsonKey(
    
    name: r'location',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> location;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is WebsiteLoginResponse &&
      runtimeType == other.runtimeType &&
      equals(
        [
            type,
            location,
        ],
        [
            other.type,
            other.location,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        type,
        location,
    ],);

  factory WebsiteLoginResponse.fromJson(Map<String, dynamic> json) => _$WebsiteLoginResponseFromJson(json);

  Map<String, dynamic> toJson() => _$WebsiteLoginResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

