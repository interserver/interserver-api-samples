//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/mail_billing_details.dart';
import 'package:interserver_api/lib/model/mail_schema_extra_info_tables.dart';
import 'package:interserver_api/lib/model/mail_service_type.dart';
import 'package:interserver_api/lib/model/mail_service_info.dart';
import 'package:interserver_api/lib/model/mail_client_link.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'mail_schema.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class MailSchema {
  /// Returns a new [MailSchema] instance.
  MailSchema({

    required  this.serviceInfo,

    required  this.clientLinks,

    required  this.billingDetails,

    required  this.custCurrency,

    required  this.custCurrencySymbol,

    required  this.package,

    required  this.extraInfoTables,

    required  this.serviceType,

    required  this.usageCount,

    this.serviceExtra = const Optional.absent(),
  });

  @JsonKey(
    
    name: r'serviceInfo',
    required: true,
    includeIfNull: false,
  )


  final MailServiceInfo serviceInfo;



      /// Links related to the mail service for clients.
  @JsonKey(
    
    name: r'client_links',
    required: true,
    includeIfNull: false,
  )


  final List<MailClientLink> clientLinks;



  @JsonKey(
    
    name: r'billingDetails',
    required: true,
    includeIfNull: false,
  )


  final MailBillingDetails billingDetails;



      /// The customer's currency.
  @JsonKey(
    
    name: r'custCurrency',
    required: true,
    includeIfNull: false,
  )


  final String custCurrency;



      /// The currency symbol for the customer.
  @JsonKey(
    
    name: r'custCurrencySymbol',
    required: true,
    includeIfNull: false,
  )


  final String custCurrencySymbol;



      /// The package of the mail service.
  @JsonKey(
    
    name: r'package',
    required: true,
    includeIfNull: false,
  )


  final String package;



  @JsonKey(
    
    name: r'extraInfoTables',
    required: true,
    includeIfNull: false,
  )


  final MailSchemaExtraInfoTables extraInfoTables;



  @JsonKey(
    
    name: r'serviceType',
    required: true,
    includeIfNull: false,
  )


  final MailServiceType serviceType;



      /// The usage count of the mail service.
  @JsonKey(
    
    name: r'usage_count',
    required: true,
    includeIfNull: false,
  )


  final String usageCount;



      /// Extra information for the mail service.
  @OptionalConverter()
  @JsonKey(
    
    name: r'serviceExtra',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<List<String>?> serviceExtra;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is MailSchema &&
      runtimeType == other.runtimeType &&
      equals(
        [
            serviceInfo,
            clientLinks,
            billingDetails,
            custCurrency,
            custCurrencySymbol,
            package,
            extraInfoTables,
            serviceType,
            usageCount,
            serviceExtra,
        ],
        [
            other.serviceInfo,
            other.clientLinks,
            other.billingDetails,
            other.custCurrency,
            other.custCurrencySymbol,
            other.package,
            other.extraInfoTables,
            other.serviceType,
            other.usageCount,
            other.serviceExtra,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        serviceInfo,
        clientLinks,
        billingDetails,
        custCurrency,
        custCurrencySymbol,
        package,
        extraInfoTables,
        serviceType,
        usageCount,
        serviceExtra,
    ],);

  factory MailSchema.fromJson(Map<String, dynamic> json) => _$MailSchemaFromJson(json);

  Map<String, dynamic> toJson() => _$MailSchemaToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

