//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'ssl_order_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class SslOrderRequest {
  /// Returns a new [SslOrderRequest] instance.
  SslOrderRequest({

    required  this.ssl,

    required  this.hostname,

    required  this.approverEmail,

    this.frequency = const Optional.present(12),

    this.coupon = const Optional.present(''),

    this.csrType = const Optional.present(const SslOrderRequestCsrTypeEnum._('generated')),

    this.csr = const Optional.present(''),

    this.firstname = const Optional.absent(),

    this.lastname = const Optional.absent(),

    this.email = const Optional.absent(),

    this.address = const Optional.absent(),

    this.city = const Optional.absent(),

    this.state = const Optional.absent(),

    this.zip = const Optional.absent(),

    this.country = const Optional.absent(),

    this.phone = const Optional.absent(),

    this.company = const Optional.absent(),

    this.department = const Optional.present('Administration'),

    this.agency = const Optional.absent(),

    this.businessCategory = const Optional.absent(),
  });

      /// SSL package service type id from getNewSsl.serviceTypes.
  @JsonKey(
    
    name: r'ssl',
    required: true,
    includeIfNull: false,
  )


  final int ssl;



      /// Domain the certificate is issued for. Wildcard certs require *.domain.com format.
  @JsonKey(
    
    name: r'hostname',
    required: true,
    includeIfNull: false,
  )


  final String hostname;



      /// Domain-control approver email (required for all SSL orders).
  @JsonKey(
    
    name: r'approver_email',
    required: true,
    includeIfNull: false,
  )


  final String approverEmail;



      /// Billing frequency in months (12, 24, or 36).
  @OptionalConverter()
  @JsonKey(
    defaultValue: 12,
    name: r'frequency',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> frequency;



      /// Coupon code.
  @OptionalConverter()
  @JsonKey(
    defaultValue: '',
    name: r'coupon',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> coupon;



      /// Whether the CSR is server-generated or customer-provided.
  @OptionalConverter()
  @JsonKey(
    defaultValue: 'generated',
    name: r'csr_type',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  unknownEnumValue: Optional<SslOrderRequestCsrTypeEnum?>.unknownDefaultOpenApi,
  )


  final Optional<SslOrderRequestCsrTypeEnum?> csrType;



      /// PEM-encoded CSR (>= 2048-bit) when csr_type=provided.
  @OptionalConverter()
  @JsonKey(
    defaultValue: '',
    name: r'csr',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> csr;



      /// Contact first name (defaults from account).
  @OptionalConverter()
  @JsonKey(
    
    name: r'firstname',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> firstname;



      /// Contact last name (defaults from account).
  @OptionalConverter()
  @JsonKey(
    
    name: r'lastname',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> lastname;



      /// Contact email (defaults from account).
  @OptionalConverter()
  @JsonKey(
    
    name: r'email',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> email;



      /// Contact address (defaults from account).
  @OptionalConverter()
  @JsonKey(
    
    name: r'address',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> address;



      /// Contact city (defaults from account).
  @OptionalConverter()
  @JsonKey(
    
    name: r'city',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> city;



      /// Contact state/region (defaults from account).
  @OptionalConverter()
  @JsonKey(
    
    name: r'state',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> state;



      /// Contact postal code (defaults from account).
  @OptionalConverter()
  @JsonKey(
    
    name: r'zip',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> zip;



      /// Contact country (defaults from account).
  @OptionalConverter()
  @JsonKey(
    
    name: r'country',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> country;



      /// Contact phone (defaults from account).
  @OptionalConverter()
  @JsonKey(
    
    name: r'phone',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> phone;



      /// Contact company/organization (defaults from account).
  @OptionalConverter()
  @JsonKey(
    
    name: r'company',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> company;



      /// Contact department (defaults to Administration).
  @OptionalConverter()
  @JsonKey(
    defaultValue: 'Administration',
    name: r'department',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> department;



      /// EV certificate incorporating agency (only for EV packages).
  @OptionalConverter()
  @JsonKey(
    
    name: r'agency',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> agency;



      /// EV certificate business category (only for EV packages).
  @OptionalConverter()
  @JsonKey(
    
    name: r'business_category',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> businessCategory;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is SslOrderRequest &&
      runtimeType == other.runtimeType &&
      equals(
        [
            ssl,
            hostname,
            approverEmail,
            frequency,
            coupon,
            csrType,
            csr,
            firstname,
            lastname,
            email,
            address,
            city,
            state,
            zip,
            country,
            phone,
            company,
            department,
            agency,
            businessCategory,
        ],
        [
            other.ssl,
            other.hostname,
            other.approverEmail,
            other.frequency,
            other.coupon,
            other.csrType,
            other.csr,
            other.firstname,
            other.lastname,
            other.email,
            other.address,
            other.city,
            other.state,
            other.zip,
            other.country,
            other.phone,
            other.company,
            other.department,
            other.agency,
            other.businessCategory,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        ssl,
        hostname,
        approverEmail,
        frequency,
        coupon,
        csrType,
        csr,
        firstname,
        lastname,
        email,
        address,
        city,
        state,
        zip,
        country,
        phone,
        company,
        department,
        agency,
        businessCategory,
    ],);

  factory SslOrderRequest.fromJson(Map<String, dynamic> json) => _$SslOrderRequestFromJson(json);

  Map<String, dynamic> toJson() => _$SslOrderRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

/// Whether the CSR is server-generated or customer-provided.
enum SslOrderRequestCsrTypeEnum {
    /// Whether the CSR is server-generated or customer-provided.
@JsonValue(r'generated')
generated(r'generated'),
    /// Whether the CSR is server-generated or customer-provided.
@JsonValue(r'provided')
provided(r'provided'),
    /// Whether the CSR is server-generated or customer-provided.
@JsonValue(r'unknown_default_open_api')
unknownDefaultOpenApi(r'unknown_default_open_api');

const SslOrderRequestCsrTypeEnum(this.value);

final String value;

@override
String toString() => value;
}


