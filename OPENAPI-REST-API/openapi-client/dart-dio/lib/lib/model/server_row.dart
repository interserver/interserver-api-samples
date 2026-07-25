//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'server_row.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ServerRow {
  /// Returns a new [ServerRow] instance.
  ServerRow({

    required  this.serverId,

    required  this.accountLid,

    required  this.serverHostname,

    required  this.serverStatus,
  });

      /// The id of the server.
  @JsonKey(
    
    name: r'server_id',
    required: true,
    includeIfNull: false,
  )


  final String serverId;



      /// The account lid of the server.
  @JsonKey(
    
    name: r'account_lid',
    required: true,
    includeIfNull: false,
  )


  final String accountLid;



      /// The hostname of the server.
  @JsonKey(
    
    name: r'server_hostname',
    required: true,
    includeIfNull: false,
  )


  final String serverHostname;



      /// The status of the server.
  @JsonKey(
    
    name: r'server_status',
    required: true,
    includeIfNull: false,
  )


  final String serverStatus;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is ServerRow &&
      runtimeType == other.runtimeType &&
      equals(
        [
            serverId,
            accountLid,
            serverHostname,
            serverStatus,
        ],
        [
            other.serverId,
            other.accountLid,
            other.serverHostname,
            other.serverStatus,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        serverId,
        accountLid,
        serverHostname,
        serverStatus,
    ],);

  factory ServerRow.fromJson(Map<String, dynamic> json) => _$ServerRowFromJson(json);

  Map<String, dynamic> toJson() => _$ServerRowToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

