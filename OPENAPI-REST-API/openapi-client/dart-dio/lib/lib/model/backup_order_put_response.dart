//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'backup_order_put_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class BackupOrderPutResponse {
  /// Returns a new [BackupOrderPutResponse] instance.
  BackupOrderPutResponse({

    this.continue_ = const Optional.absent(),

    this.errors = const Optional.absent(),

    this.serviceType = const Optional.absent(),

    this.serviceCost = const Optional.absent(),

    this.originalCost = const Optional.absent(),

    this.repeatServiceCost = const Optional.absent(),

    this.hostname = const Optional.absent(),

    this.password = const Optional.absent(),

    this.coupon = const Optional.absent(),

    this.couponCode = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'continue',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<bool?> continue_;



  @OptionalConverter()
  @JsonKey(
    
    name: r'errors',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<List<String>?> errors;



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
    
    name: r'serviceCost',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> serviceCost;



  @OptionalConverter()
  @JsonKey(
    
    name: r'originalCost',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> originalCost;



  @OptionalConverter()
  @JsonKey(
    
    name: r'repeatServiceCost',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> repeatServiceCost;



  @OptionalConverter()
  @JsonKey(
    
    name: r'hostname',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> hostname;



  @OptionalConverter()
  @JsonKey(
    
    name: r'password',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> password;



  @OptionalConverter()
  @JsonKey(
    
    name: r'coupon',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> coupon;



  @OptionalConverter()
  @JsonKey(
    
    name: r'couponCode',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> couponCode;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is BackupOrderPutResponse &&
      runtimeType == other.runtimeType &&
      equals(
        [
            continue_,
            errors,
            serviceType,
            serviceCost,
            originalCost,
            repeatServiceCost,
            hostname,
            password,
            coupon,
            couponCode,
        ],
        [
            other.continue_,
            other.errors,
            other.serviceType,
            other.serviceCost,
            other.originalCost,
            other.repeatServiceCost,
            other.hostname,
            other.password,
            other.coupon,
            other.couponCode,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        continue_,
        errors,
        serviceType,
        serviceCost,
        originalCost,
        repeatServiceCost,
        hostname,
        password,
        coupon,
        couponCode,
    ],);

  factory BackupOrderPutResponse.fromJson(Map<String, dynamic> json) => _$BackupOrderPutResponseFromJson(json);

  Map<String, dynamic> toJson() => _$BackupOrderPutResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

