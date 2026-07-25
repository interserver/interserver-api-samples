//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'mail_row.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class MailRow {
  /// Returns a new [MailRow] instance.
  MailRow({

    this.mailId = const Optional.absent(),

    this.repeatInvoicesCost = const Optional.absent(),

    this.mailUsername = const Optional.absent(),

    this.mailStatus = const Optional.absent(),

    this.servicesName = const Optional.absent(),
  });

      /// The id of the mail.
  @OptionalConverter()
  @JsonKey(
    
    name: r'mail_id',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> mailId;



      /// The repeat invoices cost of the mail.
  @OptionalConverter()
  @JsonKey(
    
    name: r'repeat_invoices_cost',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> repeatInvoicesCost;



      /// The username of the mail.
  @OptionalConverter()
  @JsonKey(
    
    name: r'mail_username',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> mailUsername;



      /// The status of the mail.
  @OptionalConverter()
  @JsonKey(
    
    name: r'mail_status',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> mailStatus;



      /// The services name of the mail.
  @OptionalConverter()
  @JsonKey(
    
    name: r'services_name',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> servicesName;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is MailRow &&
      runtimeType == other.runtimeType &&
      equals(
        [
            mailId,
            repeatInvoicesCost,
            mailUsername,
            mailStatus,
            servicesName,
        ],
        [
            other.mailId,
            other.repeatInvoicesCost,
            other.mailUsername,
            other.mailStatus,
            other.servicesName,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        mailId,
        repeatInvoicesCost,
        mailUsername,
        mailStatus,
        servicesName,
    ],);

  factory MailRow.fromJson(Map<String, dynamic> json) => _$MailRowFromJson(json);

  Map<String, dynamic> toJson() => _$MailRowToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

