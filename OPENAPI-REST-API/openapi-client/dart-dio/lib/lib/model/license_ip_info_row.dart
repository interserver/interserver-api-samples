//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'license_ip_info_row.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class LicenseIpInfoRow {
  /// Returns a new [LicenseIpInfoRow] instance.
  LicenseIpInfoRow({

    this.desc = const Optional.absent(),

    this.value = const Optional.absent(),
  });

      /// Row description
  @OptionalConverter()
  @JsonKey(
    
    name: r'desc',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> desc;



      /// Row value
  @OptionalConverter()
  @JsonKey(
    
    name: r'value',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> value;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is LicenseIpInfoRow &&
      runtimeType == other.runtimeType &&
      equals(
        [
            desc,
            value,
        ],
        [
            other.desc,
            other.value,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        desc,
        value,
    ],);

  factory LicenseIpInfoRow.fromJson(Map<String, dynamic> json) => _$LicenseIpInfoRowFromJson(json);

  Map<String, dynamic> toJson() => _$LicenseIpInfoRowToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

