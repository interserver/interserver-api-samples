//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'download_qs_backup_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class DownloadQsBackupRequest {
  /// Returns a new [DownloadQsBackupRequest] instance.
  DownloadQsBackupRequest({

    required  this.file,
  });

      /// The backup filename to download.
  @JsonKey(
    
    name: r'file',
    required: true,
    includeIfNull: false,
  )


  final String file;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is DownloadQsBackupRequest &&
      runtimeType == other.runtimeType &&
      equals(
        [
            file,
        ],
        [
            other.file,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        file,
    ],);

  factory DownloadQsBackupRequest.fromJson(Map<String, dynamic> json) => _$DownloadQsBackupRequestFromJson(json);

  Map<String, dynamic> toJson() => _$DownloadQsBackupRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

