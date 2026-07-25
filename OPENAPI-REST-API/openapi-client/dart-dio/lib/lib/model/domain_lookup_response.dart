//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'domain_lookup_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class DomainLookupResponse {
  /// Returns a new [DomainLookupResponse] instance.
  DomainLookupResponse({

    this.available = const Optional.absent(),

    this.premium = const Optional.absent(),

    this.website = const Optional.absent(),

    this.domainService = const Optional.absent(),

    this.service = const Optional.absent(),

    this.whoisPrivacy = const Optional.absent(),

    this.new_ = const Optional.absent(),

    this.renewal = const Optional.absent(),

    this.transfer = const Optional.absent(),

    this.fields = const Optional.absent(),

    this.currencies = const Optional.absent(),
  });

      /// Whether the domain is available to register.
  @OptionalConverter()
  @JsonKey(
    
    name: r'available',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<bool?> available;



      /// Whether the domain is marked as premium by the registrar.
  @OptionalConverter()
  @JsonKey(
    
    name: r'premium',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<bool?> premium;



      /// Indicates if the domain is already used by a website service.
  @OptionalConverter()
  @JsonKey(
    
    name: r'website',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<bool?> website;



      /// Indicates if the domain already exists as a domain service on the account.
  @OptionalConverter()
  @JsonKey(
    
    name: r'domain_service',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<bool?> domainService;



      /// Service catalog details for the domain's TLD.
  @OptionalConverter()
  @JsonKey(
    
    name: r'service',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<Object?> service;



      /// Whether Whois privacy is available for the TLD.
  @OptionalConverter()
  @JsonKey(
    
    name: r'whois_privacy',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<bool?> whoisPrivacy;



      /// Calculated registration price, when available.
  @OptionalConverter()
  @JsonKey(
    
    name: r'new',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> new_;



      /// Calculated renewal price, when available.
  @OptionalConverter()
  @JsonKey(
    
    name: r'renewal',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> renewal;



      /// Calculated transfer price, when available.
  @OptionalConverter()
  @JsonKey(
    
    name: r'transfer',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> transfer;



      /// Registrar field requirements for this domain/TLD.
  @OptionalConverter()
  @JsonKey(
    
    name: r'fields',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<Object?> fields;



      /// Pricing information normalized to supported currencies.
  @OptionalConverter()
  @JsonKey(
    
    name: r'currencies',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<Object?> currencies;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is DomainLookupResponse &&
      runtimeType == other.runtimeType &&
      equals(
        [
            available,
            premium,
            website,
            domainService,
            service,
            whoisPrivacy,
            new_,
            renewal,
            transfer,
            fields,
            currencies,
        ],
        [
            other.available,
            other.premium,
            other.website,
            other.domainService,
            other.service,
            other.whoisPrivacy,
            other.new_,
            other.renewal,
            other.transfer,
            other.fields,
            other.currencies,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        available,
        premium,
        website,
        domainService,
        service,
        whoisPrivacy,
        new_,
        renewal,
        transfer,
        fields,
        currencies,
    ],);

  factory DomainLookupResponse.fromJson(Map<String, dynamic> json) => _$DomainLookupResponseFromJson(json);

  Map<String, dynamic> toJson() => _$DomainLookupResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

