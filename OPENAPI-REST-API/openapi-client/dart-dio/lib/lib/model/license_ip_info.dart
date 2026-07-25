//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/license_ip_info_row.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'license_ip_info.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class LicenseIpInfo {
  /// Returns a new [LicenseIpInfo] instance.
  LicenseIpInfo({

    this.title = const Optional.absent(),

    this.rows = const Optional.absent(),
  });

      /// Table title
  @OptionalConverter()
  @JsonKey(
    
    name: r'title',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> title;



  @OptionalConverter()
  @JsonKey(
    
    name: r'rows',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<List<LicenseIpInfoRow>?> rows;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is LicenseIpInfo &&
      runtimeType == other.runtimeType &&
      equals(
        [
            title,
            rows,
        ],
        [
            other.title,
            other.rows,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        title,
        rows,
    ],);

  factory LicenseIpInfo.fromJson(Map<String, dynamic> json) => _$LicenseIpInfoFromJson(json);

  Map<String, dynamic> toJson() => _$LicenseIpInfoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

