//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:time_machine/time_machine.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'license_row.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class LicenseRow {
  /// Returns a new [LicenseRow] instance.
  LicenseRow({

    this.licenseId = const Optional.absent(),

    this.licenseHostname = const Optional.absent(),

    this.licenseIp = const Optional.absent(),

    this.servicesName = const Optional.absent(),

    this.cost = const Optional.absent(),

    this.licenseStatus = const Optional.absent(),

    this.invoicesPaid = const Optional.absent(),

    this.invoicesDate = const Optional.absent(),
  });

      /// The id of the license.
  @OptionalConverter()
  @JsonKey(
    
    name: r'license_id',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> licenseId;



      /// The hostname of the license.
  @OptionalConverter()
  @JsonKey(
    
    name: r'license_hostname',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> licenseHostname;



      /// The ip of the license.
  @OptionalConverter()
  @JsonKey(
    
    name: r'license_ip',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> licenseIp;



      /// The services name of the license.
  @OptionalConverter()
  @JsonKey(
    
    name: r'services_name',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> servicesName;



      /// The cost of the license.
  @OptionalConverter()
  @JsonKey(
    
    name: r'cost',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> cost;



      /// The status of the license.
  @OptionalConverter()
  @JsonKey(
    
    name: r'license_status',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> licenseStatus;



      /// The invoices paid of the license.
  @OptionalConverter()
  @JsonKey(
    
    name: r'invoices_paid',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> invoicesPaid;



      /// The invoices date of the license.
  @OptionalConverter()
  @JsonKey(
    
    name: r'invoices_date',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<OffsetDateTime?> invoicesDate;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is LicenseRow &&
      runtimeType == other.runtimeType &&
      equals(
        [
            licenseId,
            licenseHostname,
            licenseIp,
            servicesName,
            cost,
            licenseStatus,
            invoicesPaid,
            invoicesDate,
        ],
        [
            other.licenseId,
            other.licenseHostname,
            other.licenseIp,
            other.servicesName,
            other.cost,
            other.licenseStatus,
            other.invoicesPaid,
            other.invoicesDate,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        licenseId,
        licenseHostname,
        licenseIp,
        servicesName,
        cost,
        licenseStatus,
        invoicesPaid,
        invoicesDate,
    ],);

  factory LicenseRow.fromJson(Map<String, dynamic> json) => _$LicenseRowFromJson(json);

  Map<String, dynamic> toJson() => _$LicenseRowToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

