//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'backup_order_put_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class BackupOrderPutRequest {
  /// Returns a new [BackupOrderPutRequest] instance.
  BackupOrderPutRequest({

    this.validateOnly = const Optional.absent(),

    this.serviceType = const Optional.absent(),

    this.coupon = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'validateOnly',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<bool?> validateOnly;



  @OptionalConverter()
  @JsonKey(
    
    name: r'serviceType',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> serviceType;



  @OptionalConverter()
  @JsonKey(
    
    name: r'coupon',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> coupon;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is BackupOrderPutRequest &&
      runtimeType == other.runtimeType &&
      equals(
        [
            validateOnly,
            serviceType,
            coupon,
        ],
        [
            other.validateOnly,
            other.serviceType,
            other.coupon,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        validateOnly,
        serviceType,
        coupon,
    ],);

  factory BackupOrderPutRequest.fromJson(Map<String, dynamic> json) => _$BackupOrderPutRequestFromJson(json);

  Map<String, dynamic> toJson() => _$BackupOrderPutRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

