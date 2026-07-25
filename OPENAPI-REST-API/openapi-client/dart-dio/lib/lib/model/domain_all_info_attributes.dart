//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/domain_name_server.dart';
import 'package:interserver_api/lib/model/domain_all_info_attributes_contact_set.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'domain_all_info_attributes.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class DomainAllInfoAttributes {
  /// Returns a new [DomainAllInfoAttributes] instance.
  DomainAllInfoAttributes({

    this.contactSet = const Optional.absent(),

    this.registryCreatedate = const Optional.absent(),

    this.registryExpiredate = const Optional.absent(),

    this.tldData = const Optional.absent(),

    this.letExpire = const Optional.absent(),

    this.autoRenew = const Optional.absent(),

    this.sponsoringRsp = const Optional.absent(),

    this.gdprConsentStatus = const Optional.absent(),

    this.nameserverList = const Optional.absent(),

    this.registryUpdatedate = const Optional.absent(),

    this.affiliateId = const Optional.absent(),

    this.expiredate = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'contact_set',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<DomainAllInfoAttributesContactSet?> contactSet;



  @OptionalConverter()
  @JsonKey(
    
    name: r'registry_createdate',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> registryCreatedate;



  @OptionalConverter()
  @JsonKey(
    
    name: r'registry_expiredate',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> registryExpiredate;



  @OptionalConverter()
  @JsonKey(
    
    name: r'tld_data',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> tldData;



  @OptionalConverter()
  @JsonKey(
    
    name: r'let_expire',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> letExpire;



  @OptionalConverter()
  @JsonKey(
    
    name: r'auto_renew',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> autoRenew;



  @OptionalConverter()
  @JsonKey(
    
    name: r'sponsoring_rsp',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> sponsoringRsp;



  @OptionalConverter()
  @JsonKey(
    
    name: r'gdpr_consent_status',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> gdprConsentStatus;



  @OptionalConverter()
  @JsonKey(
    
    name: r'nameserver_list',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<List<DomainNameServer>?> nameserverList;



  @OptionalConverter()
  @JsonKey(
    
    name: r'registry_updatedate',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> registryUpdatedate;



  @OptionalConverter()
  @JsonKey(
    
    name: r'affiliate_id',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> affiliateId;



  @OptionalConverter()
  @JsonKey(
    
    name: r'expiredate',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> expiredate;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is DomainAllInfoAttributes &&
      runtimeType == other.runtimeType &&
      equals(
        [
            contactSet,
            registryCreatedate,
            registryExpiredate,
            tldData,
            letExpire,
            autoRenew,
            sponsoringRsp,
            gdprConsentStatus,
            nameserverList,
            registryUpdatedate,
            affiliateId,
            expiredate,
        ],
        [
            other.contactSet,
            other.registryCreatedate,
            other.registryExpiredate,
            other.tldData,
            other.letExpire,
            other.autoRenew,
            other.sponsoringRsp,
            other.gdprConsentStatus,
            other.nameserverList,
            other.registryUpdatedate,
            other.affiliateId,
            other.expiredate,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        contactSet,
        registryCreatedate,
        registryExpiredate,
        tldData,
        letExpire,
        autoRenew,
        sponsoringRsp,
        gdprConsentStatus,
        nameserverList,
        registryUpdatedate,
        affiliateId,
        expiredate,
    ],);

  factory DomainAllInfoAttributes.fromJson(Map<String, dynamic> json) => _$DomainAllInfoAttributesFromJson(json);

  Map<String, dynamic> toJson() => _$DomainAllInfoAttributesToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

