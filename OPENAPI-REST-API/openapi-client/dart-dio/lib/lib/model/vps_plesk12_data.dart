//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/vps_plesk_license.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'vps_plesk12_data.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class VpsPlesk12Data {
  /// Returns a new [VpsPlesk12Data] instance.
  VpsPlesk12Data({

    this.admin = const Optional.absent(),

    this.pro = const Optional.absent(),

    this.host = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'admin',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<VpsPleskLicense?> admin;



  @OptionalConverter()
  @JsonKey(
    
    name: r'pro',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<VpsPleskLicense?> pro;



  @OptionalConverter()
  @JsonKey(
    
    name: r'host',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<VpsPleskLicense?> host;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is VpsPlesk12Data &&
      runtimeType == other.runtimeType &&
      equals(
        [
            admin,
            pro,
            host,
        ],
        [
            other.admin,
            other.pro,
            other.host,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        admin,
        pro,
        host,
    ],);

  factory VpsPlesk12Data.fromJson(Map<String, dynamic> json) => _$VpsPlesk12DataFromJson(json);

  Map<String, dynamic> toJson() => _$VpsPlesk12DataToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

