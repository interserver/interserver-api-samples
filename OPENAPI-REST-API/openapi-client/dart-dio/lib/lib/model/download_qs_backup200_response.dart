//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'download_qs_backup200_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class DownloadQsBackup200Response {
  /// Returns a new [DownloadQsBackup200Response] instance.
  DownloadQsBackup200Response({

    this.text = const Optional.absent(),

    this.url = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'text',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> text;



      /// A pre-signed download URL valid for 24 hours.
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
      other is DownloadQsBackup200Response &&
      runtimeType == other.runtimeType &&
      equals(
        [
            text,
            url,
        ],
        [
            other.text,
            other.url,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        text,
        url,
    ],);

  factory DownloadQsBackup200Response.fromJson(Map<String, dynamic> json) => _$DownloadQsBackup200ResponseFromJson(json);

  Map<String, dynamic> toJson() => _$DownloadQsBackup200ResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

