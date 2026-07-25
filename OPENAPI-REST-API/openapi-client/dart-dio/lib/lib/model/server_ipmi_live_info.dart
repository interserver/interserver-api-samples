//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'server_ipmi_live_info.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ServerIpmiLiveInfo {
  /// Returns a new [ServerIpmiLiveInfo] instance.
  ServerIpmiLiveInfo({

    this.text = const Optional.absent(),

    this.publicIp = const Optional.absent(),

    this.allowedIp = const Optional.absent(),

    this.clientUsername = const Optional.absent(),

    this.clientPassword = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'text',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> text;



  @OptionalConverter()
  @JsonKey(
    
    name: r'public_ip',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> publicIp;



  @OptionalConverter()
  @JsonKey(
    
    name: r'allowed_ip',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> allowedIp;



  @OptionalConverter()
  @JsonKey(
    
    name: r'client_username',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> clientUsername;



  @OptionalConverter()
  @JsonKey(
    
    name: r'client_password',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> clientPassword;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is ServerIpmiLiveInfo &&
      runtimeType == other.runtimeType &&
      equals(
        [
            text,
            publicIp,
            allowedIp,
            clientUsername,
            clientPassword,
        ],
        [
            other.text,
            other.publicIp,
            other.allowedIp,
            other.clientUsername,
            other.clientPassword,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        text,
        publicIp,
        allowedIp,
        clientUsername,
        clientPassword,
    ],);

  factory ServerIpmiLiveInfo.fromJson(Map<String, dynamic> json) => _$ServerIpmiLiveInfoFromJson(json);

  Map<String, dynamic> toJson() => _$ServerIpmiLiveInfoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

