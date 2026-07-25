//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/domain_all_info.dart';
import 'package:interserver_api/lib/model/domain_client_link.dart';
import 'package:interserver_api/lib/model/domain_service_type.dart';
import 'package:interserver_api/lib/model/domain_billing_extra.dart';
import 'package:interserver_api/lib/model/domain_service_info.dart';
import 'package:interserver_api/lib/model/backup_extra_info_tables.dart';
import 'package:interserver_api/lib/model/domain_contact_details.dart';
import 'package:interserver_api/lib/model/domain_billing_details.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'domain.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class Domain {
  /// Returns a new [Domain] instance.
  Domain({

    this.serviceInfo = const Optional.absent(),

    this.serviceTypes = const Optional.absent(),

    this.clientLinks = const Optional.absent(),

    this.billingDetails = const Optional.absent(),

    this.custCurrency = const Optional.absent(),

    this.custCurrencySymbol = const Optional.absent(),

    this.serviceExtra = const Optional.absent(),

    this.extraInfoTables = const Optional.absent(),

    this.serviceType = const Optional.absent(),

    this.contactDetails = const Optional.absent(),

    this.pwarning = const Optional.absent(),

    this.transferInfo = const Optional.absent(),

    this.errors = const Optional.absent(),

    this.domainLogs = const Optional.absent(),

    this.allInfo = const Optional.absent(),

    this.registrarStatus = const Optional.absent(),

    this.locked = const Optional.absent(),

    this.whoisPrivacy = const Optional.absent(),

    this.autoRenew = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'serviceInfo',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<DomainServiceInfo?> serviceInfo;



  @OptionalConverter()
  @JsonKey(
    
    name: r'serviceTypes',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<Map<String, DomainServiceType>?> serviceTypes;



  @OptionalConverter()
  @JsonKey(
    
    name: r'client_links',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<List<DomainClientLink>?> clientLinks;



  @OptionalConverter()
  @JsonKey(
    
    name: r'billingDetails',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<DomainBillingDetails?> billingDetails;



  @OptionalConverter()
  @JsonKey(
    
    name: r'custCurrency',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> custCurrency;



  @OptionalConverter()
  @JsonKey(
    
    name: r'custCurrencySymbol',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> custCurrencySymbol;



  @OptionalConverter()
  @JsonKey(
    
    name: r'serviceExtra',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<DomainBillingExtra?> serviceExtra;



  @OptionalConverter()
  @JsonKey(
    
    name: r'extraInfoTables',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<BackupExtraInfoTables?> extraInfoTables;



  @OptionalConverter()
  @JsonKey(
    
    name: r'serviceType',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<DomainServiceType?> serviceType;



  @OptionalConverter()
  @JsonKey(
    
    name: r'contact_details',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<DomainContactDetails?> contactDetails;



  @OptionalConverter()
  @JsonKey(
    
    name: r'pwarning',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> pwarning;



  @OptionalConverter()
  @JsonKey(
    
    name: r'transfer_info',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> transferInfo;



  @OptionalConverter()
  @JsonKey(
    
    name: r'errors',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<bool?> errors;



  @OptionalConverter()
  @JsonKey(
    
    name: r'domain_logs',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<List<String>?> domainLogs;



  @OptionalConverter()
  @JsonKey(
    
    name: r'allInfo',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<DomainAllInfo?> allInfo;



  @OptionalConverter()
  @JsonKey(
    
    name: r'registrarStatus',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> registrarStatus;



  @OptionalConverter()
  @JsonKey(
    
    name: r'locked',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> locked;



  @OptionalConverter()
  @JsonKey(
    
    name: r'whoisPrivacy',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> whoisPrivacy;



  @OptionalConverter()
  @JsonKey(
    
    name: r'autoRenew',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> autoRenew;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is Domain &&
      runtimeType == other.runtimeType &&
      equals(
        [
            serviceInfo,
            serviceTypes,
            clientLinks,
            billingDetails,
            custCurrency,
            custCurrencySymbol,
            serviceExtra,
            extraInfoTables,
            serviceType,
            contactDetails,
            pwarning,
            transferInfo,
            errors,
            domainLogs,
            allInfo,
            registrarStatus,
            locked,
            whoisPrivacy,
            autoRenew,
        ],
        [
            other.serviceInfo,
            other.serviceTypes,
            other.clientLinks,
            other.billingDetails,
            other.custCurrency,
            other.custCurrencySymbol,
            other.serviceExtra,
            other.extraInfoTables,
            other.serviceType,
            other.contactDetails,
            other.pwarning,
            other.transferInfo,
            other.errors,
            other.domainLogs,
            other.allInfo,
            other.registrarStatus,
            other.locked,
            other.whoisPrivacy,
            other.autoRenew,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        serviceInfo,
        serviceTypes,
        clientLinks,
        billingDetails,
        custCurrency,
        custCurrencySymbol,
        serviceExtra,
        extraInfoTables,
        serviceType,
        contactDetails,
        pwarning,
        transferInfo,
        errors,
        domainLogs,
        allInfo,
        registrarStatus,
        locked,
        whoisPrivacy,
        autoRenew,
    ],);

  factory Domain.fromJson(Map<String, dynamic> json) => _$DomainFromJson(json);

  Map<String, dynamic> toJson() => _$DomainToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

