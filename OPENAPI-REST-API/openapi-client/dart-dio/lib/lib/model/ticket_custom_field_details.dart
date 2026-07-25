//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'ticket_custom_field_details.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class TicketCustomFieldDetails {
  /// Returns a new [TicketCustomFieldDetails] instance.
  TicketCustomFieldDetails({

    this.customerServerAccess = const Optional.absent(),

    this.ipAddress = const Optional.absent(),

    this.rootPassword = const Optional.absent(),

    this.sudoUser = const Optional.absent(),

    this.sudoPassword = const Optional.absent(),

    this.port = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'Customer Server Access',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  unknownEnumValue: Optional<TicketCustomFieldDetailsCustomerServerAccessEnum?>.unknownDefaultOpenApi,
  )


  final Optional<TicketCustomFieldDetailsCustomerServerAccessEnum?> customerServerAccess;



  @OptionalConverter()
  @JsonKey(
    
    name: r'Ip Address',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> ipAddress;



  @OptionalConverter()
  @JsonKey(
    
    name: r'Root Password',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> rootPassword;



  @OptionalConverter()
  @JsonKey(
    
    name: r'Sudo User',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> sudoUser;



  @OptionalConverter()
  @JsonKey(
    
    name: r'Sudo Password',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> sudoPassword;



  @OptionalConverter()
  @JsonKey(
    
    name: r'Port',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> port;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is TicketCustomFieldDetails &&
      runtimeType == other.runtimeType &&
      equals(
        [
            customerServerAccess,
            ipAddress,
            rootPassword,
            sudoUser,
            sudoPassword,
            port,
        ],
        [
            other.customerServerAccess,
            other.ipAddress,
            other.rootPassword,
            other.sudoUser,
            other.sudoPassword,
            other.port,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        customerServerAccess,
        ipAddress,
        rootPassword,
        sudoUser,
        sudoPassword,
        port,
    ],);

  factory TicketCustomFieldDetails.fromJson(Map<String, dynamic> json) => _$TicketCustomFieldDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$TicketCustomFieldDetailsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}


enum TicketCustomFieldDetailsCustomerServerAccessEnum {
@JsonValue(r'y')
y(r'y'),
@JsonValue(r'n')
n(r'n'),
@JsonValue(r'unknown_default_open_api')
unknownDefaultOpenApi(r'unknown_default_open_api');

const TicketCustomFieldDetailsCustomerServerAccessEnum(this.value);

final String value;

@override
String toString() => value;
}


