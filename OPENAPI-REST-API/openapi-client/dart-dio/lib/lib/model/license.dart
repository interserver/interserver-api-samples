//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/license_billing_details.dart';
import 'package:interserver_api/lib/model/license_client_link.dart';
import 'package:interserver_api/lib/model/license_service_info.dart';
import 'package:interserver_api/lib/model/license_service_type.dart';
import 'package:interserver_api/lib/model/license_extra_info_tables.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'license.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class License {
  /// Returns a new [License] instance.
  License({

    required  this.serviceInfo,

    required  this.clientLinks,

    required  this.billingDetails,

    required  this.custCurrency,

    required  this.custCurrencySymbol,

    required  this.package,

    required  this.serviceExtra,

    required  this.extraInfoTables,

    required  this.serviceOverviewExtra,

    required  this.serviceType,

    required  this.licenseKey,
  });

  @JsonKey(
    
    name: r'serviceInfo',
    required: true,
    includeIfNull: false,
  )


  final LicenseServiceInfo serviceInfo;



  @JsonKey(
    
    name: r'client_links',
    required: true,
    includeIfNull: false,
  )


  final List<LicenseClientLink> clientLinks;



  @JsonKey(
    
    name: r'billingDetails',
    required: true,
    includeIfNull: false,
  )


  final LicenseBillingDetails billingDetails;



      /// Customer's currency
  @JsonKey(
    
    name: r'custCurrency',
    required: true,
    includeIfNull: false,
  )


  final String custCurrency;



      /// Currency symbol for customer
  @JsonKey(
    
    name: r'custCurrencySymbol',
    required: true,
    includeIfNull: false,
  )


  final String custCurrencySymbol;



      /// Package name
  @JsonKey(
    
    name: r'package',
    required: true,
    includeIfNull: false,
  )


  final String package;



      /// Extra service information
  @JsonKey(
    
    name: r'serviceExtra',
    required: true,
    includeIfNull: false,
  )


  final List<String> serviceExtra;



  @JsonKey(
    
    name: r'extraInfoTables',
    required: true,
    includeIfNull: false,
  )


  final LicenseExtraInfoTables extraInfoTables;



      /// Extra service overview information
  @JsonKey(
    
    name: r'service_overview_extra',
    required: true,
    includeIfNull: false,
  )


  final String serviceOverviewExtra;



  @JsonKey(
    
    name: r'serviceType',
    required: true,
    includeIfNull: false,
  )


  final LicenseServiceType serviceType;



      /// License key
  @JsonKey(
    
    name: r'license_key',
    required: true,
    includeIfNull: false,
  )


  final String licenseKey;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is License &&
      runtimeType == other.runtimeType &&
      equals(
        [
            serviceInfo,
            clientLinks,
            billingDetails,
            custCurrency,
            custCurrencySymbol,
            package,
            serviceExtra,
            extraInfoTables,
            serviceOverviewExtra,
            serviceType,
            licenseKey,
        ],
        [
            other.serviceInfo,
            other.clientLinks,
            other.billingDetails,
            other.custCurrency,
            other.custCurrencySymbol,
            other.package,
            other.serviceExtra,
            other.extraInfoTables,
            other.serviceOverviewExtra,
            other.serviceType,
            other.licenseKey,
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
        serviceExtra,
        extraInfoTables,
        serviceOverviewExtra,
        serviceType,
        licenseKey,
    ],);

  factory License.fromJson(Map<String, dynamic> json) => _$LicenseFromJson(json);

  Map<String, dynamic> toJson() => _$LicenseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

