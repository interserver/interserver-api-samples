//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'vps_order_put_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class VpsOrderPutRequest {
  /// Returns a new [VpsOrderPutRequest] instance.
  VpsOrderPutRequest({

    required  this.osDistro,

     this.slices = 1,

    required  this.vpsPlatform,

     this.period = 1,

     this.location = 1,

    required  this.osVersion,

     this.hostname = '',

    required  this.rootpass,

    this.controlpanel = const Optional.absent(),

    this.coupon = const Optional.present(''),

    this.comment = const Optional.present(''),
  });

      /// OS Distribution
  @JsonKey(
    
    name: r'osDistro',
    required: true,
    includeIfNull: false,
  )


  final String osDistro;



      /// Number of slices
          // minimum: 1
          // maximum: 32
  @JsonKey(
    defaultValue: 1,
    name: r'slices',
    required: true,
    includeIfNull: false,
  )


  final int slices;



      /// VPS Platform
  @JsonKey(
    
    name: r'vpsPlatform',
    required: true,
    includeIfNull: false,
  unknownEnumValue: VpsOrderPutRequestVpsPlatformEnum.unknownDefaultOpenApi,
  )


  final VpsOrderPutRequestVpsPlatformEnum vpsPlatform;



      /// Billing Period or Frequency
          // minimum: 1
          // maximum: 12
  @JsonKey(
    defaultValue: 1,
    name: r'period',
    required: true,
    includeIfNull: false,
  )


  final int period;



      /// Location
          // minimum: 1
          // maximum: 3
  @JsonKey(
    defaultValue: 1,
    name: r'location',
    required: true,
    includeIfNull: false,
  )


  final int location;



      /// OS Version
  @JsonKey(
    
    name: r'osVersion',
    required: true,
    includeIfNull: false,
  )


  final String osVersion;



      /// The hostname to assign to the VPS
  @JsonKey(
    defaultValue: '',
    name: r'hostname',
    required: true,
    includeIfNull: false,
  )


  final String hostname;



      /// Root password to assign to the VVPS
  @JsonKey(
    
    name: r'rootpass',
    required: true,
    includeIfNull: false,
  )


  final String rootpass;



      /// Control Panel
  @OptionalConverter()
  @JsonKey(
    
    name: r'controlpanel',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  unknownEnumValue: Optional<VpsOrderPutRequestControlpanelEnum?>.unknownDefaultOpenApi,
  )


  final Optional<VpsOrderPutRequestControlpanelEnum?> controlpanel;



      /// Coupon
  @OptionalConverter()
  @JsonKey(
    defaultValue: '',
    name: r'coupon',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> coupon;



      /// Order comments or notes
  @OptionalConverter()
  @JsonKey(
    defaultValue: '',
    name: r'comment',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> comment;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is VpsOrderPutRequest &&
      runtimeType == other.runtimeType &&
      equals(
        [
            osDistro,
            slices,
            vpsPlatform,
            period,
            location,
            osVersion,
            hostname,
            rootpass,
            controlpanel,
            coupon,
            comment,
        ],
        [
            other.osDistro,
            other.slices,
            other.vpsPlatform,
            other.period,
            other.location,
            other.osVersion,
            other.hostname,
            other.rootpass,
            other.controlpanel,
            other.coupon,
            other.comment,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        osDistro,
        slices,
        vpsPlatform,
        period,
        location,
        osVersion,
        hostname,
        rootpass,
        controlpanel,
        coupon,
        comment,
    ],);

  factory VpsOrderPutRequest.fromJson(Map<String, dynamic> json) => _$VpsOrderPutRequestFromJson(json);

  Map<String, dynamic> toJson() => _$VpsOrderPutRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

/// VPS Platform
enum VpsOrderPutRequestVpsPlatformEnum {
    /// VPS Platform
@JsonValue(r'kvm')
kvm(r'kvm'),
    /// VPS Platform
@JsonValue(r'hyperv')
hyperv(r'hyperv'),
    /// VPS Platform
@JsonValue(r'kvmstorage')
kvmstorage(r'kvmstorage'),
    /// VPS Platform
@JsonValue(r'unknown_default_open_api')
unknownDefaultOpenApi(r'unknown_default_open_api');

const VpsOrderPutRequestVpsPlatformEnum(this.value);

final String value;

@override
String toString() => value;
}


/// Control Panel
enum VpsOrderPutRequestControlpanelEnum {
    /// Control Panel
@JsonValue(r'none')
none(r'none'),
    /// Control Panel
@JsonValue(r'cpanel')
cpanel(r'cpanel'),
    /// Control Panel
@JsonValue(r'da')
da(r'da'),
    /// Control Panel
@JsonValue(r'unknown_default_open_api')
unknownDefaultOpenApi(r'unknown_default_open_api');

const VpsOrderPutRequestControlpanelEnum(this.value);

final String value;

@override
String toString() => value;
}


