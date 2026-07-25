//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'domain_whois_privacy_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class DomainWhoisPrivacyRequest {
  /// Returns a new [DomainWhoisPrivacyRequest] instance.
  DomainWhoisPrivacyRequest({

    this.func = const Optional.absent(),

    this.csrfToken = const Optional.absent(),

    this.domainFirstname = const Optional.absent(),

    this.domainLastname = const Optional.absent(),

    this.domainEmail = const Optional.absent(),

    this.domainAddress = const Optional.absent(),

    this.domainAddress2 = const Optional.absent(),

    this.domainAddress3 = const Optional.absent(),

    this.domainCity = const Optional.absent(),

    this.domainState = const Optional.absent(),

    this.domainZip = const Optional.absent(),

    this.domainCountry = const Optional.absent(),

    this.domainPhone = const Optional.absent(),

    this.domainFax = const Optional.absent(),

    this.domainCompany = const Optional.absent(),

    this.domainExtra = const Optional.absent(),
  });

      /// Action to perform (enable or disableCancel).
  @OptionalConverter()
  @JsonKey(
    
    name: r'func',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> func;



      /// CSRF token if the API requires it for the account.
  @OptionalConverter()
  @JsonKey(
    
    name: r'csrf_token',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> csrfToken;



  @OptionalConverter()
  @JsonKey(
    
    name: r'domain_firstname',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> domainFirstname;



  @OptionalConverter()
  @JsonKey(
    
    name: r'domain_lastname',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> domainLastname;



  @OptionalConverter()
  @JsonKey(
    
    name: r'domain_email',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> domainEmail;



  @OptionalConverter()
  @JsonKey(
    
    name: r'domain_address',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> domainAddress;



  @OptionalConverter()
  @JsonKey(
    
    name: r'domain_address2',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> domainAddress2;



  @OptionalConverter()
  @JsonKey(
    
    name: r'domain_address3',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> domainAddress3;



  @OptionalConverter()
  @JsonKey(
    
    name: r'domain_city',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> domainCity;



  @OptionalConverter()
  @JsonKey(
    
    name: r'domain_state',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> domainState;



  @OptionalConverter()
  @JsonKey(
    
    name: r'domain_zip',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> domainZip;



  @OptionalConverter()
  @JsonKey(
    
    name: r'domain_country',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> domainCountry;



  @OptionalConverter()
  @JsonKey(
    
    name: r'domain_phone',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> domainPhone;



  @OptionalConverter()
  @JsonKey(
    
    name: r'domain_fax',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> domainFax;



  @OptionalConverter()
  @JsonKey(
    
    name: r'domain_company',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> domainCompany;



  @OptionalConverter()
  @JsonKey(
    
    name: r'domain_extra',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> domainExtra;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is DomainWhoisPrivacyRequest &&
      runtimeType == other.runtimeType &&
      equals(
        [
            func,
            csrfToken,
            domainFirstname,
            domainLastname,
            domainEmail,
            domainAddress,
            domainAddress2,
            domainAddress3,
            domainCity,
            domainState,
            domainZip,
            domainCountry,
            domainPhone,
            domainFax,
            domainCompany,
            domainExtra,
        ],
        [
            other.func,
            other.csrfToken,
            other.domainFirstname,
            other.domainLastname,
            other.domainEmail,
            other.domainAddress,
            other.domainAddress2,
            other.domainAddress3,
            other.domainCity,
            other.domainState,
            other.domainZip,
            other.domainCountry,
            other.domainPhone,
            other.domainFax,
            other.domainCompany,
            other.domainExtra,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        func,
        csrfToken,
        domainFirstname,
        domainLastname,
        domainEmail,
        domainAddress,
        domainAddress2,
        domainAddress3,
        domainCity,
        domainState,
        domainZip,
        domainCountry,
        domainPhone,
        domainFax,
        domainCompany,
        domainExtra,
    ],);

  factory DomainWhoisPrivacyRequest.fromJson(Map<String, dynamic> json) => _$DomainWhoisPrivacyRequestFromJson(json);

  Map<String, dynamic> toJson() => _$DomainWhoisPrivacyRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

