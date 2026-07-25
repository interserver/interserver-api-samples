//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'domain_order_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class DomainOrderRequest {
  /// Returns a new [DomainOrderRequest] instance.
  DomainOrderRequest({

    required  this.hostname,

    this.type = const Optional.present(const DomainOrderRequestTypeEnum._('register')),

    this.coupon = const Optional.present(''),

    this.whoisPrivacy = const Optional.absent(),
  });

      /// Fully-qualified domain to register or transfer (e.g. example.com).
  @JsonKey(
    
    name: r'hostname',
    required: true,
    includeIfNull: false,
  )


  final String hostname;



      /// Order type.
  @OptionalConverter()
  @JsonKey(
    defaultValue: 'register',
    name: r'type',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  unknownEnumValue: Optional<DomainOrderRequestTypeEnum?>.unknownDefaultOpenApi,
  )


  final Optional<DomainOrderRequestTypeEnum?> type;



      /// Coupon code (addDomain only).
  @OptionalConverter()
  @JsonKey(
    defaultValue: '',
    name: r'coupon',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> coupon;



      /// Set to \"enable\" to add Whois privacy (addDomain only).
  @OptionalConverter()
  @JsonKey(
    
    name: r'whois_privacy',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  unknownEnumValue: Optional<DomainOrderRequestWhoisPrivacyEnum?>.unknownDefaultOpenApi,
  )


  final Optional<DomainOrderRequestWhoisPrivacyEnum?> whoisPrivacy;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is DomainOrderRequest &&
      runtimeType == other.runtimeType &&
      equals(
        [
            hostname,
            type,
            coupon,
            whoisPrivacy,
        ],
        [
            other.hostname,
            other.type,
            other.coupon,
            other.whoisPrivacy,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        hostname,
        type,
        coupon,
        whoisPrivacy,
    ],);

  factory DomainOrderRequest.fromJson(Map<String, dynamic> json) => _$DomainOrderRequestFromJson(json);

  Map<String, dynamic> toJson() => _$DomainOrderRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

/// Order type.
enum DomainOrderRequestTypeEnum {
    /// Order type.
@JsonValue(r'register')
register(r'register'),
    /// Order type.
@JsonValue(r'transfer')
transfer(r'transfer'),
    /// Order type.
@JsonValue(r'unknown_default_open_api')
unknownDefaultOpenApi(r'unknown_default_open_api');

const DomainOrderRequestTypeEnum(this.value);

final String value;

@override
String toString() => value;
}


/// Set to \"enable\" to add Whois privacy (addDomain only).
enum DomainOrderRequestWhoisPrivacyEnum {
    /// Set to \"enable\" to add Whois privacy (addDomain only).
@JsonValue(r'enable')
enable(r'enable'),
    /// Set to \"enable\" to add Whois privacy (addDomain only).
@JsonValue(r'disable')
disable(r'disable'),
    /// Set to \"enable\" to add Whois privacy (addDomain only).
@JsonValue(r'unknown_default_open_api')
unknownDefaultOpenApi(r'unknown_default_open_api');

const DomainOrderRequestWhoisPrivacyEnum(this.value);

final String value;

@override
String toString() => value;
}


