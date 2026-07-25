//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'place_buy_now_server_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PlaceBuyNowServerRequest {
  /// Returns a new [PlaceBuyNowServerRequest] instance.
  PlaceBuyNowServerRequest({

    this.serverId = const Optional.absent(),

    this.serverHostname = const Optional.absent(),

    this.serverRootPassword = const Optional.absent(),
  });

      /// The ID of the buy-it-now server configuration to order. Use the server listing from `GET /servers/order/buy_now_server` to find valid IDs.
  @OptionalConverter()
  @JsonKey(
    
    name: r'server_id',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<num?> serverId;



      /// The fully-qualified hostname to assign to the server.
  @OptionalConverter()
  @JsonKey(
    
    name: r'server_hostname',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> serverHostname;



      /// The root or administrator password to set on the server.
  @OptionalConverter()
  @JsonKey(
    
    name: r'server_root_password',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> serverRootPassword;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is PlaceBuyNowServerRequest &&
      runtimeType == other.runtimeType &&
      equals(
        [
            serverId,
            serverHostname,
            serverRootPassword,
        ],
        [
            other.serverId,
            other.serverHostname,
            other.serverRootPassword,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        serverId,
        serverHostname,
        serverRootPassword,
    ],);

  factory PlaceBuyNowServerRequest.fromJson(Map<String, dynamic> json) => _$PlaceBuyNowServerRequestFromJson(json);

  Map<String, dynamic> toJson() => _$PlaceBuyNowServerRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

