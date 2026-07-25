//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'url_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UrlRequest {
  /// Returns a new [UrlRequest] instance.
  UrlRequest({

    this.url = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'url',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> url;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is UrlRequest &&
      runtimeType == other.runtimeType &&
      equals(
        [
            url,
        ],
        [
            other.url,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        url,
    ],);

  factory UrlRequest.fromJson(Map<String, dynamic> json) => _$UrlRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UrlRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

