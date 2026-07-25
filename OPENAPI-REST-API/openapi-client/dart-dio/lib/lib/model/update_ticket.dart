//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'update_ticket.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UpdateTicket {
  /// Returns a new [UpdateTicket] instance.
  UpdateTicket({

    this.ip = const Optional.absent(),

    this.ipAddress = const Optional.absent(),

    this.customerServerAccess = const Optional.absent(),

    this.rootPassword = const Optional.absent(),

    this.sudoUsername = const Optional.absent(),

    this.sudoPassword = const Optional.absent(),

    this.port = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'ip',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> ip;



  @OptionalConverter()
  @JsonKey(
    
    name: r'ip_address',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> ipAddress;



  @OptionalConverter()
  @JsonKey(
    
    name: r'customer_server_access',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  unknownEnumValue: Optional<UpdateTicketCustomerServerAccessEnum?>.unknownDefaultOpenApi,
  )


  final Optional<UpdateTicketCustomerServerAccessEnum?> customerServerAccess;



  @OptionalConverter()
  @JsonKey(
    
    name: r'root_password',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> rootPassword;



  @OptionalConverter()
  @JsonKey(
    
    name: r'sudo_username',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> sudoUsername;



  @OptionalConverter()
  @JsonKey(
    
    name: r'sudo_password',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> sudoPassword;



  @OptionalConverter()
  @JsonKey(
    
    name: r'port',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> port;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is UpdateTicket &&
      runtimeType == other.runtimeType &&
      equals(
        [
            ip,
            ipAddress,
            customerServerAccess,
            rootPassword,
            sudoUsername,
            sudoPassword,
            port,
        ],
        [
            other.ip,
            other.ipAddress,
            other.customerServerAccess,
            other.rootPassword,
            other.sudoUsername,
            other.sudoPassword,
            other.port,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        ip,
        ipAddress,
        customerServerAccess,
        rootPassword,
        sudoUsername,
        sudoPassword,
        port,
    ],);

  factory UpdateTicket.fromJson(Map<String, dynamic> json) => _$UpdateTicketFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateTicketToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}


enum UpdateTicketCustomerServerAccessEnum {
@JsonValue(r'y')
y(r'y'),
@JsonValue(r'n')
n(r'n'),
@JsonValue(r'unknown_default_open_api')
unknownDefaultOpenApi(r'unknown_default_open_api');

const UpdateTicketCustomerServerAccessEnum(this.value);

final String value;

@override
String toString() => value;
}


