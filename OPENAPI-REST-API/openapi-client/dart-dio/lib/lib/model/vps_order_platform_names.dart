//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'vps_order_platform_names.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class VpsOrderPlatformNames {
  /// Returns a new [VpsOrderPlatformNames] instance.
  VpsOrderPlatformNames({

    this.kvm = const Optional.absent(),

    this.kvmstorage = const Optional.absent(),

    this.hyperv = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'kvm',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> kvm;



  @OptionalConverter()
  @JsonKey(
    
    name: r'kvmstorage',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> kvmstorage;



  @OptionalConverter()
  @JsonKey(
    
    name: r'hyperv',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> hyperv;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is VpsOrderPlatformNames &&
      runtimeType == other.runtimeType &&
      equals(
        [
            kvm,
            kvmstorage,
            hyperv,
        ],
        [
            other.kvm,
            other.kvmstorage,
            other.hyperv,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        kvm,
        kvmstorage,
        hyperv,
    ],);

  factory VpsOrderPlatformNames.fromJson(Map<String, dynamic> json) => _$VpsOrderPlatformNamesFromJson(json);

  Map<String, dynamic> toJson() => _$VpsOrderPlatformNamesToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

