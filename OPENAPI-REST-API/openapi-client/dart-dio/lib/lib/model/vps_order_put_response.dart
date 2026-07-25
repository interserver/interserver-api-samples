//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'vps_order_put_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class VpsOrderPutResponse {
  /// Returns a new [VpsOrderPutResponse] instance.
  VpsOrderPutResponse({

    this.continue_ = const Optional.absent(),

    this.errors = const Optional.absent(),

    this.couponCode = const Optional.absent(),

    this.serviceCost = const Optional.absent(),

    this.sliceCost = const Optional.absent(),

    this.serviceType = const Optional.absent(),

    this.repeatSliceCost = const Optional.absent(),

    this.originalSliceCost = const Optional.absent(),

    this.originalCost = const Optional.absent(),

    this.repeatServiceCost = const Optional.absent(),

    this.monthlyServiceCost = const Optional.absent(),

    this.custid = const Optional.absent(),

    this.os = const Optional.absent(),

    this.slices = const Optional.absent(),

    this.platform = const Optional.absent(),

    this.controlpanel = const Optional.absent(),

    this.period = const Optional.absent(),

    this.location = const Optional.absent(),

    this.version = const Optional.absent(),

    this.hostname = const Optional.absent(),

    this.coupon = const Optional.absent(),

    this.rootpass = const Optional.absent(),
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


  final Optional<List<Object>?> errors;



  @OptionalConverter()
  @JsonKey(
    
    name: r'coupon_code',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> couponCode;



  @OptionalConverter()
  @JsonKey(
    
    name: r'service_cost',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> serviceCost;



  @OptionalConverter()
  @JsonKey(
    
    name: r'slice_cost',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> sliceCost;



  @OptionalConverter()
  @JsonKey(
    
    name: r'service_type',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> serviceType;



  @OptionalConverter()
  @JsonKey(
    
    name: r'repeat_slice_cost',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> repeatSliceCost;



  @OptionalConverter()
  @JsonKey(
    
    name: r'original_slice_cost',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> originalSliceCost;



  @OptionalConverter()
  @JsonKey(
    
    name: r'original_cost',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> originalCost;



  @OptionalConverter()
  @JsonKey(
    
    name: r'repeat_service_cost',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> repeatServiceCost;



  @OptionalConverter()
  @JsonKey(
    
    name: r'monthly_service_cost',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> monthlyServiceCost;



  @OptionalConverter()
  @JsonKey(
    
    name: r'custid',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> custid;



  @OptionalConverter()
  @JsonKey(
    
    name: r'os',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> os;



  @OptionalConverter()
  @JsonKey(
    
    name: r'slices',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> slices;



  @OptionalConverter()
  @JsonKey(
    
    name: r'platform',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> platform;



  @OptionalConverter()
  @JsonKey(
    
    name: r'controlpanel',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> controlpanel;



  @OptionalConverter()
  @JsonKey(
    
    name: r'period',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> period;



  @OptionalConverter()
  @JsonKey(
    
    name: r'location',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> location;



  @OptionalConverter()
  @JsonKey(
    
    name: r'version',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> version;



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
    
    name: r'coupon',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> coupon;



  @OptionalConverter()
  @JsonKey(
    
    name: r'rootpass',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> rootpass;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is VpsOrderPutResponse &&
      runtimeType == other.runtimeType &&
      equals(
        [
            continue_,
            errors,
            couponCode,
            serviceCost,
            sliceCost,
            serviceType,
            repeatSliceCost,
            originalSliceCost,
            originalCost,
            repeatServiceCost,
            monthlyServiceCost,
            custid,
            os,
            slices,
            platform,
            controlpanel,
            period,
            location,
            version,
            hostname,
            coupon,
            rootpass,
        ],
        [
            other.continue_,
            other.errors,
            other.couponCode,
            other.serviceCost,
            other.sliceCost,
            other.serviceType,
            other.repeatSliceCost,
            other.originalSliceCost,
            other.originalCost,
            other.repeatServiceCost,
            other.monthlyServiceCost,
            other.custid,
            other.os,
            other.slices,
            other.platform,
            other.controlpanel,
            other.period,
            other.location,
            other.version,
            other.hostname,
            other.coupon,
            other.rootpass,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        continue_,
        errors,
        couponCode,
        serviceCost,
        sliceCost,
        serviceType,
        repeatSliceCost,
        originalSliceCost,
        originalCost,
        repeatServiceCost,
        monthlyServiceCost,
        custid,
        os,
        slices,
        platform,
        controlpanel,
        period,
        location,
        version,
        hostname,
        coupon,
        rootpass,
    ],);

  factory VpsOrderPutResponse.fromJson(Map<String, dynamic> json) => _$VpsOrderPutResponseFromJson(json);

  Map<String, dynamic> toJson() => _$VpsOrderPutResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

